import 'package:flutter/material.dart';
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
                color: Colors.white70,
                padding: EdgeInsets.symmetric(vertical: 30.0,horizontal: 30.0),
                child: Column(
                  children: [
                     appbaractionwork(),
                     Column(
                      children: [
                        SizedBox(height: SizeConfig.blockSizedVertical * 5,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            boxShadow: [BoxShadow(
                              color: Colors.grey,
                              blurRadius: 15.0,
                              offset: const Offset(10.0, 15.0)
                            )]
                          ),
                          child: Image.network('https://in.images.search.yahoo.com/search/images;_ylt=Awrx.RtWiERoawIAgea7HAx.;_ylu=Y29sbwNzZzMEcG9zAzEEdnRpZAMEc2VjA3BpdnM-?p=credit+card&fr2=piv-web&type=E210IN885G0&fr=mcafee#id=24&iurl=https%3A%2F%2Fpngimg.com%2Fuploads%2Fcredit_card%2Fcredit_card_PNG204.png&action=click'),
                        )
                      ],
                     )
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
