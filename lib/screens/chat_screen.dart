import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:whatsapp_ui/screens/camera_screen.dart';
import 'package:whatsapp_ui/screens/inchat_screen.dart';
import 'package:whatsapp_ui/screens/search_screen.dart';
import 'package:whatsapp_ui/screens/videocallScreen.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  String lastChat = "Last chat with u only";
  String lastTime = "time";
  var arrNames = [
    "Bro",
    "Papa ji",
    "Chacha ji",
    "John",
    "Antonio",
    "Ramdayal",
    "Satendra",
    "rampal",
    "chandu",
    "sachin",
    "sachin",
  ];
  var menu = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'WhatsApp',
            style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 60, 149, 63),
                fontSize: 28),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.qr_code_outlined,
                  size: 28,
                  color: Colors.black,
                )),
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (Context) => CameraScreen()));
              },
              icon: Icon(
                Icons.camera_alt_outlined,
                color: Colors.black,
                size: 28,
              ),
            ),
            IconButton(
                onPressed: () {
                  setState(() {
                    menu = true;
                  });
                },
                icon: Hero(
                  tag: 'men',
                  child: Icon(
                    Icons.more_vert,
                    size: 28,
                    color: Colors.black,
                  ),
                ))
          ],
        ),
        body: Stack(children: [
          InkWell(
            child: Container(
              child: Column(children: [
                Container(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SearchScreen(),
                          ),
                        );
                      },
                      child: Container(
                        height: 45,
                        width: MediaQuery.of(context).size.width,
                        // color: Colors.black,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color.fromARGB(255, 235, 235, 235)),
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 15, right: 10),
                              child: Icon(
                                Icons.search,
                                size: 28,
                                color: Colors.black54,
                              ),
                            ),
                            Text(
                              "Search...",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black54),
                            ),
                          ],
                        ),
                      ),
                    )),
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return SizedBox(
                        height: 90,
                        child: InkWell(
                          child: ListTile(
                            leading: ClipOval(
                              child: Container(
                                color: Colors.greenAccent,
                                height: 50,
                                width: 50,
                                child: Icon(
                                  Icons.person,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            title: Text(
                              '${arrNames[index]}',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            subtitle: Text(
                              lastChat,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromARGB(179, 0, 0, 0)),
                            ),
                            trailing: Text(
                              lastTime,
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromARGB(179, 0, 0, 0)),
                            ),
                            iconColor: Colors.black,
                          ),
                          onTap: () {
                            if (menu == true)
                              setState(() {
                                menu = false;
                              });
                            else {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => InChatScreen()));
                            }
                          },
                        ),
                      );
                    },
                    itemCount: arrNames.length,
                  ),
                ),
              ]),
            ),
            onTap: () {
              setState(() {
                menu = false;
              });
            },
          ),
          if (menu)
            Positioned(
                left: 200,
                child: Hero(
                  tag: 'men',
                  child: Material(
                    borderRadius: new BorderRadius.circular(15),
                    elevation: 2,
                    child: Container(
                      padding: EdgeInsets.all(15),
                      height: 300,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white),
                      child: ListView(
                        children: [
                          InkWell(
                            child: Text(
                              "New Group",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(height: 20),
                          InkWell(
                            child: Text(
                              "New broadcast",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(height: 20),
                          InkWell(
                            child: Text(
                              "Linked devices",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(height: 20),
                          InkWell(
                            child: Text(
                              "Starred messages",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(height: 20),
                          InkWell(
                            child: Text(
                              "Payments",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(height: 20),
                          InkWell(
                            child: Text(
                              "Settings",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ))
        ]));
  }
}
