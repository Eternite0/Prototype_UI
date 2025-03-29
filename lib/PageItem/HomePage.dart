import 'package:flutter/material.dart';

class HomeItem extends StatefulWidget {
  const HomeItem({super.key});

  @override
  State<HomeItem> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomeItem> {
  double ScreenWidth = 0;
  double ScreenHeight = 0;
  double SliderWidth = 0;
  List<double> SliderValue = [0, 0, 0, 0, 0];

  @override
  Widget build(BuildContext context) {
    ScreenWidth = MediaQuery.of(context).size.width;
    ScreenHeight = MediaQuery.of(context).size.height;
    SliderWidth = ScreenWidth * 0.8;

    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: SliderWidth,
                  child: Slider(
                      value: SliderValue[0],
                      min: 0,
                      max: 1023,
                      onChanged: (value) {
                        setState(() {
                          SliderValue[0] = (value > 910) ? 1023 : value;
                        });
                      }),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: SliderWidth,
                  child: Slider(
                      value: SliderValue[1],
                      min: 0,
                      max: 1023,
                      onChanged: (value) {
                        setState(() {
                          SliderValue[1] = (value > 910) ? 1023 : value;
                        });
                      }),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: SliderWidth,
                  child: Slider(
                      value: SliderValue[2],
                      min: 0,
                      max: 1023,
                      onChanged: (value) {
                        setState(() {
                          SliderValue[2] = (value > 910) ? 1023 : value;
                        });
                      }),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: SliderWidth,
                  child: Slider(
                      value: SliderValue[3],
                      min: 0,
                      max: 1023,
                      onChanged: (value) {
                        setState(() {
                          SliderValue[3] = (value > 910) ? 1023 : value;
                        });
                      }),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: SliderWidth,
                  child: Slider(
                      value: SliderValue[4],
                      min: 0,
                      max: 1023,
                      onChanged: (value) {
                        setState(() {
                          SliderValue[4] = (value > 910) ? 1023 : value;
                        });
                      }),
                )
              ],
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Stack(
                children: <Widget>[
                  Positioned.fill(
                      child: Container(
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(colors: <Color>[
                      Color.fromARGB(255, 20, 18, 160),
                      Color.fromARGB(255, 33, 82, 243),
                      Colors.blue
                    ])),
                  )),
                  TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(15),
                      ),
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          backgroundColor: Colors.blue,
                          behavior: SnackBarBehavior.floating,
                          content: Row(
                            children: [
                              Icon(Icons.info_outline, color: Colors.white),
                              SizedBox(width: 20),
                              Text(
                                'You pressed button',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              )
                            ],
                          ),
                        ));
                      },
                      child: const Text(
                        'Button/Pressed',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ))
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FilledButton(
                    style: FilledButton.styleFrom(backgroundColor: Colors.blue),
                    onPressed: () {},
                    child: Text(
                      "Button",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    )),
                FilledButton(
                    style: FilledButton.styleFrom(backgroundColor: Colors.blue),
                    onPressed: () {},
                    child: Text(
                      "Change",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
