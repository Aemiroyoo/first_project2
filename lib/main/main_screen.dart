import 'package:first_project/main/data/listmap_screen.dart';
import 'package:first_project/main/data/mainmodel_screen.dart';
import 'package:first_project/main/data/name_model.dart';
import 'package:first_project/main/grid/list_foto.dart';
import 'package:first_project/main/login/login_screen.dart';
import 'package:first_project/main/stack/stack_screen.dart';
import 'package:first_project/main/stack/widget/expanded.dart';
import 'package:first_project/views/drawer.dart';
import 'package:first_project/views/latihan2.dart';
import 'package:flutter/material.dart';
// import 'home/home_screen.dart';
// import 'business/business_screeen.dart';
// import 'List/list_screen.dart';
// import 'data/listname_screen.dart';
// import 'data/name_model.dart';
// import 'data/model_name.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key, required this.email, required this.password});
  final String email;
  final String password;

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        // child: DrawerScreen(title: 'drawer'),
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 64, 102, 2),
              ),
              accountName: Text('Sutiyo Yulianto'),
              accountEmail: Text('sutiyoyulianto2000@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://wallpapercave.com/wp/Cc9FIwm.jpg',
                ),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.home,
                size: 25,
                color: Color.fromARGB(255, 8, 7, 7),
              ),
              title: const Text('Homepage'),
              // selected: _selectedIndex == 0,
              // onTap: () {
              //   // Update the state of the app
              //   _onItemTapped(0);
              //   // Then close the drawer
              //   Navigator.pop(context);
              // },
            ),
            ListTile(
              leading: const Icon(
                Icons.browse_gallery_outlined,
                size: 25,
                color: Color.fromARGB(255, 8, 7, 7),
              ),
              title: const Text('Profile'),
              // selected: _selectedIndex == 1,
              // onTap: () {
              //   // Update the state of the app
              //   _onItemTapped(1);
              //   // Then close the drawer
              //   Navigator.pop(context);
              // },
            ),
            ListTile(
              leading: const Icon(
                Icons.browse_gallery,
                size: 25,
                color: Color.fromARGB(255, 8, 7, 7),
              ),
              title: const Text('Gallery'),
              // selected: _selectedIndex == 2,
              // onTap: () {
              //   // Update the state of the app
              //   _onItemTapped(2);
              //   // Then close the drawer
              //   Navigator.pop(context);
              // },
            ),
            ListTile(
              leading: const Icon(
                Icons.message,
                size: 25,
                color: Color.fromARGB(255, 8, 7, 7),
              ),
              title: const Text('Message'),
              // selected: _selectedIndex == 3,
              // onTap: () {
              //   // Update the state of the app
              //   _onItemTapped(3);
              //   // Then close the drawer
              //   Navigator.pop(context);
              // },
            ),
            ListTile(
              leading: const Icon(
                Icons.card_travel,
                size: 25,
                color: Color.fromARGB(255, 8, 7, 7),
              ),
              title: const Text('Cart'),
              // selected: _selectedIndex == 4,
              // onTap: () {
              //   // Update the state of the app
              //   _onItemTapped(4);
              //   // Then close the drawer
              //   Navigator.pop(context);
              // },
            ),
            ListTile(
              leading: const Icon(
                Icons.notifications,
                size: 25,
                color: Color.fromARGB(255, 8, 7, 7),
              ),
              title: const Text('Notifications'),
              // selected: _selectedIndex == 5,
              // onTap: () {
              //   // Update the state of the app
              //   _onItemTapped(5);
              //   // Then close the drawer
              //   Navigator.pop(context);
              // },
            ),
            ListTile(
              leading: const Icon(
                Icons.logout,
                size: 25,
                color: Color.fromARGB(255, 8, 7, 7),
              ),
              title: const Text('Logout'),

              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.amber,
        backgroundColor: const Color.fromARGB(255, 41, 4, 54),
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Badge(child: Icon(Icons.notifications_sharp)),
            label: 'Notifications',
          ),
          NavigationDestination(
            icon: Badge(label: Text('2'), child: Icon(Icons.messenger_sharp)),
            label: 'Messages',
          ),
        ],
      ),
      body:
          <Widget>[
            /// HomeScreen
            // const HomeScreen(),
            // const ListNameScreen(),
            ImageGridScreen(email: widget.email, password: widget.password),

            /// Notifications page
            // const BusinessScreeen(),
            // const ListmapScreen(),
            const StackScreen(),

            /// Messages page
            // const ListScreen(),
            // const Namemodel(),
            // SchoolListScreen(),
            ExpandedScreen(),
            // TextFieldScreen(),
            // const Namemodel(),
          ][currentPageIndex],
    );
  }
}
