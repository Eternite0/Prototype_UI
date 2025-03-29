import 'package:flutter/material.dart';

class SubPageItem1 extends StatefulWidget {
  const SubPageItem1({super.key});

  @override
  State<SubPageItem1> createState() => _SubPageItem1State();
}

class _SubPageItem1State extends State<SubPageItem1> {

  double ScreenWidth = 0;
  double ScreenHeight = 0;
  double ImageHeight = 0;
  double GraphHeight = 0;

  @override
  Widget build(BuildContext context) {


    ScreenWidth = MediaQuery.of(context).size.width;
    ScreenHeight = MediaQuery.of(context).size.height -
      MediaQuery.of(context).padding.top -
      MediaQuery.of(context).padding.bottom -
      kToolbarHeight;
    ImageHeight = ScreenHeight * 0.4;
    GraphHeight = ScreenHeight * 0.5;

    return Scaffold(
      body: Column(
        children: [

          SizedBox(
            height: ImageHeight,
            child: Image.asset('images/Sample1.jpg', alignment: Alignment.topCenter),
          ),
          SizedBox(
            height: GraphHeight,
            child: Image.asset('images/Sample2.jpg'),
          ),
        ],
      ),
    );
  }
}