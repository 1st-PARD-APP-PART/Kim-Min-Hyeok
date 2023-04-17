import 'package:flutter/material.dart';
import 'theme.dart';
import 'home.dart';
import 'myCarrot.dart';


class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => NavigationState();
}

class NavigationState extends State<Navigation> {

  int _selectedIndex = 0;
  late BuildContext context;

  static const TextStyle optionStyle = TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold
  );
  
  final List<Widget> _widgetOptions = <Widget>[
    Home(),
    MyCarrot()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // 메인 위젯
  @override
  Widget build(context) {
    return Scaffold(
      body: 
      SafeArea(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,), label: '홈'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: '나의 당근'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped, 
      ),
    );
    
  }

  @override
  void initState() {
    //해당 클래스가 호출되었을떄
    super.initState();

  }

  @override
  void dispose() {
    super.dispose();
  }
    
}

