import 'package:flutter/material.dart';

class AppBarCustom extends StatefulWidget {
  @override
  _AppBarCustomState createState() => _AppBarCustomState();
}

class _AppBarCustomState extends State<AppBarCustom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:40,left: 15,right:25),
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
              IconButton(icon: Icon(Icons.dehaze,color: Colors.yellow[50]), onPressed: null,),
              IconButton(icon: Icon(Icons.portrait,color: Colors.yellow[50]), onPressed: null,),
            ],
            
          ),
          Text("Movies",style:TextStyle(color: Colors.white,fontSize: 20))
        ],
      ),
      // decoration: BoxDecoration(
      //   border:Border.all(width: 2.0, color:Colors.grey),
      //   borderRadius: BorderRadius.circular(5),
      // ),
    );
  }
}