import 'package:flutter/material.dart';
import '../primaryText.dart';

class LimitedBalanceCard extends StatelessWidget {
  const LimitedBalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 140,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF2A2A2A),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const PrimaryText(
              text: 'Limited Balance',
              size: 14,
              fontWeight: FontWeight.normal,
              color: Colors.grey,
              textAlign: TextAlign.left),
          const SizedBox(height: 8),
          const PrimaryText(
              text: '\$400.88',
              size: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              textAlign: TextAlign.left),
          const SizedBox(height: 8),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                    color: Colors.green, borderRadius: BorderRadius.circular(12)),
                child: const PrimaryText(
                    text: '+5%',
                    size: 12,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                    textAlign: TextAlign.center),
              ),
              const Spacer(),
            ],
          ),
          const Spacer(),
          const LinearProgressIndicator(
              value: 0.47,
              backgroundColor: Colors.grey,
              color: Colors.blue),
        ],
      ),
    );
  }
}
