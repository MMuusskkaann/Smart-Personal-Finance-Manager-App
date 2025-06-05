import 'package:flutter/material.dart';
// ignore: camel_case_types
class appbaractionwork extends StatelessWidget {
  const appbaractionwork({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
     mainAxisAlignment: MainAxisAlignment.end,
     children: [
        IconButton(
         onPressed: () {}, 
         icon: Icon(Icons.calendar_month,
         weight: 20.0,)
         ),
         SizedBox(width: 10.0,),
         IconButton(
         onPressed: () {}, 
         icon: Icon(Icons.notifications,
         weight: 20.0,)
         ),
         SizedBox(width: 15.0),
         Row(
           children: [
             CircleAvatar(
               radius: 17,
               backgroundImage: NetworkImage('https://cdn-icons-png.flaticon.com/512/6997/6997662.png',
               ),
             ),
             Icon(Icons.arrow_drop_down_outlined,color: Colors.black,)
           ],
         )
     ],
    );
  }
}
