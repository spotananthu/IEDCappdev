import 'dart:async';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:iedc_summit/Venue.dart';
import 'package:maps_launcher/maps_launcher.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:webview_flutter/webview_flutter.dart';

class StagePage extends StatefulWidget {
  @override
  StagePageState createState() => StagePageState();
}

class StagePageState extends State<StagePage> {
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
    Navigator.pushReplacementNamed(context, "VenuePage");
  }
navigateToEvent() async {
    Navigator.pushReplacementNamed(context, "EventPage");
  }
navigateToHome() async {
    Navigator.pushReplacementNamed(context, "HomePage");
  }
   navigateToExplore() async {
    Navigator.pushReplacementNamed(context, "Explore");
  }
  bool _isLoading = false;

  _launchURL(uri) async {
    setState(() {
      _isLoading = true;
    });

  if (!await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch ';
  }
  setState(() {
      _isLoading = false;
    });
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
          child: 
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(height: 50,),
              Wrap(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Container(
                padding: EdgeInsets.all(20),
                alignment: Alignment.topLeft,
                margin: EdgeInsets.fromLTRB(10, 5, 0, 0),
                child: Text('VENUES', style: TextStyle(fontFamily: 'Squares',color: Color(0xFF154165),fontSize: 35),),

              ),
              
                    ],
                  )
                 
                ],
              ),
              
             
              Card(
              elevation: 50,
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              
      
          ),
          shadowColor: Colors.black,
              
          color: Color.fromARGB(255, 11, 57, 84),
              child: 
              Container(
                width: 330,
                //alignment: Alignment.center,
                 padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
                 //margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child:
                //Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  //mainAxisSize: MainAxisSize.max,
                  //children: [
                    Wrap(
                  alignment: WrapAlignment.spaceBetween,
                children: [TextButton(onPressed: (){
                    const url = 'https://bucolic-froyo-e44a9a.netlify.app/keaud.html';
                    final uri = Uri.parse(url);
                    _isLoading ? CircularProgressIndicator() :
            
                  _launchURL(uri);
                }, child: 
                  Text('KE Auditorium', style: TextStyle(fontFamily: 'Squares',color: Color.fromARGB(255, 242, 248, 253),fontSize: 19),),),
                  //SizedBox(width: 30,),
                  IconButton(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              alignment: Alignment.centerLeft,
              constraints: const BoxConstraints(),
              icon: const Icon(CupertinoIcons.arrow_up_right_diamond_fill,size: 33,color: Color.fromARGB(255, 242, 248, 253)), 
                onPressed: () =>
                      MapsLauncher.launchCoordinates(
                     9.992127653710703, 76.3585508016492, 'KE AUDITORIUM'),
              ),
                ],
              ) ,
              
                 // ],
                //)
                 
              
              ) 
            ),
              Card(
              elevation: 50,
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
      
          ),
          shadowColor: Colors.black,
              
          color: Color.fromARGB(255, 199, 81, 70),
              child: 
              Container(
                width: 330,
                //alignment: Alignment.center,
                 padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
                child: Wrap(
                  alignment: WrapAlignment.spaceBetween,
                children: [TextButton(onPressed: (){
                  const url = 'https://bucolic-froyo-e44a9a.netlify.app/kesem.html';
                    final uri = Uri.parse(url);
                  _launchURL(uri);
                }, child: 
                  Text('KE Seminar Hall', style: TextStyle(fontFamily: 'Squares',color: Color.fromARGB(255, 242, 248, 253),fontSize: 19),),),
                  //SizedBox(width: 30,),
                  IconButton(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              alignment: Alignment.centerLeft,
              constraints: const BoxConstraints(),
              icon: const Icon(CupertinoIcons.arrow_up_right_diamond_fill,size: 33,color: Color.fromARGB(255, 242, 248, 253)), 
                onPressed: () =>
                      MapsLauncher.launchCoordinates(
                    9.992680622350827, 76.359013046452, 'KE Block'),
              ),
                ],
              ) 
              
              ,) 
            ),
             Card(
              elevation: 50,
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
      
          ),
          shadowColor: Colors.black,
              
          color: Color.fromARGB(255, 8, 126, 139),
              child: 
              Container(
                width: 330,
                //alignment: Alignment.center,
                 padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
                child: Wrap(
                  alignment: WrapAlignment.spaceBetween,
                children: [TextButton(onPressed: (){
                   const url = 'https://bucolic-froyo-e44a9a.netlify.app/gallery.html';
                    final uri = Uri.parse(url);
                  _launchURL(uri);
                }, child: 
                  Text('Gallery Hall', style: TextStyle(fontFamily: 'Squares',color: Color.fromARGB(255, 242, 248, 253),fontSize: 19),),),
                  //SizedBox(width: 30,),
                  IconButton(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              alignment: Alignment.centerLeft,
              constraints: const BoxConstraints(),
              icon: const Icon(CupertinoIcons.arrow_up_right_diamond_fill,size: 33,color: Color.fromARGB(255, 242, 248, 253)), 
                onPressed: () =>
                      MapsLauncher.launchCoordinates(
                     9.992492609507858, 76.35852330613513, 'Gallery Hall'),
              ),
                ],
              ) 
              
              ,) 
            ),
             Card(
              elevation: 50,
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
      
          ),
          shadowColor: Colors.black,
              
          color: Color.fromARGB(255, 84, 122, 165),
              child: 
              Container(
                width: 330,
                //alignment: Alignment.center,
                 padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
                child: Wrap(
                  alignment: WrapAlignment.spaceBetween,
                children: [TextButton(onPressed: (){
                  const url = 'https://bucolic-froyo-e44a9a.netlify.app/multimedia.html';
                    final uri = Uri.parse(url);
                  _launchURL(uri);
                }, child: 
                  Text('Multimedia Hall', style: TextStyle(fontFamily: 'Squares',color: Color.fromARGB(255, 242, 248, 253),fontSize: 19),),),
                  //SizedBox(width: 30,),
                  IconButton(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              alignment: Alignment.centerLeft,
              constraints: const BoxConstraints(),
              icon: const Icon(CupertinoIcons.arrow_up_right_diamond_fill,size: 33,color: Color.fromARGB(255, 242, 248, 253)), 
                onPressed: () =>
                      MapsLauncher.launchCoordinates(
                     9.993054, 76.358159, 'Multimedia Hall'),
              ),
                ],
              ) 
              
              ,) 
            ),
             
              Card(
              elevation: 50,
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
      
          ),
          shadowColor: Colors.black,
              
          color: Color.fromARGB(255, 11, 57, 84),
              child: 
              Container(
                width: 330,
                //alignment: Alignment.center,
                 padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
                child: Wrap(
                  alignment: WrapAlignment.spaceBetween,
                children: [TextButton(onPressed: (){
                   const url = 'https://bucolic-froyo-e44a9a.netlify.app/basketball.html';
                    final uri = Uri.parse(url);
                  _launchURL(uri);
                }, child: 
                  Text('Basketball Court', style: TextStyle(fontFamily: 'Squares',color: Color.fromARGB(255, 242, 248, 253),fontSize: 19),),),
                  //SizedBox(width: 30,),
                  IconButton(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              alignment: Alignment.centerLeft,
              constraints: const BoxConstraints(),
              icon: const Icon(CupertinoIcons.arrow_up_right_diamond_fill,size: 33,color: Color.fromARGB(255, 242, 248, 253)), 
                onPressed: () =>
                      MapsLauncher.launchCoordinates(
                    9.994207755459732, 76.35887307663344, 'Basketball Court'),
              ),
                ],
              ) 
              
              ,) 
            ),
            Card(
              elevation: 50,
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
      
          ),
          shadowColor: Colors.black,
              
          color: Color.fromARGB(255, 133, 133, 133),
              child: 
              Container(
                width: 330,
                //alignment: Alignment.center,
                 padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
                child: Wrap(
                  alignment: WrapAlignment.spaceBetween,
                children: [TextButton(onPressed: (){
                   const url = 'https://bucolic-froyo-e44a9a.netlify.app/badminton';
                    final uri = Uri.parse(url);
                  _launchURL(uri);
                }, child: 
                  Text('Badminton Court', style: TextStyle(fontFamily: 'Squares',color: Color.fromARGB(255, 242, 248, 253),fontSize: 19),),),
                  //SizedBox(width: 30,),
                  IconButton(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              alignment: Alignment.centerLeft,
              constraints: const BoxConstraints(),
              icon: const Icon(CupertinoIcons.arrow_up_right_diamond_fill,size: 33,color: Color.fromARGB(255, 242, 248, 253)), 
                onPressed: () =>
                      MapsLauncher.launchCoordinates(
                    9.992664, 76.359008, 'Badminton Court'),
              ),
                ],
              ) 
              
              ,) 
            ),
             Card(
              elevation: 50,
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
      
          ),
          shadowColor: Colors.black,
              
          color: Color.fromARGB(255, 199, 81, 70),
              child: 
              Container(
                width: 330,
                //alignment: Alignment.center,
                 padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
                child: Wrap(
                  alignment: WrapAlignment.spaceBetween,
                children: [TextButton(onPressed: (){
                   const url = 'https://bucolic-froyo-e44a9a.netlify.app/woods.html';
                    final uri = Uri.parse(url);
                  _launchURL(uri);
                }, child: 
                  Text('Woods', style: TextStyle(fontFamily: 'Squares',color: Color.fromARGB(255, 242, 248, 253),fontSize: 19),),),
                  //SizedBox(width: 30,),
                  IconButton(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              alignment: Alignment.centerLeft,
              constraints: const BoxConstraints(),
              icon: const Icon(CupertinoIcons.arrow_up_right_diamond_fill,size: 33,color: Color.fromARGB(255, 242, 248, 253)), 
                onPressed: () =>
                      MapsLauncher.launchCoordinates(
                     9.99303624486164, 76.35767412920382, 'The Woods'),
              ),
                ],
              ) 
              
              ,) 
            ),
             Card(
              elevation: 50,
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
      
          ),
          shadowColor: Colors.black,
              
          color: Color.fromARGB(255, 8, 126, 139),
              child: 
              Container(
                width: 330,
                //alignment: Alignment.center,
                 padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
                child: Wrap(
                  alignment: WrapAlignment.spaceBetween,
                children: [TextButton(onPressed: (){
                   const url = 'https://bucolic-froyo-e44a9a.netlify.app/busbay.html';
                    final uri = Uri.parse(url);
                  _launchURL(uri);
                }, child: 
                  Text('Bus Bay', style: TextStyle(fontFamily: 'Squares',color: Color.fromARGB(255, 242, 248, 253),fontSize: 19),),),
                  //SizedBox(width: 30,),
                  IconButton(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              alignment: Alignment.centerLeft,
              constraints: const BoxConstraints(),
              icon: const Icon(CupertinoIcons.arrow_up_right_diamond_fill,size: 33,color: Color.fromARGB(255, 242, 248, 253)), 
                onPressed: () =>
                      MapsLauncher.launchCoordinates(
                     9.993122188362747, 76.35887695319784, 'Bus Bay'),
              ),
                ],
              ) 
              
              ,) 
            ),
             Card(
              elevation: 50,
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
      
          ),
          shadowColor: Colors.black,
              
          color: Color.fromARGB(255, 84, 122, 165),
              child: 
              Container(
                width: 330,
                //alignment: Alignment.center,
                 padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
                child: Wrap(
                  alignment: WrapAlignment.spaceBetween,
                children: [TextButton(onPressed: (){
                   const url = 'https://bucolic-froyo-e44a9a.netlify.app/chavara.html';
                    final uri = Uri.parse(url);
                  _launchURL(uri);
                }, child: 
                  Text('Chavara Hall', style: TextStyle(fontFamily: 'Squares',color: Color.fromARGB(255, 242, 248, 253),fontSize: 19),),),
                  //SizedBox(width: 30,),
                  IconButton(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              alignment: Alignment.centerLeft,
              constraints: const BoxConstraints(),
              icon: const Icon(CupertinoIcons.arrow_up_right_diamond_fill,size: 33,color: Color.fromARGB(255, 242, 248, 253)), 
                onPressed: () =>
                      MapsLauncher.launchCoordinates(
                     9.992234147121753, 76.35760121310399, 'Chavara Hall'),
              ),
                ],
              ) 
              
              ,) 
            ),
            
             Card(
              elevation: 50,
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
      
          ),
          shadowColor: Colors.black,
              
          color: Color.fromARGB(255, 11, 57, 84),
              child: 
              Container(
                width: 330,
                //alignment: Alignment.center,
                 padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
                child: Wrap(
                  alignment: WrapAlignment.spaceBetween,
                children: [TextButton(onPressed: (){
                   const url = 'https://bucolic-froyo-e44a9a.netlify.app/steag.html';
                    final uri = Uri.parse(url);
                  _launchURL(uri);
                }, child: 
                  Text('Steag', style: TextStyle(fontFamily: 'Squares',color: Color.fromARGB(255, 242, 248, 253),fontSize: 19),),),
                  //SizedBox(width: 30,),
                  IconButton(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              alignment: Alignment.centerLeft,
              constraints: const BoxConstraints(),
              icon: const Icon(CupertinoIcons.arrow_up_right_diamond_fill,size: 33,color: Color.fromARGB(255, 242, 248, 253)), 
                onPressed: () =>
                      MapsLauncher.launchCoordinates(
                     9.992109335123173, 76.35846421385834, 'Steag Makers Fest'),
              ),
                ],
              ) 
              
              ,) 
            ),
             Card(
              elevation: 50,
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
      
          ),
          shadowColor: Colors.black,
              
          color: Color.fromARGB(255, 199, 81, 70),
              child: 
              Container(
                width: 330,
                //alignment: Alignment.center,
                 padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
                child: Wrap(
                  alignment: WrapAlignment.spaceBetween,
                children: [TextButton(onPressed: (){
                   const url = 'https://bucolic-froyo-e44a9a.netlify.app/mainlabs.html';
                    final uri = Uri.parse(url);
                  _launchURL(uri);
                }, child: 
                  Text('Main Block Labs', style: TextStyle(fontFamily: 'Squares',color: Color.fromARGB(255, 242, 248, 253),fontSize: 19),),),
                  //SizedBox(width: 30,),
                  IconButton(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              alignment: Alignment.centerLeft,
              constraints: const BoxConstraints(),
              icon: const Icon(CupertinoIcons.arrow_up_right_diamond_fill,size: 33,color: Color.fromARGB(255, 242, 248, 253)), 
                onPressed: () =>
                      MapsLauncher.launchCoordinates(
                     9.993745094961822, 76.35826573038986, 'Main Block'),
              ),
                ],
              ) 
              
              ,) 
            ),
             Card(
              elevation: 50,
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
      
          ),
          shadowColor: Colors.black,
              
          color: Color.fromARGB(255, 8, 126, 139),
              child: 
              Container(
                width: 330,
                //alignment: Alignment.center,
                 padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
                child: Wrap(
                  alignment: WrapAlignment.spaceBetween,
                children: [TextButton(onPressed: (){
                   const url = 'https://bucolic-froyo-e44a9a.netlify.app/kelabs.html';
                    final uri = Uri.parse(url);
                  _launchURL(uri);
                }, child: 
                  Text('KE Labs', style: TextStyle(fontFamily: 'Squares',color: Color.fromARGB(255, 242, 248, 253),fontSize: 19),),),
                  //SizedBox(width: 30,),
                  IconButton(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              alignment: Alignment.centerLeft,
              constraints: const BoxConstraints(),
              icon: const Icon(CupertinoIcons.arrow_up_right_diamond_fill,size: 33,color: Color.fromARGB(255, 242, 248, 253)), 
                onPressed: () =>
                      MapsLauncher.launchCoordinates(
                     9.992680622350827, 76.359013046452, 'KE Block'),
              ),
                ],
              ) 
              
              ,) 
            ),
             Card(
              elevation: 50,
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
      
          ),
          shadowColor: Colors.black,
              
          color: Color.fromARGB(255, 133, 133, 133),
              child: 
              Container(
                width: 330,
                //height: 90,
                //alignment: Alignment.center,
                 padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
                child: Wrap(
                   alignment: WrapAlignment.spaceBetween,
                children: [TextButton(onPressed: (){
                   const url = 'https://bucolic-froyo-e44a9a.netlify.app/keclass.html';
                    final uri = Uri.parse(url);
                  _launchURL(uri);
                }, child: 
                  Text('KE Classrooms', style: TextStyle(fontFamily: 'Squares',color: Color.fromARGB(255, 242, 248, 253),fontSize: 19),),),
                  //SizedBox(width: 30,),
                  IconButton(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              constraints: const BoxConstraints(),
              icon: const Icon(CupertinoIcons.arrow_up_right_diamond_fill,size: 33,color: Color.fromARGB(255, 242, 248, 253)), 
                onPressed: () =>
                      MapsLauncher.launchCoordinates(
                    9.992680622350827, 76.359013046452, 'KE Block'),
              ),
                ],
              ) 
              
              ,) 
            ),
             Card(
              elevation: 50,
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
      
          ),
          shadowColor: Colors.black,
              
          color: Color.fromARGB(255, 11, 57, 84),
              child: 
              Container(
                width: 330,
                //alignment: Alignment.center,
                 padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
                child: Wrap(
                  alignment: WrapAlignment.spaceBetween,
                children: [TextButton(onPressed: (){}, child: 
                  Text('PG Block', style: TextStyle(fontFamily: 'Squares',color: Color.fromARGB(255, 242, 248, 253),fontSize: 19),),),
                  //SizedBox(width: 30,),
                  IconButton(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              alignment: Alignment.centerLeft,
              constraints: const BoxConstraints(),
              icon: const Icon(CupertinoIcons.arrow_up_right_diamond_fill,size: 33,color: Color.fromARGB(255, 242, 248, 253)), 
                onPressed: () =>
                      MapsLauncher.launchCoordinates(
                     9.992484376156368, 76.3585258727531, 'PG Block'),
              ),
                ],
              ) 
              
              ,) 
            ),
             Card(
              elevation: 50,
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
      
          ),
          shadowColor: Colors.black,
              
          color: Color.fromARGB(255, 199, 81, 70),
              child: 
              Container(
                width: 330,
                //alignment: Alignment.center,
                 padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
                child: Wrap(
                  alignment: WrapAlignment.spaceBetween,
                children: [TextButton(onPressed: (){}, child: 
                  Text('Main Block', style: TextStyle(fontFamily: 'Squares',color: Color.fromARGB(255, 242, 248, 253),fontSize: 19),),),
                  //SizedBox(width: 30,),
                  IconButton(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              alignment: Alignment.centerLeft,
              constraints: const BoxConstraints(),
              icon: const Icon(CupertinoIcons.arrow_up_right_diamond_fill,size: 33,color: Color.fromARGB(255, 242, 248, 253)), 
                onPressed: () =>
                      MapsLauncher.launchCoordinates(
                     9.993745094961822, 76.35826573038986, 'Main Block'),
              ),
                ],
              ) 
              
              ,) 
            ),
             Card(
              elevation: 50,
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
      
          ),
          shadowColor: Colors.black,
              
          color: Color.fromARGB(255, 8, 126, 139),
              child: 
              Container(
                width: 330,
                //alignment: Alignment.center,
                 padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
                child: Wrap(
                  alignment: WrapAlignment.spaceBetween,
                children: [TextButton(onPressed: (){}, child: 
                  Text('KE Block', style: TextStyle(fontFamily: 'Squares',color: Color.fromARGB(255, 242, 248, 253),fontSize: 19),),),
                  //SizedBox(width: 30,),
                  IconButton(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              alignment: Alignment.centerLeft,
              constraints: const BoxConstraints(),
              icon: const Icon(CupertinoIcons.arrow_up_right_diamond_fill,size: 33,color: Color.fromARGB(255, 242, 248, 253)), 
                onPressed: () =>
                      MapsLauncher.launchCoordinates(
                     9.992680622350827, 76.359013046452, 'KE Block'),
              ),
                ],
              ) 
              
              ,) 
            ),
            Card(
              elevation: 50,
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
      
          ),
          shadowColor: Colors.black,
              
          color: Color.fromARGB(255, 84, 122, 165),
              child: 
              Container(
                width: 330,
                //height: 90,
                //alignment: Alignment.center,
                 padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
                child: Wrap(
                   alignment: WrapAlignment.spaceBetween,
                children: [TextButton(onPressed: (){
                   const url = 'https://bucolic-froyo-e44a9a.netlify.app/openven.html';
                    final uri = Uri.parse(url);
                  _launchURL(uri);
                }, child: 
                  Text('Other Venues', style: TextStyle(fontFamily: 'Squares',color: Color.fromARGB(255, 242, 248, 253),fontSize: 19),),),
                  //SizedBox(width: 30,),
              //     IconButton(
              // padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              // constraints: const BoxConstraints(),
              // icon: const Icon(CupertinoIcons.arrow_up_right_diamond_fill,size: 33,color: Color.fromARGB(255, 242, 248, 253)), 
              //   onPressed: () =>
              //         MapsLauncher.launchCoordinates(
              //       9.992680622350827, 76.359013046452, 'KE Block'),
              // ),
                ],
              ) 
              
              ,) 
            ),
            ],
            )
            
          
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
              icon: const Icon(CupertinoIcons.home,color: Color.fromARGB(255, 242, 248, 253)), onPressed: () {navigateToHome();},),
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
              icon: const Icon(CupertinoIcons.building_2_fill,color: Color.fromARGB(255, 242, 248, 253)), onPressed: () {},),
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