import 'dart:async';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:iedc_summit/Venue.dart';
import 'package:maps_launcher/maps_launcher.dart';

import 'package:webview_flutter/webview_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  late WebViewController _controller;

  final Completer<WebViewController> _controllerCompleter =
      Completer<WebViewController>();

  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }
navigateToVenue() async {
    Navigator.pushReplacementNamed(context, "Stage");
  }
navigateToEvent() async {
    Navigator.pushReplacementNamed(context, "EventPage");
  }
  navigateToExplore() async {
    Navigator.pushReplacementNamed(context, "Explore");
  }
  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/bg1.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
      backgroundColor: Color.fromRGBO(242, 248, 253, 1).withOpacity(.7),

        body:SingleChildScrollView(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 50,),
            Container(
              padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
              child: Center(
                child: Image.asset('images/icon.png',height: 200,scale: 2,)),
            ),
            Container(
              //color: Color.fromARGB(255, 62, 70, 133),
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
              margin: const EdgeInsets.fromLTRB(0, 0, 100, 0),
              decoration: BoxDecoration(
            
            color: Color.fromARGB(255, 9, 126, 216),
            //border: Border.all(color: Colors.white,width: 3),
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(30) )
          ),
              child: 
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text('UNRAVELING', style: TextStyle(fontFamily: 'Squares',color: Color.fromARGB(255, 242, 248, 253),fontSize: 15),),
                  SizedBox(width: 10,),
                  Text('Dimensions', style: TextStyle(fontFamily: 'Squares',color: Color.fromARGB(255, 242, 248, 253),fontSize: 18),),
                ],
              )
              
            ),
            Container(
              //color: Color.fromARGB(255, 62, 70, 133),
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
              margin: const EdgeInsets.fromLTRB(100, 10, 0, 0),
              decoration: ShapeDecoration(
                color: Colors.white.withOpacity(.5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    //topRight: Radius.circular(20.0),
                    //bottomRight: Radius.circular(20.0),
                  ),
                  side: BorderSide(width: 2.0, color: Color.fromARGB(255, 9, 126, 216),),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text('UNITING', style: TextStyle(fontFamily: 'Squares',color: Color.fromARGB(255, 9, 126, 216),fontSize: 15),),
                  SizedBox(width: 10,),
                  Text('PERSPECTIVES', style: TextStyle(fontFamily: 'Squares',color: Color.fromARGB(255, 9, 126, 216),fontSize: 18),),
                ],
              )
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    //margin: const EdgeInsets.fromLTRB(100, 10, 0, 0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Color.fromARGB(255, 9, 126, 216),width: 3),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: 
                    //Image.asset('images/calender.png',height: 100,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                         // Icon(CupertinoIcons.calendar,size: 30,color: Color.fromARGB(255, 9, 126, 216)),
                        Text('4', style: TextStyle(fontFamily: 'Squares',color: Color.fromARGB(255, 9, 126, 216),fontSize: 41),),
                        Text('MARCH', style: TextStyle(fontFamily: 'Squares',color: Color.fromARGB(255, 9, 126, 216),fontSize: 25),),
                      ],
                    )

                  ),
                  // Container(
                  //   alignment: Alignment.topLeft,
                  //   padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  //   //margin: const EdgeInsets.fromLTRB(100, 10, 0, 0),
                  //   constraints: const BoxConstraints(
                  //     maxHeight: 100,
                  //     maxWidth: 150,
                  //   ),
                  //   decoration: BoxDecoration(
                      
                  //     border: Border.all(color: Color.fromARGB(255, 9, 126, 216),width: 3),
                  //     borderRadius: BorderRadius.circular(20)
                  //   ),
                  //   child: Expanded(child:  Column(
                  //     children: [
                  //       Text('At', style: TextStyle(fontFamily: 'Squares',color: Color.fromARGB(255, 9, 126, 216),fontSize: 10),),
                  //       SizedBox(height: 0,),
                  //       //  Expanded(child: )
                  //       Flexible(child:  Text('Rajagiri School of Engineering and Technology', style: TextStyle(fontFamily: 'Squares',color: Color.fromARGB(255, 9, 126, 216),fontSize: 10),),
                  //     )
                  //      ],
                  //   ),)
                   

                  // ),
                  // RaisedButton(
                  //   onPressed: () async {
                  //     const url = 'https://www.google.com/maps/search/?api=1&query=9.995260, 76.353290';
                  //     if (await canLaunch(url)) {
                  //       await launch(url);
                  //     } else {
                  //       throw 'Could not launch $url';
                  //     }
                  //   },
                  //   child: Image.asset('images/map.png',height: 100,),
                  // ),
                  OutlinedButton(
                    onPressed: () =>
                      MapsLauncher.launchCoordinates(
                     9.993468977778589, 76.35808687383303, 'IEDC SUMMIT 2023'),
                    
                    child: Ink.image(
                      image: AssetImage('images/map.png'),
                      fit: BoxFit.contain,
                      child: Container(
                        alignment: Alignment.center,
                        height: 100,
                        width: 100,
                        
                      ),
                    ),
                    
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                      width: 3,
                      color: Color.fromARGB(255, 9, 126, 216),
                    ),
                  ),

                  )

                  
                //  ElevatedButton(
                // onPressed: () => MapsLauncher.launchCoordinates(
                //     9.993468977778589, 76.35808687383303, 'IEDC SUMMIT 2023'),
                //     style: ElevatedButton.styleFrom(primary: Color.fromRGBO(242, 248, 253, 1).withOpacity(1),),
                //     child:  Container(
                //     alignment: Alignment.topLeft,
                //     padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                //     margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                //     decoration: BoxDecoration(
                //       color: Colors.transparent,
                //       border: Border.all(color: Color.fromARGB(255, 9, 126, 216),width: 3),
                //       borderRadius: BorderRadius.circular(20)
                //     ),
                //     child: 
                //     Image.asset('images/map.png',height: 100,scale: 4.5,),
                //     ),
                //  )
                  //   Container(
                  //     decoration: BoxDecoration(
                  //       image: DecorationImage(
                  //         image: AssetImage('images/map.png'),
                  //         fit: BoxFit.fill
                  //     ),
                  //   )
                    
                  // )
                  
                // Container(
                //   height: 150,
                //   child: WebView(
                // initialUrl: 'https://microp--zenith.web.app/',
                // javascriptMode: JavascriptMode.unrestricted,
                // onWebViewCreated: (WebViewController webViewController) {
                //   _controllerCompleter.future.then((value) => _controller = value);
                //   _controllerCompleter.complete(webViewController);
                // },
                //   ),
                // )
                
                  // Icon(CupertinoIcons.calendar,size: 30,color: Color.fromARGB(255, 9, 126, 216)),
                  // Text(' MARCH 4', style: TextStyle(fontFamily: 'Squares',color: Color.fromARGB(255, 9, 126, 216),fontSize: 18),),
              ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
            
                color: Color.fromARGB(255, 227, 239, 247).withOpacity(1),
                boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 15.0, // soften the shadow
                  spreadRadius: 2.0, //extend the shadow
                  offset: Offset(
                    5.0, // Move to right 5  horizontally
                    5.0, // Move to bottom 5 Vertically
                  ),
                )
              ],
                //border: Border.all(color: Colors.white,width: 3),
                borderRadius: BorderRadius.circular(20)
              ),
              child:
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  //Text('Hosted By', style: TextStyle(fontFamily: 'Squares',color: Color.fromARGB(255, 62, 70, 133),fontSize: 21),),
                  Row(
              mainAxisAlignment:MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: [
                Image.asset('images/ksum_black.png',height: 90),
                Image.asset('images/RSET.png',height: 60),
                
              ],
            ),
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: [
                Image.asset('images/IEDC_Grey.png',height: 30),
                Image.asset('images/RSET_IEDC.png',height: 100),
                
              ],
            ),
            
                ],
              )
              
            ),
            
          ],
        ),),
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
              icon: const Icon(CupertinoIcons.home,color: Color.fromARGB(255, 242, 248, 253)), onPressed: () {},),
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
              icon: const Icon(CupertinoIcons.compass,color: Color.fromARGB(255, 242, 248, 253)), onPressed: () {navigateToExplore();},),
            Container(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: const Text('Explore', style: TextStyle(color: Color.fromARGB(255, 242, 248, 253),fontSize: 11),),
            ),
            
            
          ],
        ),
      ],
      )
    ),
    ),
    );
    
  }
}