// 📁 dashboard_page.dart
import 'package:flutter/material.dart';
import 'package:smart_personal_finance_app/financeOverview.dart';
import 'package:smart_personal_finance_app/limitedbalanceCard.dart';
import 'package:smart_personal_finance_app/myCard.dart';
import 'package:smart_personal_finance_app/savingChart.dart';
import 'package:smart_personal_finance_app/sideNav.dart';
import 'package:smart_personal_finance_app/topBar.dart';
import 'package:smart_personal_finance_app/transactionList.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Sidebar (show only on large screens)
          if (screenWidth > 700) const SideNav(),

          // Main Content
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TopBar(),
                  const SizedBox(height: 24),

                  // Cards (Responsive with Wrap)
                  Wrap(
                    spacing: 16,
                    runSpacing: 16,
                    children: [
                      SizedBox(
                        width: getCardWidth(screenWidth),
                        child: const LimitedBalanceCard(),
                      ),
                      SizedBox(
                        width: getCardWidth(screenWidth),
                        child: const TotalSavingsChart(),
                      ),
                      SizedBox(
                        width: getCardWidth(screenWidth),
                        child: const MyCard(),
                      ),
                    ],
                  ),

                  const SizedBox(height: 24),
                  const FinancialOverviewChart(),
                  const SizedBox(height: 24),
                  const TransactionList(),
                  const SizedBox(height: 32),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  double getCardWidth(double screenWidth) {
    if (screenWidth > 1200) return (screenWidth - 96) / 3;
    if (screenWidth > 800) return (screenWidth - 64) / 2;
    return screenWidth - 48;
  }
}
