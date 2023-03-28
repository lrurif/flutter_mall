import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class CategoryView extends StatefulWidget {
  const CategoryView({Key? key}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<CategoryView> {
  late WebViewController _webViewController;
  String _title = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: Text(_title),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              _webViewController.goBack();
            },
          ),
        ),
        body: Container(
          child: WebView(
            initialUrl: 'https://lrurif.com',
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (WebViewController context) {
              _webViewController = context;
            },
              gestureNavigationEnabled: true
          ),
        ));
    ;
  }
}
