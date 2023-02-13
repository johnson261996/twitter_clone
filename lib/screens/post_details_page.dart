
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class PostDetailsPage extends StatefulWidget {
   String url;
   PostDetailsPage({Key? key,required this.url}) : super(key: key);

  @override
  State<PostDetailsPage> createState() => _PostDetailsPageState();
}

class _PostDetailsPageState extends State<PostDetailsPage> {
  late  InAppWebViewController _webViewController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.white,
          foregroundColor: Colors.black,

    ),
    body:InAppWebView(
        initialUrlRequest: URLRequest(
            url: Uri.parse(widget.url)),
        initialOptions: InAppWebViewGroupOptions(
            crossPlatform: InAppWebViewOptions(
            )
        ),
        onWebViewCreated: (InAppWebViewController controller) {
          _webViewController = controller;
        },
        onLoadStart: ( controller,  url) {

        },
        onLoadStop: ( controller,  url) {

        },
      ));
    }
}
