import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../primaryText.dart';

class FinancialOverviewChart extends StatelessWidget {
  const FinancialOverviewChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const PrimaryText(
          text: 'Financial Overview',
          size: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          textAlign: TextAlign.left,
        ),
        const SizedBox(height: 16),
        SizedBox(
          height: 180,
          child: SfCartesianChart(
            backgroundColor: Colors.transparent,
            series: <CartesianSeries<_ChartData, String>>[
              ColumnSeries<_ChartData, String>(
                dataSource: [
                  _ChartData('Mon', 100),
                  _ChartData('Tue', 150),
                  _ChartData('Wed', 120),
                  _ChartData('Thu', 180),
                  _ChartData('Fri', 260),
                  _ChartData('Sat', 200),
                  _ChartData('Sun', 300),
                ],
                xValueMapper: (d, _) => d.day,
                yValueMapper: (d, _) => d.value,
                color: Colors.blue,
              ),
            ],
            primaryXAxis: CategoryAxis(
              axisLine: const AxisLine(width: 0),
              majorTickLines: const MajorTickLines(width: 0),
              labelStyle: const TextStyle(color: Colors.white),
            ),
            primaryYAxis: NumericAxis(
              isVisible: false,
            ),
          ),
        ),
      ],
    );
  }
}

class _ChartData {
  final String day;
  final double value;
  _ChartData(this.day, this.value);
}
