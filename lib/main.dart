import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import 'package:petapp/screens/home_screen.dart';
import 'package:petapp/screens/search_screen.dart';
import 'package:petapp/themes/constant.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Pet App",
      theme: ThemeData(
          textTheme: GoogleFonts.latoTextTheme(Theme.of(context).textTheme),
          scaffoldBackgroundColor: appBackground),
      home: RootScreen(),
    );
  }
}

class RootScreen extends StatefulWidget {
  @override
  _RootScreenState createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  List<BottomNavigationBarItem> itemsTab = [
    BottomNavigationBarItem(
        icon: Icon(LineIcons.home),
        title: Padding(
          padding: EdgeInsets.only(top: 12),
          child: Text("Home",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
        )),
    BottomNavigationBarItem(
        icon: Icon(LineIcons.search),
        title: Padding(
          padding: EdgeInsets.only(top: 12),
          child: Text("Search",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
        )),
    BottomNavigationBarItem(
        icon: Icon(LineIcons.book),
        title: Padding(
          padding: EdgeInsets.only(top: 12),
          child: Text("Articles",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
        )),
    BottomNavigationBarItem(
        icon: Icon(LineIcons.bell),
        title: Padding(
          padding: EdgeInsets.only(top: 12),
          child: Text("Notification",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
        )),
    BottomNavigationBarItem(
        icon: Icon(Icons.account_circle),
        title: Padding(
          padding: EdgeInsets.only(top: 12),
          child: Text("Profile",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
        )),
  ];
  int selectedIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
    SearchScreen(),
    Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text("Article Screen",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold))
      ]),
    ),
    Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text("Notification Screen",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold))
      ]),
    ),
    Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text("Profile Screen",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold))
      ]),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // body: HomeScreen(),
        bottomNavigationBar: SizedBox(
          height: 70,
          child: BottomNavigationBar(
              items: itemsTab,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: primary,
              currentIndex: selectedIndex,
              onTap: (idx) {
                setState(() {
                  selectedIndex = idx;
                });
              }),
        ),
        body: screens.elementAt(selectedIndex));
  }
}
