import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';


import '../../constants/color_palette.dart';
import '../calculator1.dart';
import '../profile/profile.dart';
import '../transfer/transfer_page.dart';
import 'home_page.dart';

void main() => runApp(MaterialApp(
    builder: (context, child) {
      return Directionality(textDirection: TextDirection.ltr, child: child!);
    },
    title: 'GNav',
    theme: ThemeData(
      primaryColor: Colors.grey[800],
    ),
    home: Example()));

class Example extends StatefulWidget {
  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    CalculatorScreen(),
    TransferPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 0,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Colors.white,
              iconSize: 22,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: ColorPalette().TextColor,
              color: Colors.grey.shade400,
              tabs: [
                GButton(
                  icon: LineIcons.home,
                  text: 'Home',
                  textStyle: TextStyle(
                    color: Colors.white,
                    
                                    fontFamily: 'Quicksand',),
                ),
                GButton(
                  icon: LineIcons.calculator,
                  text: 'Calculator',
                    textStyle: TextStyle(
                          color: Colors.white,
                                    fontFamily: 'Quicksand',),
                ),
                GButton(
                  icon: Icons.line_axis_outlined,
                  text: 'Transfer  ',
                    textStyle: TextStyle(
                          color: Colors.white,
                                    fontFamily: 'Quicksand',),
                ),
                GButton(
                  icon: LineIcons.user,
                  text: 'Profile',
                    textStyle: TextStyle(
                          color: Colors.white,
                      fontSize: 12,
                                    fontFamily: 'Quicksand',),
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
