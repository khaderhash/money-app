import 'package:flutter/material.dart';

import '../compo/outsidecs.dart';
import '../constants.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});
  static String id = "homepage";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.yellow,
                ), //BoxDecoration
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.green),
                  accountName: Text(
                    "Abhishek Mishra",
                    style: TextStyle(fontSize: 18),
                  ),
                  accountEmail: Text("abhishekm977@gmail.com"),
                  currentAccountPictureSize: Size.square(50),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 165, 255, 137),
                    child: Text(
                      "A",
                      style: TextStyle(fontSize: 30.0, color: Colors.blue),
                    ), //Text
                  ), //circleAvatar
                ), //UserAccountDrawerHeader
              ), //DrawerHeader
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text(' My Profile '),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.book),
                title: const Text(' My Course '),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.workspace_premium),
                title: const Text(' Go Premium '),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.video_label),
                title: const Text(' Saved Videos '),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.edit),
                title: const Text(' Edit Profile '),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text('LogOut'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: SizedBox(
          width: width(context),
          height: hight(context),
          child: Stack(children: [
            SizedBox(
              width: width(context),
              height: hight(context) * .4,
              child: Image.asset(
                'assets/photo/color1.jpg',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: width(context),
              height: hight(context) * .4,
              child: Transform.rotate(
                angle: -.3,
                child: Image.asset(
                  'assets/photo/khaderlogo.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Positioned(
                top: hight(context) * .34,
                child: Container(
                  alignment: Alignment.center,
                  width: width(context),
                  child: RotatedBox(
                    quarterTurns: 2,
                    child: ClipPath(
                      clipper: OutSideCustomShape(),
                      child: Container(
                        width: width(context) * .5,
                        height: hight(context) * .06,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )),
            Positioned(
                bottom: 0,
                child: Container(
                  width: width(context),
                  height: hight(context) * .5,
                  color: Colors.white,
                  child: Column(children: [
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: width(context) * .13,
                        ),
                        Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: GestureDetector(child:Stack(
                                children: [
                                  Image.asset(
                                      'assets/photo/color1.jpg',width: 115,),

                                  Padding(
                                    padding: const EdgeInsets.all(30.0),
                                    child: Text("Expenses",style: TextStyle(fontSize: 16)),
                                  )
                                ],
                              ) ,)
                            )
                          ],
                        ),
                        SizedBox(
                          width: width(context) * .2,
                        ),
                        ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: GestureDetector(child:Stack(
                              children: [
                                Image.asset(
                                  'assets/photo/color1.jpg',width: 100,),

                                Padding(
                                  padding: const EdgeInsets.all(32.0),
                                  child: Text("sdafsaf"),
                                )
                              ],
                            ) ,)
                        )
                      ],
                    ),
                    SizedBox(
                      height: 55,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: width(context) * .1,
                        ),
                        Stack(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: GestureDetector(child:Stack(
                                  children: [
                                    Image.asset(
                                      'assets/photo/color1.jpg',width: 100,),

                                    Padding(
                                      padding: const EdgeInsets.all(32.0),
                                      child: Text("sdafsaf"),
                                    )
                                  ],
                                ) ,)
                            )
                          ],
                        ),
                        SizedBox(
                          width: width(context) * .2,
                        ),
                        ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: GestureDetector(child:Stack(
                              children: [
                                Image.asset(
                                  'assets/photo/color1.jpg',width: 100,),

                                Padding(
                                  padding: const EdgeInsets.all(32.0),
                                  child: Text("sdafsaf"),
                                )
                              ],
                            ) ,)
                        )
                      ],
                    )
                  ]),
                ))
          ]),
        ),
      ),
    );
  }
}
