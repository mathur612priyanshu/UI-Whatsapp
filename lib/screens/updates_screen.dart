// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter/widgets.dart';
// import 'package:whatsapp_ui/screens/search_screen.dart';

// class UpdateScreen extends StatefulWidget {
//   const UpdateScreen({super.key});

//   @override
//   State<UpdateScreen> createState() => _UpdateScreenState();
// }

// class _UpdateScreenState extends State<UpdateScreen> {
//   int s = 0;
//   String firstChannelName = "Hirelnn- Opportunities & Refe...";
//   String firstChannelDesc = "The channel Hirelnn- Opportunities & Ref...";
//   var arrNames = [
//     "Bro",
//     "Papa ji",
//     "Chacha ji",
//     "John",
//     "Antonio",
//     "Ramdayal",
//     "Satendra",
//     "rampal",
//     "chandu",
//     "sachin",
//     "sachin",
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: s == 0
//           ? AppBar(
//               title: const Text(
//                 'Updates',
//                 style: TextStyle(fontWeight: FontWeight.w400, fontSize: 28),
//               ),
//               actions: [
//                 IconButton(
//                     onPressed: () {},
//                     icon: Icon(
//                       Icons.qr_code_outlined,
//                       size: 28,
//                       color: Colors.black,
//                     )),
//                 IconButton(
//                   onPressed: () {},
//                   icon: Icon(
//                     Icons.camera_alt_outlined,
//                     color: Colors.black,
//                     size: 28,
//                   ),
//                 ),
//                 IconButton(
//                   icon: Icon(Icons.search),
//                   onPressed: () {
//                     setState(() {
//                       s = 1;
//                     });
//                   },
//                 ),
//                 IconButton(
//                     onPressed: () {},
//                     icon: Icon(
//                       Icons.more_vert,
//                       size: 28,
//                       color: Colors.black,
//                     ))
//               ],
//             )
//           : AppBar(
//               title: InkWell(
//                 child: Container(
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(100),
//                       color: Color.fromARGB(196, 227, 227, 227)),
//                   child: Row(
//                     children: [
//                       IconButton(
//                           onPressed: () {
//                             setState(() {
//                               s = 0;
//                             });
//                           },
//                           icon: Icon(
//                             Icons.arrow_back,
//                             color: Colors.black,
//                           ))
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//       body: Padding(
//         padding: const EdgeInsets.all(14.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             SizedBox(
//               height: 15,
//             ),
//             Container(
//               alignment: Alignment.topLeft,
//               child: Text(
//                 "Status",
//                 style: TextStyle(fontWeight: FontWeight.w500, fontSize: 23),
//               ),
//             ),
//             Expanded(
//                 child: ListView.builder(
//               scrollDirection: Axis.horizontal,
//               itemBuilder: (context, index) {
//                 return Padding(
//                   padding: const EdgeInsets.all(7.0),
//                   child: Column(
//                     children: [
//                       Center(
//                         child: StatusCircle(
//                           imageUrl: 'https://via.placeholder.com/150',
//                           borderColor: Colors.green,
//                           borderWidth: 2.0,
//                         ),
//                       ),
//                       SizedBox(
//                         height: 7,
//                       ),
//                       Text(arrNames[index])
//                     ],
//                   ),
//                 );
//               },
//               itemCount: arrNames.length,
//             )),
//             // Divider(
//             //   color: const Color.fromARGB(255, 201, 201, 201),
//             //   thickness: 1,
//             // ),
//             // SizedBox(
//             //   height: 30,
//             // ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 Text(
//                   "Channels",
//                   style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
//                 ),
//                 Expanded(child: SizedBox()),
//                 Text(
//                   "Explore",
//                   style: TextStyle(
//                       fontSize: 17,
//                       color: Color.fromARGB(255, 34, 138, 37),
//                       fontWeight: FontWeight.w500),
//                 ),
//                 SizedBox(
//                   width: 10,
//                 ),
//                 Icon(
//                   Icons.arrow_forward_ios_outlined,
//                   size: 13,
//                 )
//               ],
//             ),
//             SizedBox(
//               height: 25,
//             ),
//             Row(
//               children: [
//                 CircleAvatar(
//                   radius: 28,
//                   backgroundColor: Colors.lightBlueAccent,
//                   child: Text(
//                     "Hinn",
//                     style: TextStyle(
//                         fontSize: 25,
//                         fontWeight: FontWeight.w600,
//                         color: Colors.purple),
//                   ),
//                 ),
//                 SizedBox(
//                   width: 6,
//                 ),
//                 Column(
//                   children: [
//                     Row(
//                       children: [
//                         Text(
//                           firstChannelName,
//                           style: TextStyle(
//                               fontSize: 17, fontWeight: FontWeight.bold),
//                         ),
//                         SizedBox(
//                           width: 8,
//                         ),
//                         Text("03/05/24")
//                       ],
//                     ),
//                     Text(
//                       firstChannelDesc,
//                       style: TextStyle(
//                           fontSize: 16,
//                           color: const Color.fromARGB(255, 125, 125, 125)),
//                     )
//                   ],
//                 )
//               ],
//             ),
//             SizedBox(
//               height: 25,
//             ),
//             Container(
//                 alignment: Alignment.topLeft,
//                 child: Text(
//                   "Find channels",
//                   style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
//                 )),
//             SizedBox(
//               height: 10,
//             ),
//             Expanded(
//                 child: ListView.builder(
//               scrollDirection: Axis.horizontal,
//               itemBuilder: (context, index) {
//                 return Container(
//                   padding: EdgeInsets.all(10),
//                   margin: EdgeInsets.only(right: 8),
//                   decoration: BoxDecoration(
//                       border: Border.all(color: Colors.grey, width: 1),
//                       borderRadius: BorderRadius.circular(20)),
//                   height: 300,
//                   width: 140,
//                   child: Center(
//                     child: Column(
//                       children: [
//                         CircleAvatar(
//                           backgroundColor: Colors.blueGrey,
//                           radius: 30,
//                         ),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text("hrk2611"),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         ElevatedButton(onPressed: () {}, child: Text("Follow"))
//                       ],
//                     ),
//                   ),
//                 );
//               },
//               itemCount: 20,
//             )),
//             SizedBox(
//               height: 18,
//             ),
//             ElevatedButton(onPressed: () {}, child: Text("Explore more"))
//           ],
//         ),
//       ),
//     );
//   }
// }

// class StatusCircle extends StatelessWidget {
//   final String imageUrl;
//   final Color borderColor;
//   final double borderWidth;

//   StatusCircle({
//     required this.imageUrl,
//     required this.borderColor,
//     required this.borderWidth,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(borderWidth),
//       decoration: BoxDecoration(
//         shape: BoxShape.circle,
//         border: Border.all(color: borderColor, width: borderWidth),
//       ),
//       child: CircleAvatar(
//         radius: 35.0 - borderWidth,
//         backgroundImage: NetworkImage(imageUrl),
//       ),
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:whatsapp_ui/screens/camera_screen.dart';
import 'package:whatsapp_ui/screens/search_screen.dart';

class UpdateScreen extends StatefulWidget {
  const UpdateScreen({super.key});

  @override
  State<UpdateScreen> createState() => _UpdateScreenState();
}

class _UpdateScreenState extends State<UpdateScreen> {
  int s = 0;
  String firstChannelName = "Hirelnn- Opportunities & Refe...";
  String firstChannelDesc = "The channel Hirelnn- Opportunities & Ref...";
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
  var channelNames = [
    "hrk2611",
    "ABP News",
    "WhatsApp",
    "Royal Challeng...",
    "CYBER CHATH...",
    "Tenajaiin",
    "Amala Shaji",
    "News - Dainik B...",
    "HK unfiltered",
    "Sun News"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: s == 0
          ? AppBar(
              title: const Text(
                'Updates',
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
      body: Padding(
        padding: const EdgeInsets.only(left: 14),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
              child: SizedBox(
                height: 15,
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "Status",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 23),
              ),
            ),
            Flexible(
              child: SizedBox(
                height: 20,
              ),
            ),
            Container(
              height: 105, // Set a fixed height for the status list

              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Center(
                          child: StatusCircle(
                            imageUrl: 'https://via.placeholder.com/150',
                            borderColor: Colors.green,
                            borderWidth: 2.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(arrNames[index])
                    ],
                  );
                },
                itemCount: arrNames.length,
              ),
            ),
            Divider(),
            Flexible(
              child: SizedBox(
                height: 20, // Reduced the gap here
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Channels",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
                ),
                Expanded(child: SizedBox()),
                Text(
                  "Explore",
                  style: TextStyle(
                      fontSize: 17,
                      color: Color.fromARGB(255, 34, 138, 37),
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 13,
                    color: const Color.fromARGB(255, 43, 112, 45),
                  ),
                )
              ],
            ),
            Flexible(
              child: SizedBox(
                height: 20, // Adjusted the gap here
              ),
            ),
            Container(
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 28,
                    backgroundColor: Colors.lightBlueAccent,
                    child: Text(
                      "Hinn",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          color: Colors.purple),
                    ),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            firstChannelName,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(),
                          Text("03/05/24")
                        ],
                      ),
                      Text(
                        firstChannelDesc,
                        style: TextStyle(
                            fontSize: 15,
                            color: const Color.fromARGB(255, 125, 125, 125)),
                      )
                    ],
                  )
                ],
              ),
            ),
            Flexible(
              child: SizedBox(
                height: 30, // Adjusted the gap here
              ),
            ),
            Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Find channels",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
                )),
            Flexible(
              child: SizedBox(
                height: 20,
              ),
            ),
            Container(
              height: 170, // Set a fixed height for the channels list
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(20)),
                    // height: 300,
                    width: 140,
                    child: Center(
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.blueGrey,
                            radius: 30,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            channelNames[index],
                            style: TextStyle(fontSize: 14),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color.fromARGB(
                                      255, 188, 255, 182)), // Background color
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Color.fromARGB(255, 12, 96, 15)),
                            ),
                            child: Text(
                              "Follow",
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                itemCount: channelNames.length,
              ),
            ),
            Flexible(
              child: SizedBox(
                height: 25,
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 72, 160, 75)), // Background color
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                ),
                child: Text("Explore More"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StatusCircle extends StatelessWidget {
  final String imageUrl;
  final Color borderColor;
  final double borderWidth;

  StatusCircle({
    required this.imageUrl,
    required this.borderColor,
    required this.borderWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(borderWidth),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: borderColor, width: borderWidth),
      ),
      child: CircleAvatar(
        radius: 35.0 - borderWidth,
        backgroundImage: NetworkImage(imageUrl),
      ),
    );
  }
}
