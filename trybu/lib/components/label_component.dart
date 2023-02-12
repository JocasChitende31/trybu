import 'package:flutter/material.dart';

class TrybuLabel extends StatefulWidget{

  final String labelName;
  final TextStyle? style;
   const TrybuLabel({Key? key, required this.labelName, required this.style}):super(key: key);

@override
  _TrybuLabelState createState() =>  _TrybuLabelState();
}


class _TrybuLabelState extends State<TrybuLabel>{

  @override
  Widget build(BuildContext context) {
    return Text(widget.labelName, style: widget.style,);
  }
}