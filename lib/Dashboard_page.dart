import 'package:flutter/material.dart';
import 'package:smart_personal_finance_app/paymentDetailList.dart';
import 'package:smart_personal_finance_app/size_config.dart';
import 'Appbaraction.dart';
import 'slidemanu.dart';

class DashboardPage  extends StatelessWidget{
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
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
                // ignore: deprecated_member_use
                color: Colors.grey.withOpacity(0.1),
                padding: EdgeInsets.symmetric(vertical: 30.0,horizontal: 30.0),
                child: Column(
                  children: [
                     appbaractionwork(),
                     PaymentDetailList(),
            ],
          ),
        ),
       ),
      ],
    ),
    ),
   );
  }
}