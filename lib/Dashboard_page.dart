import 'package:flutter/material.dart';
import 'package:smart_personal_finance_app/size_config.dart';
import 'Appbaraction.dart';
import 'paymentDetailList.dart';
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
                     paymentDetailList(),
                    //  SizedBox(height: ,)
                  Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            boxShadow: [BoxShadow(
                              // ignore: deprecated_member_use
                              color: Colors.grey.withOpacity(0.9),
                              // blurRadius: 15.0,
                              offset: const Offset(5,5),
                              blurRadius: 8,
                              spreadRadius: 0,
                            ),
                          ]
                        ),
                       child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Image.network(
                          'https://pngimg.com/uploads/credit_card/credit_card_PNG204.png',
                          width: 300,
                          height: 200,
                          fit: BoxFit.contain,
                          loadingBuilder: (BuildContext context, Widget child,
                              ImageChunkEvent? loadingProgress) {
                            if (loadingProgress == null) return child;
                            return Center(
                              child: CircularProgressIndicator(
                                value: loadingProgress.expectedTotalBytes != null
                                    ? loadingProgress.cumulativeBytesLoaded /
                                        loadingProgress.expectedTotalBytes!
                                    : null,
                              ),
                            );
                          },
                      errorBuilder: (context, error, stackTrace) {
                            return const Center(
                              child: Text(
                                'Image failed to load',
                                style: TextStyle(color: Colors.red),    
                     ),
                    );
                  },
                 ),
                )
              ),
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
