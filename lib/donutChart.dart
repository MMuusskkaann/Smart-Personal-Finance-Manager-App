import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class SavingsDonutChart extends StatelessWidget {
  const SavingsDonutChart({super.key});

  @override
  Widget build(BuildContext context) {
    final List<_SavingsData> data = [
      _SavingsData('Rent', 30, Colors.grey.shade800),
      _SavingsData('Food', 20, Colors.grey.shade600),
      _SavingsData('Savings', 25, Colors.blue),
      _SavingsData('Investments', 15, Colors.white),
      _SavingsData('Others', 10, Colors.transparent), // just for spacing
    ];

    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF1C1C1E),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Total savings",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              Icon(Icons.stacked_line_chart_rounded, color: Colors.white),
            ],
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 150,
            child: SfCircularChart(
              backgroundColor: Colors.transparent,
              margin: EdgeInsets.zero,
              annotations: <CircularChartAnnotation>[
                CircularChartAnnotation(
                  widget: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Text(
                        '\$2,482',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Your savings',
                        style: TextStyle(
                          color: Colors.white54,
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                ),
              ],
              series: <DoughnutSeries<_SavingsData, String>>[
                DoughnutSeries<_SavingsData, String>(
                  dataSource: data,
                  xValueMapper: (d, _) => d.category,
                  yValueMapper: (d, _) => d.value,
                  pointColorMapper: (d, _) => d.color,
                  radius: '90%',
                  innerRadius: '70%',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _SavingsData {
  final String category;
  final double value;
  final Color color;
  _SavingsData(this.category, this.value, this.color);
}
