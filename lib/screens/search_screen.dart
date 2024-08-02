import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:whatsapp_ui/screens/chat_screen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.only(right: 15, left: 15),
                height: 50,
                decoration: BoxDecoration(
                    color: Color.fromARGB(136, 226, 226, 226),
                    borderRadius: BorderRadius.circular(100)),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          setState(() {
                            Navigator.pop(context);
                          });
                        },
                        icon: Icon(Icons.arrow_back)),
                    SizedBox(width: 10),
                    Expanded(
                        child: TextField(
                            decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search...',
                    )))
                  ],
                )),
          ],
        ),
      )),
    );
  }
}
