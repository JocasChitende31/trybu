import 'package:flutter/material.dart';
import 'package:trybu/components/label_component.dart';

class TrybuServices extends StatefulWidget{
@override
_TrybuServicesSTate createState()=> _TrybuServicesSTate();

const TrybuServices();
final String routeName= "/services";
}



class _TrybuServicesSTate extends State<TrybuServices>{

  int _selectedIndex = 0;

@override
  Widget build(BuildContext context) {
    return   MediaQuery(
      data: MediaQueryData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            title: Text('TRYBU'),
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz))
            ],
            leading:TextButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text('Close',style:TextStyle(color: Colors.white))),
          ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  color: Colors.white,
                  child: TrybuLabel(labelName: "These are our services and be welcome",
                  style: Theme.of(context).textTheme.headline4,),
                ),
             
              ],
            ),
             bottomNavigationBar: BottomNavigationBar(
              onTap: (index){

                setState(() {
                  _selectedIndex = index;
                });
                if(index == 1){
                  
                }

              },
              currentIndex: _selectedIndex,
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        
        icon: Icon(Icons.call),
        label: 'Calls',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.camera),
        label: 'Camera',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.chat),
        label: 'Chats',
      ),
    ],
  ),
        
        ),
      ),
    );
  }
}