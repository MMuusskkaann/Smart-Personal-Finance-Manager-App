import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class TotalSavingsChart extends StatelessWidget {
  const TotalSavingsChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180, // ✅ Fixed height to prevent overflow
      decoration: BoxDecoration(
        color: const Color(0xFF1E1E1E),
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, // ✅ Center content
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            '\$2,482',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const Text(
            'Your Savings',
            style: TextStyle(
              fontSize: 14,
              color: Colors.white54,
            ),
          ),
          const SizedBox(height: 12),
          CircularPercentIndicator(
            radius: 40.0,
            lineWidth: 10.0,
            percent: 0.6,
            center: const Text("60%", style: TextStyle(color: Colors.white)),
            progressColor: Colors.blue,
            backgroundColor: Colors.grey.shade800,
            circularStrokeCap: CircularStrokeCap.round,
          ),
        ],
      ),
    );
  }
}
