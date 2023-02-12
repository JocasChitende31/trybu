import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trybu/components/label_component.dart';
import 'package:trybu/home/home.dart';
import 'package:trybu/home/trybu_services.dart';

class TrybuHome extends StatefulWidget{
  @override
  _TrybuHomeState createState()=> _TrybuHomeState();
const TrybuHome({Key? key});


}

class _TrybuHomeState extends State<TrybuHome>{

  @override

  Widget build(BuildContext context) {
    return MediaQuery(
    data:  MediaQueryData(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Home(),
        
        ));
  }

}