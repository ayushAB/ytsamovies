import 'package:flutter/material.dart';

class GenreTile extends StatelessWidget {
  final String generName;
  GenreTile(this.generName);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:25,bottom:25,left:5,right:5),
      width: 100,
      child: Center(
        child: Text(generName,style: TextStyle(
          color:Colors.white,
          fontWeight:FontWeight.bold,
        ),)),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
