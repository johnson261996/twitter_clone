
import 'dart:convert';
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:twitter_clone/models/data_model.dart';

import '../constants/api_list.dart';
import '../widgets/post_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<DataModel> _data=[];
  int _page = 20;
  late ScrollController _controller;
  final int _limit = 20;
  List _posts = [];
  bool _isFirstLoadRunning = false;
  bool _hasNextPage = true;

  bool _isLoadMoreRunning = false;

  @override
  void initState() {
    super.initState();
    getapidata();
    _controller = ScrollController()..addListener(_loadMore);

  }
  void _loadMore() async {
    if (_hasNextPage == true &&
        _isFirstLoadRunning == false &&
        _isLoadMoreRunning == false &&
        _controller.position.extentAfter < 300
    ) {
      setState(() {
        _isLoadMoreRunning = true; // Display a progress indicator at the bottom
      });

      _page += 1; // Increase _page by 1

      try {
        final res =
        await http.get(Uri.parse("${{APIS.usersList}}$_page"));
        log("Response:" + res.body);
        final List fetchedPosts = json.decode(res.body);
        if (fetchedPosts.isNotEmpty) {
          setState(() {
            _posts.addAll(fetchedPosts);
          });
        } else {

          setState(() {
            _hasNextPage = false;
          });
        }
      } catch (err) {
        if (kDebugMode) {
          print('Something went wrong!');
        }
      }


      setState(() {
        _isLoadMoreRunning = false;
      });
    }
  }


  void getapidata() async {
    setState(() {
      _isFirstLoadRunning = true;
    });
    final List<DataModel> result = [];
    // for (int i = 1; i <= 10; i++) {
    //   result.addAll((_data =(await getData(i.toString()))!));
    // }
    _data = (await getData("100"))!;
    setState(() {
      log("Data length:${_data.length}");
    });
    setState(() {
      _isFirstLoadRunning = false;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: new IconButton(
          icon: new Icon(Icons.person),
          onPressed: () {},
        ),
        title:  Row(
            mainAxisSize: MainAxisSize.min,
            children: [
        IconButton(
        icon:Image.asset('assets/twitter.png'),
        onPressed: null,),
      ],
    )
      ),
      body: _isFirstLoadRunning?const Center(
        child: CircularProgressIndicator(),
      ): SingleChildScrollView(
        child: Column(
          children: [
            Container(

              child: ListView.builder(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
              itemCount: _data == null ? 0 : _data.length,
               itemBuilder: (context, index) {
                 if (index < _data.length) {
                   // Show your info
                   return PostCard(item: _data, i: index);
                 } else {
                   return Center(child: CircularProgressIndicator());
                 }
    }
    ),
            ),
        if (_isLoadMoreRunning == true)
    const Padding(
      padding: EdgeInsets.only(top: 10, bottom: 40),
      child: Center(
        child: CircularProgressIndicator(),
      ),
    ),

    if (_hasNextPage == false)
    Container(
    padding: const EdgeInsets.only(top: 30, bottom: 40),
    color: Colors.amber,
    child: const Center(
    child: Text('You have fetched all of the content'),
    ),),
          ],
        ),
      ),
    );
  }

  Future<List<DataModel>?> getData(String page) async{
    var response =
        await http.get(Uri.parse("${APIS.usersList}$page"), headers: {"Accept": "application/json"});


      try{
        if(response.statusCode == 200){
          print("response:" + response.body);
          List<DataModel> model = dataModelFromJson(response.body);
          print("response:" + response.body);
          return model;
        } else {
          throw Exception('Unable to fetch data from the REST API');
        }
      }catch(e)
      {
        log("apiservice error:"+e.toString());
      }


  }
}
