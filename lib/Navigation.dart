import 'package:flutter/material.dart';
import 'package:lightapp/PageItem/SubPage1.dart';
import 'PageItem/HomePage.dart';
import 'PageItem/SubPage1.dart';

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

  Widget buildMenuItems(BuildContext context) => Column(
    children: [
      ListTile(
        leading: const Icon(Icons.home_outlined),
        title: const Text("Main"),
        onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => const HomePage())),        
      ),
      ListTile(
        leading: const Icon(Icons.auto_awesome_motion_outlined),
        title: const Text("SubPage : 1"),
        onTap: () {
          Navigator.pop(context);  
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => const SubPage1()
          ));
        }        
      ),
      ListTile(
        leading: const Icon(Icons.auto_awesome_motion_outlined),
        title: const Text("SubPage : 2"),
        onTap: () {
          Navigator.pop(context);    
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => const SubPage2()
          ));
        },        
      ),
      ListTile(
        leading: const Icon(Icons.auto_awesome_motion_outlined),
        title: const Text("SubPage : 3"),
        onTap: () {
          Navigator.pop(context);    
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => const SubPage3()
          ));
        },        
      ),
      ListTile(
        leading: const Icon(Icons.auto_awesome_motion_outlined),
        title: const Text("SubPage : 4"),
        onTap: () {
          Navigator.pop(context);    
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => const SubPage4()
          ));
        },        
      ),
      ListTile(
        leading: const Icon(Icons.auto_awesome_motion_outlined),
        title: const Text("SubPage : 5"),
        onTap: () {
          Navigator.pop(context);    
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => const SubPage5()
          ));
        },        
      ),
    ],
  );
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: const Text("Main",
          style: TextStyle(
            fontSize: 25,
            color: Colors.white
          ),
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
        title: const Text("SubPage : 1",
          style: TextStyle(
            fontSize: 25,
            color: Colors.black
          ),
        ),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      drawer: const NavigationDrawer(),
      body: const SubPageItem1(),
    );
}

class SubPage2 extends StatelessWidget {
  const SubPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: const Text("SubPage : 2",
          style: TextStyle(
            fontSize: 25,
            color: Colors.black
          ),
        ),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      drawer: const NavigationDrawer(),
    );
}

class SubPage3 extends StatelessWidget {
  const SubPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: const Text("SubPage : 3",
          style: TextStyle(
            fontSize: 25,
            color: Colors.black
          ),
        ),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      drawer: const NavigationDrawer(),
    );
}

class SubPage4 extends StatelessWidget {
  const SubPage4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: const Text("SubPage : 4",
          style: TextStyle(
            fontSize: 25,
            color: Colors.black
          ),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      drawer: const NavigationDrawer(),
    );
}

class SubPage5 extends StatelessWidget {
  const SubPage5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: const Text("SubPage : 5",
          style: TextStyle(
            fontSize: 25,
            color: Colors.black
          ),
        ),
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
      ),
      drawer: const NavigationDrawer(),
    );
}