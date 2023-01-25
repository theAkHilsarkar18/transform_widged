import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => back(),
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.cyan,
            title: Icon(Icons.arrow_back),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Transform.rotate(
                  angle: pi / 4,
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.red,
                    ),
                    child: Stack(
                      children: [
                        Container(
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius:
                                BorderRadius.only(topLeft: Radius.circular(220)),
                            border: Border(
                              top: BorderSide(color: Colors.black, width: 2),
                              left: BorderSide(width: 2, color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Transform.rotate(
                  angle: pi / 4,
                  child: Transform.translate(
                    offset: Offset(10, 10),
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(100),
                        ),
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      back();
                    });
                  },
                  child: Text(
                    "Payment Done",
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void exitDialog()
  {
    showDialog(
      context: context,
      builder: (context) {
        return
        AlertDialog(
          title: Text("Sure to want exit ?",style: TextStyle(color: Colors.black,fontSize: 15),),
          actions: [
            ElevatedButton(onPressed: () {
              setState(() {
                exit(0);
              });
            }, child: Text("Yes"),),
            ElevatedButton(onPressed: () {

            }, child: Text("No"),),
          ],
        );
      },

    );
  }

  Future<bool> back() async{
    exitDialog();
    return await false;
  }

}
