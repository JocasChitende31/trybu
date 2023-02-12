import 'package:flutter/material.dart';
import 'package:trybu/components/label_component.dart';
import 'package:trybu/home/trybu_services.dart';

class Home extends StatefulWidget{

@override
  _HomeState createState()=> _HomeState();
  final routeName="/home";

}

class _HomeState extends State<Home>{

  @override
  Widget build(BuildContext context) {
    return Container(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    ),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                                      TrybuLabel(labelName: "This is one", 
                  style: Theme.of(context).textTheme.headline5),
                     TrybuLabel(labelName: "This is two", 
                  style: Theme.of(context).textTheme.headline5),
                    ],
                  ),
                ),

                TextButton(onPressed: (){
                  Navigator.push(context,
                MaterialPageRoute(builder: (context)=> TrybuServices()));

                }, child: Text('Services'))

              ],
            ),
          );
  }

}