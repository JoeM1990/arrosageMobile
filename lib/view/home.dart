import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeState();
  }
  
}
class HomeState extends State<Home>{


  List<Widget> _widgetOptions = <Widget>[
    Commande(),
    Historique(),
    Setting()
  ];


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(105, 108, 255,10),
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[300]!,
              gap: 2,
              activeColor: Colors.black,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: Duration(milliseconds: 500),
              tabBackgroundColor: Colors.white,
              color: Colors.black,
              tabs: [
                GButton(
                  icon: LineIcons.qrcode,
                  text: 'Commande',
                ),
                GButton(
                  icon: LineIcons.list,
                  text: 'Historique',
                ),
                GButton(
                  icon: LineIcons.search,
                  text: 'Parametre',
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