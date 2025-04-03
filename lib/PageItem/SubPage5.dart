import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:provider/provider.dart';
import '../Provider/UserProvider.dart';

class SubPageItem5 extends StatefulWidget {
  const SubPageItem5({super.key});

  @override
  State<SubPageItem5> createState() => _SubPageItem5State();
}

class _SubPageItem5State extends State<SubPageItem5> {



  @override
  Widget build(BuildContext context) {


    double  ScreenWidth = MediaQuery.of(context).size.width;
    double  ScreenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom -
        kToolbarHeight;
    double ImageHeight = ScreenHeight * 0.5;
    double GraphHeight = ScreenHeight * 0.4;

    List<double> GraphData = context.watch<UserProvider5>().MyData;
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
                  maxY: 1023,
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
                      isCurved: true,
                      color: Colors.orange,
                      belowBarData: BarAreaData(
                        show: false,
                        color: Colors.orange,
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

class SliderPageItem5 extends StatefulWidget {
  const SliderPageItem5({super.key});

  @override
  State<SliderPageItem5> createState() => _SliderPageItem5State();
}

class _SliderPageItem5State extends State<SliderPageItem5> {
  @override
  Widget build(BuildContext context) {

    double ScreenWidth = MediaQuery.of(context).size.width;
    double ScreenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom -
        kToolbarHeight;
    double SliderSpace = ScreenHeight * 0.05;
    double TextWidth = ScreenWidth * 0.1;

    return Scaffold(
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: TextWidth,
                    child: Text("0",style: TextStyle(fontSize: 20),),
                  ),
                  SizedBox(
                    width: ScreenWidth * 0.8,
                    child: Slider(
                      value: context.watch<UserProvider5>().MyData[0], 
                      min: 0,
                      max: 1023,
                      onChanged: (value) {
                        setState(() {
                          context.read<UserProvider5>().ChangeData(NewData: value, Index: 0);
                        });
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: SliderSpace,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: TextWidth,
                    child: Text("1",style: TextStyle(fontSize: 20),),
                  ),
                  SizedBox(
                    width: ScreenWidth * 0.8,
                    child: Slider(
                      value: context.watch<UserProvider5>().MyData[1], 
                      min: 0,
                      max: 1023,
                      onChanged: (value) {
                        setState(() {
                          context.read<UserProvider5>().ChangeData(NewData: value, Index: 1);
                        });
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: SliderSpace,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: TextWidth,
                    child: Text("2",style: TextStyle(fontSize: 20),),
                  ),
                  SizedBox(
                    width: ScreenWidth * 0.8,
                    child: Slider(
                      value: context.watch<UserProvider5>().MyData[2], 
                      min: 0,
                      max: 1023,
                      onChanged: (value) {
                        setState(() {
                          context.read<UserProvider5>().ChangeData(NewData: value, Index: 2);
                        });
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: SliderSpace,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: TextWidth,
                    child: Text("3",style: TextStyle(fontSize: 20),),
                  ),
                  SizedBox(
                    width: ScreenWidth * 0.8,
                    child: Slider(
                      value: context.watch<UserProvider5>().MyData[3], 
                      min: 0,
                      max: 1023,
                      onChanged: (value) {
                        setState(() {
                          context.read<UserProvider5>().ChangeData(NewData: value, Index: 3);
                        });
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: SliderSpace,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: TextWidth,
                    child: Text("4",style: TextStyle(fontSize: 20),),
                  ),
                  SizedBox(
                    width: ScreenWidth * 0.8,
                    child: Slider(
                      value: context.watch<UserProvider5>().MyData[4], 
                      min: 0,
                      max: 1023,
                      onChanged: (value) {
                        setState(() {
                          context.read<UserProvider5>().ChangeData(NewData: value, Index: 4);
                        });
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: SliderSpace,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: TextWidth,
                    child: Text("5",style: TextStyle(fontSize: 20),),
                  ),
                  SizedBox(
                    width: ScreenWidth * 0.8,
                    child: Slider(
                      value: context.watch<UserProvider5>().MyData[5], 
                      min: 0,
                      max: 1023,
                      onChanged: (value) {
                        setState(() {
                          context.read<UserProvider5>().ChangeData(NewData: value, Index: 5);
                        });
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: SliderSpace,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: TextWidth,
                    child: Text("6",style: TextStyle(fontSize: 20),),
                  ),
                  SizedBox(
                    width: ScreenWidth * 0.8,
                    child: Slider(
                      value: context.watch<UserProvider5>().MyData[6], 
                      min: 0,
                      max: 1023,
                      onChanged: (value) {
                        setState(() {
                          context.read<UserProvider5>().ChangeData(NewData: value, Index: 6);
                        });
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: SliderSpace,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: TextWidth,
                    child: Text("7",style: TextStyle(fontSize: 20),),
                  ),
                  SizedBox(
                    width: ScreenWidth * 0.8,
                    child: Slider(
                      value: context.watch<UserProvider5>().MyData[7], 
                      min: 0,
                      max: 1023,
                      onChanged: (value) {
                        setState(() {
                          context.read<UserProvider5>().ChangeData(NewData: value, Index: 7);
                        });
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: SliderSpace,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: TextWidth,
                    child: Text("8",style: TextStyle(fontSize: 20),),
                  ),
                  SizedBox(
                    width: ScreenWidth * 0.8,
                    child: Slider(
                      value: context.watch<UserProvider5>().MyData[8], 
                      min: 0,
                      max: 1023,
                      onChanged: (value) {
                        setState(() {
                          context.read<UserProvider5>().ChangeData(NewData: value, Index: 8);
                        });
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: SliderSpace,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: TextWidth,
                    child: Text("9",style: TextStyle(fontSize: 20),),
                  ),
                  SizedBox(
                    width: ScreenWidth * 0.8,
                    child: Slider(
                      value: context.watch<UserProvider5>().MyData[9], 
                      min: 0,
                      max: 1023,
                      onChanged: (value) {
                        setState(() {
                          context.read<UserProvider5>().ChangeData(NewData: value, Index: 9);
                        });
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: SliderSpace,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: TextWidth,
                    child: Text("10",style: TextStyle(fontSize: 20),),
                  ),
                  SizedBox(
                    width: ScreenWidth * 0.8,
                    child: Slider(
                      value: context.watch<UserProvider5>().MyData[10], 
                      min: 0,
                      max: 1023,
                      onChanged: (value) {
                        setState(() {
                          context.read<UserProvider5>().ChangeData(NewData: value, Index: 10);
                        });
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: SliderSpace,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: TextWidth,
                    child: Text("11",style: TextStyle(fontSize: 20),),
                  ),
                  SizedBox(
                    width: ScreenWidth * 0.8,
                    child: Slider(
                      value: context.watch<UserProvider5>().MyData[11], 
                      min: 0,
                      max: 1023,
                      onChanged: (value) {
                        setState(() {
                          context.read<UserProvider5>().ChangeData(NewData: value, Index: 11);
                        });
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: SliderSpace,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: TextWidth,
                    child: Text("12",style: TextStyle(fontSize: 20),),
                  ),
                  SizedBox(
                    width: ScreenWidth * 0.8,
                    child: Slider(
                      value: context.watch<UserProvider5>().MyData[12], 
                      min: 0,
                      max: 1023,
                      onChanged: (value) {
                        setState(() {
                          context.read<UserProvider5>().ChangeData(NewData: value, Index: 12);
                        });
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: SliderSpace,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: TextWidth,
                    child: Text("13",style: TextStyle(fontSize: 20),),
                  ),
                  SizedBox(
                    width: ScreenWidth * 0.8,
                    child: Slider(
                      value: context.watch<UserProvider5>().MyData[13], 
                      min: 0,
                      max: 1023,
                      onChanged: (value) {
                        setState(() {
                          context.read<UserProvider5>().ChangeData(NewData: value, Index: 13);
                        });
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: SliderSpace,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: TextWidth,
                    child: Text("14",style: TextStyle(fontSize: 20),),
                  ),
                  SizedBox(
                    width: ScreenWidth * 0.8,
                    child: Slider(
                      value: context.watch<UserProvider5>().MyData[14], 
                      min: 0,
                      max: 1023,
                      onChanged: (value) {
                        setState(() {
                          context.read<UserProvider5>().ChangeData(NewData: value, Index: 14);
                        });
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: SliderSpace,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: TextWidth,
                    child: Text("15",style: TextStyle(fontSize: 20),),
                  ),
                  SizedBox(
                    width: ScreenWidth * 0.8,
                    child: Slider(
                      value: context.watch<UserProvider5>().MyData[15], 
                      min: 0,
                      max: 1023,
                      onChanged: (value) {
                        setState(() {
                          context.read<UserProvider5>().ChangeData(NewData: value, Index: 15);
                        });
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ),
    );
  }
}