import 'package:flutter/material.dart';
import 'PageItem/HomePage.dart';
import 'PageItem/SubPage1.dart';
import 'PageItem/SubPage2.dart';
import 'PageItem/SubPage3.dart';
import 'PageItem/SubPage4.dart';
import 'PageItem/SubPage5.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildHeader(context),
              buildMenuItems(context),
            ],
          ),
        ),
      );

  Widget buildHeader(BuildContext context) => Container(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),
      );

  Widget buildMenuItems(BuildContext context) => Container(
      padding: const EdgeInsets.all(24),
      child: Wrap(
        children: [
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text("Main"),
            onTap: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const HomePage())),
          ),
          const Divider(color: Colors.black54),
          ListTile(
              leading: const Icon(Icons.auto_awesome_motion_outlined),
              title: const Text("SubPage : 1"),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const SubPage1()));
              }),
          ListTile(
              leading: const Icon(Icons.display_settings),
              title: const Text("Slider : 1"),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const SliderPage1()));
              }),
          const Divider(color: Colors.black54),
          ListTile(
            leading: const Icon(Icons.auto_awesome_motion_outlined),
            title: const Text("SubPage : 2"),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const SubPage2()));
            },
          ),
          ListTile(
              leading: const Icon(Icons.display_settings),
              title: const Text("Slider : 2"),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const SliderPage2()));
              }),
          const Divider(color: Colors.black54),
          ListTile(
            leading: const Icon(Icons.auto_awesome_motion_outlined),
            title: const Text("SubPage : 3"),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const SubPage3()));
            },
          ),
          ListTile(
              leading: const Icon(Icons.display_settings),
              title: const Text("Slider : 3"),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const SliderPage3()));
              }),
          const Divider(color: Colors.black54),
          ListTile(
            leading: const Icon(Icons.auto_awesome_motion_outlined),
            title: const Text("SubPage : 4"),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const SubPage4()));
            },
          ),
          ListTile(
              leading: const Icon(Icons.display_settings),
              title: const Text("Slider : 4"),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const SliderPage4()));
              }),
          const Divider(color: Colors.black54),
          ListTile(
            leading: const Icon(Icons.auto_awesome_motion_outlined),
            title: const Text("SubPage : 5"),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const SubPage5()));
            },
          ),
          ListTile(
              leading: const Icon(Icons.display_settings),
              title: const Text("Slider : 5"),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const SliderPage5()));
              }),
        ],
      ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          title: const Text(
            "Main",
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        drawer: const NavigationDrawer(),
        body: const HomeItem(),
      );
}

class SubPage1 extends StatelessWidget {
  const SubPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          title: const Text(
            "SubPage : 1",
            style: TextStyle(fontSize: 25, color: Colors.black),
          ),
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
        drawer: const NavigationDrawer(),
        body: const SubPageItem1(),
      );
}

class SliderPage1 extends StatelessWidget {
  const SliderPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          title: const Text(
            "Slider : 1",
            style: TextStyle(fontSize: 25, color: Colors.black),
          ),
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
        drawer: const NavigationDrawer(),
        body: const SliderPageItem1(),
      );
}

class SubPage2 extends StatelessWidget {
  const SubPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          title: const Text(
            "SubPage : 2",
            style: TextStyle(fontSize: 25, color: Colors.black),
          ),
          backgroundColor: Colors.red,
          centerTitle: true,
        ),
        drawer: const NavigationDrawer(),
        body: const SubPageItem2(),
      );
}

class SliderPage2 extends StatelessWidget {
  const SliderPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          title: const Text(
            "Slider : 2",
            style: TextStyle(fontSize: 25, color: Colors.black),
          ),
          backgroundColor: Colors.red,
          centerTitle: true,
        ),
        drawer: const NavigationDrawer(),
        body: const SliderPageItem2(),
      );
}

class SubPage3 extends StatelessWidget {
  const SubPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          title: const Text(
            "SubPage : 3",
            style: TextStyle(fontSize: 25, color: Colors.black),
          ),
          backgroundColor: Colors.purple,
          centerTitle: true,
        ),
        drawer: const NavigationDrawer(),
        body: const SubPageItem3(),
      );
}

class SliderPage3 extends StatelessWidget {
  const SliderPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          title: const Text(
            "Slider : 3",
            style: TextStyle(fontSize: 25, color: Colors.black),
          ),
          backgroundColor: Colors.purple,
          centerTitle: true,
        ),
        drawer: const NavigationDrawer(),
        body: const SliderPageItem3(),
      );
}

class SubPage4 extends StatelessWidget {
  const SubPage4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          title: const Text(
            "SubPage : 4",
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        drawer: const NavigationDrawer(),
        body: const SubPageItem4(),
      );
}

class SliderPage4 extends StatelessWidget {
  const SliderPage4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          title: const Text(
            "Slider : 4",
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        drawer: const NavigationDrawer(),
        body: const SliderPageItem4(),
      );
}

class SubPage5 extends StatelessWidget {
  const SubPage5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          title: const Text(
            "SubPage : 5",
            style: TextStyle(fontSize: 25, color: Colors.black),
          ),
          backgroundColor: Colors.orange,
          centerTitle: true,
        ),
        drawer: const NavigationDrawer(),
        body: const SubPageItem5(),
      );
}

class SliderPage5 extends StatelessWidget {
  const SliderPage5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          title: const Text(
            "Slider : 5",
            style: TextStyle(fontSize: 25, color: Colors.black),
          ),
          backgroundColor: Colors.orange,
          centerTitle: true,
        ),
        drawer: const NavigationDrawer(),
        body: SliderPageItem5(),
      );
}