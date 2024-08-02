import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screens/videocallScreen.dart';
import 'package:whatsapp_ui/screens/camera_screen.dart';

class CallsScreen extends StatefulWidget {
  const CallsScreen({super.key});

  @override
  State<CallsScreen> createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
  int s = 0;
  String callTime = "Date, Time";
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: s == 0
          ? AppBar(
              title: const Text(
                'Calls',
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (Context) => CameraScreen()));
                  },
                  icon: Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.black,
                    size: 28,
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 28,
                  ),
                  onPressed: () {
                    setState(() {
                      s = 1;
                    });
                  },
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_vert,
                      size: 28,
                      color: Colors.black,
                    ))
              ],
            )
          : AppBar(
              title: InkWell(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color.fromARGB(196, 227, 227, 227)),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            setState(() {
                              s = 0;
                            });
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                          ))
                    ],
                  ),
                ),
              ),
            ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.all(15),
            child: Text(
              "Favourite",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Row(
            children: [
              Container(
                margin:
                    EdgeInsets.only(left: 15, right: 20, bottom: 10, top: 3),
                child: CircleAvatar(
                  radius: 22,
                  backgroundColor: Colors.green,
                  child: Icon(
                    Icons.favorite,
                    size: 22,
                    color: Colors.white,
                  ),
                ),
              ),
              Text(
                "Add to Favorites",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
              )
            ],
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.all(15),
            child: Text(
              "Recent",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return InkWell(
                    child: SizedBox(
                      height: 70,
                      child: ListTile(
                        leading: Icon(
                          Icons.person,
                          color: Colors.black,
                        ),
                        title: Text(
                          '${arrNames[index]}',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        subtitle: Row(
                          children: [
                            Icon(
                              Icons.call_made,
                              color: Colors.green,
                              size: 20,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              callTime,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromARGB(179, 0, 0, 0)),
                            ),
                          ],
                        ),
                        trailing: IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => VideoCallScreen(),
                                  ));
                            },
                            icon: Icon(
                              Icons.video_camera_back_outlined,
                              size: 30,
                            )),
                        iconColor: Colors.black,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VideoCallScreen(),
                          ));
                    });
              },
              itemCount: arrNames.length,
            ),
          ),
        ],
      ),
    );
  }
}
