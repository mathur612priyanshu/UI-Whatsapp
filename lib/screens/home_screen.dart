import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screens/calls_screen.dart';
import 'package:whatsapp_ui/screens/chat_screen.dart';
import 'package:whatsapp_ui/screens/community_screen.dart';
import 'package:whatsapp_ui/screens/updates_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int myIndex = 0;
  final List<Widget> _widgetOptions = [
    ChatScreen(),
    UpdateScreen(),
    CommunityScreen(),
    CallsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[myIndex],
      bottomNavigationBar: SizedBox(
        height: 100,
        child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.green,
            showUnselectedLabels: true,
            iconSize: 30,
            onTap: (index) {
              setState(() {
                myIndex = index;
              });
            },
            currentIndex: myIndex,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.chat_outlined,
                  ),
                  label: "Chats",
                  activeIcon: Icon(Icons.chat)),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.update,
                  ),
                  label: "Updates",
                  activeIcon: Icon(Icons.circle)),
              BottomNavigationBarItem(
                  icon: Icon(Icons.people_outline),
                  label: "Communities",
                  activeIcon: Icon(Icons.people_rounded)),
              BottomNavigationBarItem(
                  icon: Icon(Icons.call_outlined),
                  label: "Calls",
                  activeIcon: Icon(Icons.call_rounded)),
            ]),
      ),
    );
  }
}
