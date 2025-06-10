import 'package:flutter/material.dart';
import 'package:smart_personal_finance_app/primaryText.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      height: 140,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
            colors: [Color(0xFF0066FF), Color(0xFF00CCFF)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          PrimaryText(
              text: 'My Cards',
              size: 14,
              fontWeight: FontWeight.normal,
              color: Colors.white,
              textAlign: TextAlign.left),
          Spacer(),
          PrimaryText(
              text: '\$3,223.20',
              size: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              textAlign: TextAlign.left),
          PrimaryText(
              text: 'Visa •••• 5432',
              size: 14,
              fontWeight: FontWeight.normal,
              color: Colors.white,
              textAlign: TextAlign.left),
        ],
      ),
    );
  }
}
