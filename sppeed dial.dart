import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:toast/toast.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
final openornot=ValueNotifier(false);
  @override
  Widget build(BuildContext context) =>WillPopScope(
onWillPop: ()async{
  if(openornot.value){
    openornot.value=false;
  return false;}
  else{
    return true ;}
},
child:Scaffold(
backgroundColor:Colors.cyanAccent,
appBar: AppBar(
title: Text("Welcome"),
),
floatingActionButton: SpeedDial(
icon: Icons.share,
spacing: 12,
onOpen: ()=>showToast('open...'),

overlayColor: Colors.brown,
overlayOpacity: 0.3,
openCloseDial: openornot,
children: [
SpeedDialChild(
child: Icon(Icons.facebook),
label: "Facebook",
onTap: ()=>showToast('Shared post on  Facebook'),
),
SpeedDialChild(
child: Icon(FontAwesomeIcons.linkedin),
onTap: ()=>showToast('Shared post on LinkedIn '),
label: "LinkedIn",
),
SpeedDialChild(
child: Icon(FontAwesomeIcons.twitter),
label: "Twitter",
onTap: ()=>showToast('Shared post on Twitter'),
),
SpeedDialChild(
child: Icon(FontAwesomeIcons.instagram),
label: "Instagram",
onTap: () =>showToast('Shared post on Instagram'),
),
SpeedDialChild(
child: Icon(FontAwesomeIcons.copy),
label: "Copy Link",
onTap: ()=>showToast('Copied Link to clipboard'),
),
],
),
),);
  }
  Future showToast(String message)async{
    await Fluttertoast.cancel();
    Fluttertoast.showToast(msg: message,fontSize: 20);
  }
