import 'package:flutter/material.dart';
import 'package:smart_personal_finance_app/transactionTile.dart';
import '../primaryText.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF1E1E1E),
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          PrimaryText(
            text: 'Transactions',
            size: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 16),

          // ✅ Custom Indian transactions
          TransactionTile(
            icon: 'https://cdn-icons-png.flaticon.com/512/1342/1342269.png',
            label: 'Electricity Bill',
            amount: '-₹850.00',
          ),
          TransactionTile(
            icon: 'https://cdn-icons-png.flaticon.com/512/747/747376.png',
            label: 'Mobile Recharge',
            amount: '-₹199.00',
          ),
          TransactionTile(
            icon: 'https://cdn-icons-png.flaticon.com/512/1082/1082390.png',
            label: 'Water Bill',
            amount: '-₹420.00',
          ),
          TransactionTile(
            icon: 'https://cdn-icons-png.flaticon.com/512/1903/1903162.png',
            label: 'Grocery Shopping',
            amount: '-₹1,250.00',
          ),
          TransactionTile(
            icon: 'https://cdn-icons-png.flaticon.com/512/3064/3064197.png',
            label: 'Zomato Order',
            amount: '-₹320.00',
          ),
        ],
      ),
    );
  }
}
