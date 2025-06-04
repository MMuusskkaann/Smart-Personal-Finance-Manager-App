
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashboardPage  extends StatefulWidget{
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardState();
}

class _DashboardState extends State<DashboardPage>{
  final double defaultPadding = 16.0;
  int selectedSegment = 0;

   final Map<int, Widget> myTabs = const {
    0: Text("Buy Crypto", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
    1: Text("Trading", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
    2: Text("Statistics", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
    3: Text("Finances", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
    4: Text("Reports", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
    5: Text("Cash Flow", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
  };

      @override
      Widget build(BuildContext context){
        return Scaffold(
          body: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                CupertinoSegmentedControl<int>(
                  children: myTabs,
                  groupValue: selectedSegment,
                  onValueChanged: (int value){
                    setState(() {
                      
                      selectedSegment = value;
                    });
                  },
                  
                  
                  borderColor: Colors.black,
                  selectedColor: Colors.black,
                  unselectedColor: Colors.white,
                  // ignore: deprecated_member_use
                  pressedColor: Colors.cyanAccent.withOpacity(0.2),
                  ),
                  SizedBox(height: 20),
                  Text('Selected Tab: ${myTabs[selectedSegment]}')
              ]
            ),
          ),
        );
      }
}

class MaterialsegmentControl {
  int segmentcontrolGroupValue = 3;
  final Map<int,Widget> myTabs = const<int,Widget>{
    0 : Text(
      "Buy Crypto",
      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
    ),

    1 : Text(
      "Rrading",
      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
    ),

    2 : Text(
      "Statistics",
      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
    ),

    3 : Text(
      "Finances",
      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
    ),

    4 : Text(
      "Reports",
      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
    ),

    5: Text(
      "Cash flow",
      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
    ),
  };
}