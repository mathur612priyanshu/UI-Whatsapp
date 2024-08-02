import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:whatsapp_ui/screens/camera_screen.dart';

class CommunityScreen extends StatefulWidget {
  const CommunityScreen({super.key});

  @override
  State<CommunityScreen> createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
  String communityName = "GDSC IIMT Community";
  String lastmsg = "Group 'Cloud study jam IIMT' was remov...";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Community',
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 28),
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
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                size: 28,
                color: Colors.black,
              ))
        ],
      ),
      body: Container(
        color: Color.fromARGB(255, 239, 239, 239),
        child: Column(
          children: [
            Material(
              elevation: 1,
              shadowColor: Colors.white,
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 205, 205, 205),
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          Icons.people_sharp,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      Text(
                        "New community",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Material(
              elevation: 1,
              child: Container(
                margin: EdgeInsets.only(top: 10),
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(15),
                          alignment: Alignment.topLeft,
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.black),
                        ),
                        Text(
                          communityName,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Divider(),
                    Container(
                      child: Row(
                        children: [
                          Flexible(
                            child: Container(
                              margin: EdgeInsets.only(
                                  top: 10, left: 20, right: 10, bottom: 10),
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.green),
                              child: Icon(Icons.speaker),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            child: Column(
                              children: [
                                Container(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "Announcements",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500),
                                    )),
                                Container(
                                    child: Text(
                                  lastmsg,
                                  style: TextStyle(fontSize: 16),
                                ))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                            margin: EdgeInsets.only(
                                right: 30, top: 30, left: 30, bottom: 20),
                            child: Icon(
                              Icons.navigate_next_outlined,
                              size: 25,
                              color: const Color.fromARGB(255, 105, 105, 105),
                            )),
                        Text(
                          "View all",
                          style: TextStyle(
                              fontSize: 18,
                              color: const Color.fromARGB(255, 108, 107, 107)),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
                child: Container(
              color: Colors.white,
            ))
          ],
        ),
      ),
    );
  }
}
