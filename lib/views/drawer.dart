import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key, required this.title});

  final String title;

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Index 0: Home', style: optionStyle),
    Text('Index 1: Profile', style: optionStyle),
    Text('Index 2: Gallery', style: optionStyle),
    Text('Index 3: Message', style: optionStyle),
    Text('Index 4: Cart', style: optionStyle),
    Text('Index 5: Notifications', style: optionStyle),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      body: Center(child: _widgetOptions[_selectedIndex]),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: const Color.fromARGB(255, 64, 102, 2)),
              accountName: Text('Sutiyo Yulianto'), accountEmail: Text('sutiyoyulianto2000@gmail.com'), currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage('https://wallpapercave.com/wp/Cc9FIwm.jpg'),),
            ),
            ListTile(
              leading: const Icon(
                Icons.home, 
                size: 25, 
                color: Color.fromARGB(255, 8, 7, 7), 
              ),
              title: const Text('Homepage'),
              selected: _selectedIndex == 0,
              onTap: () {
                // Update the state of the app
                _onItemTapped(0);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.backpack, 
                size: 25, 
                color: Color.fromARGB(255, 8, 7, 7), 
              ),
              title: const Text('Profile'),
              selected: _selectedIndex == 1,
              onTap: () {
                // Update the state of the app
                _onItemTapped(1);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.backpack, 
                size: 25, 
                color: Color.fromARGB(255, 8, 7, 7), 
              ),
              title: const Text('Gallery'),
              selected: _selectedIndex == 2,
              onTap: () {
                // Update the state of the app
                _onItemTapped(2);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.backpack, 
                size: 25, 
                color: Color.fromARGB(255, 8, 7, 7), 
              ),
              title: const Text('Message'),
              selected: _selectedIndex == 3,
              onTap: () {
                // Update the state of the app
                _onItemTapped(3);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.backpack, 
                size: 25, 
                color: Color.fromARGB(255, 8, 7, 7), 
              ),
              title: const Text('Cart'),
              selected: _selectedIndex == 4,
              onTap: () {
                // Update the state of the app
                _onItemTapped(4);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.backpack, 
                size: 25, 
                color: Color.fromARGB(255, 8, 7, 7), 
              ),
              title: const Text('Notifications'),
              selected: _selectedIndex == 5,
              onTap: () {
                // Update the state of the app
                _onItemTapped(5);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            
          ],
        ),
      ),
    );
  }
}