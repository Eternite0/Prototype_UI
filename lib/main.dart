import 'package:flutter/material.dart';

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
        onTap: () {},        
      ),
      ListTile(
        leading: const Icon(Icons.auto_awesome_motion_outlined),
        title: const Text("Subpage : 1"),
        onTap: () {},        
      ),
      ListTile(
        leading: const Icon(Icons.auto_awesome_motion_outlined),
        title: const Text("Subpage : 2"),
        onTap: () {},        
      ),
      ListTile(
        leading: const Icon(Icons.auto_awesome_motion_outlined),
        title: const Text("Subpage : 3"),
        onTap: () {},        
      ),
      ListTile(
        leading: const Icon(Icons.auto_awesome_motion_outlined),
        title: const Text("Subpage : 4"),
        onTap: () {},        
      ),
      ListTile(
        leading: const Icon(Icons.auto_awesome_motion_outlined),
        title: const Text("Subpage : 5"),
        onTap: () {},        
      ),
    ],
  );
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
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
    ),
  ));
}

