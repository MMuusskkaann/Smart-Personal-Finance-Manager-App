import 'package:flutter/material.dart';
import 'primaryText.dart';
import 'size_config.dart';

class PaymentDetailList extends StatelessWidget {
  const PaymentDetailList({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context); // Ensure responsive units

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: SizeConfig.getBlockSizedVertical() * 5),

        // Card Image
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            boxShadow: [
              BoxShadow(
                color: Colors.white70,
                blurRadius: 15.0,
                offset: const Offset(10.0, 15.0),
              )
            ],
          ),
          child: Image.network(
            'https://pngimg.com/uploads/credit_card/credit_card_PNG204.png',
            height: 150,
          ),
        ),

        SizedBox(height: SizeConfig.getBlockSizedVertical() * 2),

        // Title & Date
        Center(
          child: Column(
            children: const [
              PrimaryText(
                text: 'Recent Activities',
                size: 18,
                fontWeight: FontWeight.w800,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 4),
              PrimaryText(
                text: '09 June 2025',
                size: 14,
                fontWeight: FontWeight.w400,
                color: Colors.black,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),

        SizedBox(height: SizeConfig.getBlockSizedVertical() * 2),

        // Transaction Tile with Water Drop Icon
        ListTile(
          contentPadding: const EdgeInsets.only(left: 0, right: 20.0),
          visualDensity: VisualDensity.standard,
          leading: Container(
            width: 50.0,
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.network(
              'https://cdn-icons-png.flaticon.com/512/728/728093.png', // 💧 Water Drop
              width: 20.0,
              height: 20.0,
              fit: BoxFit.contain,
            ),
          ),
          title: const PrimaryText(
            text: 'Water Bill',
            size: 14.0,
            fontWeight: FontWeight.w500,
            textAlign: TextAlign.start,
          ),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              PrimaryText(
                text: 'Successfully',
                size: 12.0,
                color: Colors.black,
                textAlign: TextAlign.center,
                fontWeight: FontWeight.normal,
              ),
              PrimaryText(
                text: '₹676',
                size: 16.0,
                color: Colors.black,
                textAlign: TextAlign.center,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
