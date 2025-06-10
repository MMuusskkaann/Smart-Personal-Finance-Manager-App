import 'package:flutter/material.dart';

class SideNav extends StatelessWidget {
  const SideNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      color: const Color(0xFF1A1A1A),
      child: Column(
        children: const [
          SizedBox(height: 30),
          Icon(Icons.home, color: Colors.white),
          SizedBox(height: 30),
          Icon(Icons.account_balance_wallet_outlined, color: Colors.white),
          SizedBox(height: 30),
          Icon(Icons.swap_horiz, color: Colors.white),
          SizedBox(height: 30),
          Icon(Icons.bar_chart_outlined, color: Colors.white),
          SizedBox(height: 30),
          Icon(Icons.timeline, color: Colors.white),
          SizedBox(height: 30),
          Icon(Icons.settings, color: Colors.white),
        ],
      ),
    );
  }
}
