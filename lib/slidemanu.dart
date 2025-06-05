import 'package:flutter/material.dart';

class SlideManu extends StatelessWidget {
  const SlideManu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Container(
    width: double.infinity,
    height: MediaQuery.of(context).size.height,  
    color: Colors.blueGrey[100], 
    child: SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        // mainAxisSize: MainAxisSize.max,
        children: [
        Container(
          height: 100,
          alignment: Alignment.topCenter,
          padding: EdgeInsets.only(top : 20),
          child: Center(
            child: SizedBox(
              width: 35,
              height: 35,
              child: Icon(Icons.multiple_stop,size: 40,color: Colors.black),
             )
           ),
         ),
         IconButton(onPressed: () {},
          icon: Icon(Icons.home),
          iconSize: 20,
          color: Colors.grey,
          padding: EdgeInsets.symmetric(vertical: 20.0),
          ),
    
          IconButton(onPressed: () {},
          icon: Icon(Icons.archive),
          iconSize: 20,
          color: Colors.grey,
          padding: EdgeInsets.symmetric(vertical: 20.0),
          ),
    
          IconButton(onPressed: () {},
          icon: Icon(Icons.check_box),
          iconSize: 20,
          color: Colors.grey,
          padding: EdgeInsets.symmetric(vertical: 20.0),
          ),
    
          IconButton(onPressed: () {},
          icon: Icon(Icons.credit_card),
          iconSize: 20,
          color: Colors.grey,
          padding: EdgeInsets.symmetric(vertical: 20.0),
          ),
    
          IconButton(onPressed: () {},
          icon: Icon(Icons.numbers),
          iconSize: 20,
          color: Colors.grey,
          padding: EdgeInsets.symmetric(vertical: 20.0),
          ),
        ],
       ), 
      ),
     ),
    );
  }
}


