import 'package:flutter/material.dart';

import 'Appbaraction.dart';
import 'slidemanu.dart';

class DashboardPage  extends StatelessWidget{
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    // SizeConfig().init(context);
      return Scaffold(
        body: SafeArea(
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: SlideManu()
              ),

              Expanded(
                flex: 10,
                // ignore: sized_box_for_whitespace
                child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height,  
                // color: Colors.blueGrey[100], 
                )
              ),

              Expanded(
                flex: 4,
                // ignore: sized_box_for_whitespace
                child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height,  
                color: Colors.white70,
                padding: EdgeInsets.symmetric(vertical: 30.0,horizontal: 30.0),
                child: Column(
                  children: [
                     appbaractionwork()
                  ],
                 ),
                )
              ),
            ],
          ),
        ),
      );
  }
}
