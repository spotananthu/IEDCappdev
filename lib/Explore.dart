import 'dart:async';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Explorepage extends StatefulWidget {
  @override
  ExplorepageState createState() => ExplorepageState();
}

class ExplorepageState extends State<Explorepage> {
  late WebViewController _controller;

  final Completer<WebViewController> _controllerCompleter =
      Completer<WebViewController>();

  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }
  navigateToHome() async {
      Navigator.pushReplacementNamed(context, "HomePage");
    }
navigateToVenue() async {
    Navigator.pushReplacementNamed(context, "Stage");
  }
navigateToEvent() async {
    Navigator.pushReplacementNamed(context, "EventPage");
  }
  late bool isLoading=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
      onWillPop: () => _goBack(context),
      child: 
      Stack(children: [
        SizedBox(height: 40,),
      WebView(
        initialUrl: 'https://bucolic-froyo-e44a9a.netlify.app/map.html',
        javascriptMode: JavascriptMode.unrestricted,
        onPageFinished: (finish) {
              setState(() {
                isLoading = false;
              });
            },
        onWebViewCreated: (WebViewController webViewController) {
          _controllerCompleter.future.then((value) => _controller = value);
          _controllerCompleter.complete(webViewController);
        },
      ),
      
       isLoading ? Center( child: LoadingAnimationWidget.flickr(

          leftDotColor: Color.fromARGB(255, 246, 246, 246),
          rightDotColor: Color.fromARGB(255, 55, 154, 234),
          
          size: 100,
        ),)
                    : Stack(),
      ],)
       
    ),
    bottomNavigationBar: BottomAppBar(
      color: Color.fromARGB(255, 9, 126, 216),
      child: Row(
      mainAxisSize: MainAxisSize.max,

      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
              constraints: const BoxConstraints(),
              icon: const Icon(CupertinoIcons.home,color: Color.fromARGB(255, 242, 248, 253)), onPressed: () {navigateToHome();}),
            Container(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: const Text('Home', style: TextStyle(color: Color.fromARGB(255, 242, 248, 253),fontSize: 11),),
            ),
          ],
        ),
        // SizedBox(width: 50,),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
              constraints: BoxConstraints(),
              icon: const Icon(CupertinoIcons.building_2_fill,color: Color.fromARGB(255, 242, 248, 253)), onPressed: () {navigateToVenue();},),
            Container(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: const Text('Venues', style: TextStyle(color: Color.fromARGB(255, 242, 248, 253),fontSize: 11),),
            ),
          ],
        ),
        // SizedBox(width: 50,),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
              constraints: BoxConstraints(),
              icon: const Icon(CupertinoIcons.circle_grid_hex,color: Color.fromARGB(255, 242, 248, 253)), onPressed: () {navigateToEvent();},),
            Container(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: const Text('Events', style: TextStyle(color: Color.fromARGB(255, 242, 248, 253),fontSize: 11),),
            ),
            
            
          ],
        ),
         Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
              constraints: BoxConstraints(),
              icon: const Icon(CupertinoIcons.compass,color: Color.fromARGB(255, 242, 248, 253)), onPressed: () {},),
            Container(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: const Text('Explore', style: TextStyle(color: Color.fromARGB(255, 242, 248, 253),fontSize: 11),),
            ),
            
            
          ],
        ),
      ],
      )
    ),
    ); 
  }

  Future<bool> _goBack(BuildContext context) async {
    if (await _controller.canGoBack()) {
      _controller.goBack();
      return Future.value(false);
    } else {
      navigateToHome();
      // showDialog(
      //     context: context,
      //     builder: (context) => navigateToHome()
          //  AlertDialog(
          //       title: Text('Do you want to exit'),
          //       actions: <Widget>[
          //         FlatButton(
          //           onPressed: () {
          //             Navigator.of(context).pop();
          //           },
          //           child: Text('No'),
          //         ),
          //         FlatButton(
          //           onPressed: () {
          //             SystemNavigator.pop();
          //           },
          //           child: Text('Yes'),
          //         ),
          //       ],
          //     ));
      return Future.value(true);
    }
  }
}