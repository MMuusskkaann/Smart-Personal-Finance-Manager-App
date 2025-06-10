import 'package:flutter/material.dart';

class PaymentListTile extends StatelessWidget {
  final String icon;
  final String label;
  final String amount;

  const PaymentListTile({
    super.key,
    required this.icon,
    required this.label,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(icon, width: 30, height: 30),
      title: Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
      trailing: Text(
        amount,
        style: const TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
      ),
    );
  }
}
