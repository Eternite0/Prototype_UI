import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:provider/provider.dart';
import '../Provider/UserProvider.dart';

class SubPageItem1 extends StatefulWidget {
  const SubPageItem1({super.key});

  @override
  State<SubPageItem1> createState() => _SubPageItem1State();
}

class _SubPageItem1State extends State<SubPageItem1> {



  @override
  Widget build(BuildContext context) {


    double  ScreenWidth = MediaQuery.of(context).size.width;
    double  ScreenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom -
        kToolbarHeight;
    double ImageHeight = ScreenHeight * 0.5;
    double GraphHeight = ScreenHeight * 0.4;

    List<double> GraphData = context.watch<UserProvider1>().MyData;
    List<FlSpot> GraphSpot = List.generate(
      GraphData.length,
      (index) => FlSpot(index.toDouble(), GraphData[index]) 
    );

    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: ScreenWidth * 0.8,
                height: ImageHeight,
                child: Image.asset('images/Sample1.jpg', alignment: Alignment.center),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: ScreenWidth * 0.8,
                height: GraphHeight,
                child: LineChart(LineChartData(
                  minX: 0,
                  maxX: 15,
                  minY: 0,
                  maxY: 100,
                  gridData: FlGridData(show: false),
                  titlesData: FlTitlesData(
                    leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                    rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                    topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                    bottomTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                  ),
                  borderData: FlBorderData(
                    show: true,
                    border: const Border(
                      left: BorderSide(color: Colors.black, width: 2),
                      bottom: BorderSide(color: Colors.black, width: 2),
                    ),
                  ),
                  lineBarsData: [
                    LineChartBarData(
                      spots: GraphSpot,
                      isCurved: false,
                      color: Colors.green,
                      belowBarData: BarAreaData(
                        show: true,
                        color: Colors.green,
                    ))
              ]
            ))
          ),
           ], 
          )
          
        ],
      ),
    );
  }
}

class SliderPageItem1 extends StatefulWidget {
  const SliderPageItem1({super.key});

  @override
  State<SliderPageItem1> createState() => _SliderPageItem1State();
}

class _SliderPageItem1State extends State<SliderPageItem1> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}