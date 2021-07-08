import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:housy_task/status_list.dart';

import 'box_cards.dart';

class MainScreen extends StatefulWidget {
  const MainScreen(this.zoomDrawerController);
  final zoomDrawerController;

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int percent = 20;
  bool search = false;
  Icon cusIcon = Icon(Icons.search);
  Widget cusSearchBar = Text(" ");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2E6F0),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            decoration: BoxDecoration(
              //color: Colors.white,
              color: Colors.teal,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
            ),
            padding: EdgeInsets.only(top: 60.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () => widget.zoomDrawerController.toggle(),
                        child: Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                      ),
                      Expanded(
                        child: cusSearchBar,
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            if (this.cusIcon.icon == Icons.search) {
                              this.cusIcon = Icon(Icons.cancel);
                              this.cusSearchBar = TextField(
                                autofocus: true,
                                decoration: InputDecoration(
                                  fillColor: Colors.yellow,
                                  hintStyle: TextStyle(
                                    fontSize: 15,
                                    //fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 10.0, horizontal: 20.0),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15.0),
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 0.7),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15.0)),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 1.0),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15.0)),
                                  ),
                                ),
                                cursorColor: Colors.white,
                              );
                            } else {
                              this.cusIcon = Icon(Icons.search);
                              this.cusSearchBar = SizedBox(width: 0.0);
                            }
                          });
                        },
                        icon: cusIcon,
                        color: Colors.white,
                        iconSize: 30.0,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // SpinKitCircle(
                      //   child: CircleAvatar(
                      //     backgroundImage: AssetImage('images/download.jpg'),
                      //     radius: 40,
                      //   ),
                      // ),
                      AvatarGlow(
                        endRadius: 60.0,
                        child: Material(
                          // Replace this child with your own
                          elevation: 8.0,
                          shape: CircleBorder(),
                          child: CircleAvatar(
                            backgroundImage: AssetImage('images/download.jpg'),
                            radius: 40.0,
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          AnimatedTextKit(
                            animatedTexts: [
                              TypewriterAnimatedText(
                                'Abhishek Dinesh',
                                textStyle: const TextStyle(
                                  fontSize: 28.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                                speed: const Duration(milliseconds: 200),
                              ),
                            ],
                            totalRepeatCount: 2,
                            pause: const Duration(milliseconds: 10),
                            displayFullTextOnTap: true,
                            stopPauseOnTap: true,
                          ),
                          Text(
                            "App Developer",
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                //color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 0),
                child: ListView(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "My Tasks",
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        CircleAvatar(
                          radius: 30.0,
                          backgroundColor: Colors.teal,
                          child: IconButton(
                            onPressed: () {
                              showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2001),
                                lastDate: DateTime(3000),
                              );
                            },
                            icon: Icon(Icons.calendar_today),
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Status(
                      status: "To Do",
                      subtitle: "5 tasks now. 1 started",
                      colour: Colors.redAccent,
                      icons: Icon(
                        Icons.timer,
                        color: Colors.white,
                      ),
                    ),
                    Status(
                      status: 'In Progress',
                      subtitle: '1 tasks now. 1 Started',
                      colour: Colors.yellow.shade600,
                      iconData: IconButton(
                        //iconSize: 20.0,
                        onPressed: () {},
                        icon: Icon(
                          Icons.timelapse_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Status(
                      status: "Done",
                      subtitle: "18 tasks now. 3 started",
                      colour: Colors.green,
                      icons: Icon(
                        Icons.done_rounded,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Text(
                      "Active Projects",
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        BoxCards(
                          percent: 25,
                          title: "Medical App",
                          progress: "9 hours progress",
                          colour: Colors.teal,
                        ),
                        BoxCards(
                          percent: 60,
                          title: "Making History notes",
                          progress: "20 hours progress",
                          colour: Color(0xFF37E856).withOpacity(0.8),
                        ),
                      ],
                    ),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        BoxCards(
                          percent: 50,
                          title: "Study Physics",
                          progress: "15 hours progress",
                          colour: Color(0xFFF1C085),
                        ),
                        BoxCards(
                          percent: 47,
                          title: "Not to Game",
                          progress: "20 hours progress",
                          colour: Color(0xFFCF48C2),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
