import 'dart:developer';

import 'package:timeago/timeago.dart' as timeago;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:twitter_clone/models/data_model.dart';
import 'package:twitter_clone/screens/post_details_page.dart';

class PostCard extends StatefulWidget {
  final List<DataModel> item;
  final int i ;
  const PostCard({Key? key,required this.item,required this.i}) : super(key: key);

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {


  @override
  Widget build(BuildContext context) {
    log("url:"+widget.item[widget.i].link);
    final DatetimeAgo =widget.item[widget.i].date.subtract(Duration(days: 1,hours: 1));
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        InkWell(
          onTap: ()=>  Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => PostDetailsPage(url: widget.item[widget.i].link,))),
          child: Container(
            height: 250,
            width: double.infinity,
            child: Card(
              margin: EdgeInsets.zero,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 15,
                      child: ClipOval(

                        child:
                        Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTa0mY04NeynM9jLwuxyuvaqyjfwHeBJkPsEwxUO-junn3ptTn8MyFPeTVpa5sppoAu758&usqp=CAU",
                          width: 30,height: 30,fit: BoxFit.cover,
                         ),
                      ),
                    ),

                    SizedBox(width: 5,),
                    Expanded(
                      flex: 80,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 5,),
                          Text(widget.item[widget.i].parselyMeta.parselyAuthor.join(","),style: TextStyle(fontWeight: FontWeight.bold,)),
                          SizedBox(height: 5,),
                          Text(widget.item[widget.i].title.rendered,),
                          SizedBox(height: 20,),
                          Expanded(
                            flex: 10,
                            child: Image.network(
                              widget.item[widget.i].parselyMeta.parselyImageUrl,
                            ),
                          ),
                         // SizedBox(height: 20,),
                          SizedBox(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                  iconSize: 15.0,
                                  icon: const Icon(Icons.comment, color: Colors.grey),
                                  tooltip: 'comment', onPressed: () {  },
                                ),
                                Text(widget.item[widget.i].primaryCategory.count.toString(),
                                    style: TextStyle(color: Colors.grey,fontSize: 13.0,)
                                ),

                                IconButton(
                                  iconSize: 15.0,
                                  icon: const Icon(Icons.recycling, color: Colors.grey),
                                  tooltip: 'Retweet', onPressed: () {  },
                                ),
                                Text(widget.item[widget.i].author.toString(),
                                    style: TextStyle(color: Colors.grey,fontSize: 13.0)
                                ),
                                IconButton(
                                  iconSize: 15.0,
                                  icon: const Icon(Icons.heart_broken, color: Colors.grey),
                                  tooltip: 'like', onPressed: () {  },
                                ),
                                Text(widget.item[widget.i].featuredMedia.toString(),
                                    style: TextStyle(color: Colors.grey,fontSize: 13.0)
                                ),
                                Expanded(
                                  child: IconButton(
                                    iconSize: 15.0,
                                    icon: const Icon(Icons.file_upload_outlined, color: Colors.grey),
                                    tooltip: 'share', onPressed: () {  },
                                  ),
                                ),

                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                    Expanded(flex: 10, child: Text(timeago.format(DatetimeAgo),style: TextStyle(fontSize: 10.0,color: Colors.grey,),)),
                  ],
                ),
              ),
            ),
          ),
        ),
        Divider(height: 1, color: Colors.black),
      ],
    );
  }
}
