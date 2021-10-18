import 'package:flutter/material.dart';
import 'package:trapay_app/src/screen/chatting_page.dart';
import 'package:trapay_app/src/screen/home_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int bottomTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: bottomTabIndex,
        children: [
          HomePage(),
          Container(
            child: Center(
              child: Text('Services'),
            ),
          ),
          ChattingPage(),
          Container(
            child: Center(
              child: Text('Groups'),
            ),
          ),
          Container(
            child: Center(
              child: Text('More'),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: bottomTabIndex,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: TextStyle(fontSize: 10),
        selectedFontSize: 10,
        unselectedLabelStyle: TextStyle(fontSize: 10),
        onTap: (idx) {
          setState(() {
            bottomTabIndex = idx;
          });
        },
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.apps),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.layers),
            label: 'Services',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Chatting',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervisor_account),
            label: 'Groups',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: 'More',
          )
        ],
      ),
    );
  }
}
