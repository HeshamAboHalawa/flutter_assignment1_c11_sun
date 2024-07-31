import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            SizedBox(
              width: 20,
            ),
            CircleAvatar(
              radius: 25,
              child: ClipOval(
                  child: Image.asset(
                "assets/images/person.jpg",
                fit: BoxFit.cover,height: 50, width: 50,
              )),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              "Person",
              style: TextStyle(fontSize: 30, color: Colors.white),
              textAlign: TextAlign.start,
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.video_call,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.call, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.list, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsetsDirectional.all(20),
        decoration: BoxDecoration(
          image: DecorationImage(image:AssetImage( "assets/images/background.png",),fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            //Image.asset("assets/images/background.png"),
            Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  child: ClipOval(
                      child: Image.asset(
                        "assets/images/person1.jpg",
                        fit: BoxFit.cover,height: 50, width: 50,
                      )),
                ),
                SizedBox(width: 30,),
                Container(
                  padding: EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: Colors.white,
                        width: 2
                      ),
                    ),
                    child: Text("Hello my Nam..",style: TextStyle(color: Colors.white, fontSize: 30),)),
              ],
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(
                        color: Colors.white,
                        width: 2
                      )
                    ),
                    child: Text("Hello, me to ",style: TextStyle(color: Colors.white, fontSize: 30),)),
                SizedBox(width: 20,),
                CircleAvatar(
                  radius: 25,
                  child: ClipOval(
                      child: Image.asset(
                        "assets/images/person.jpg",
                        fit: BoxFit.cover,height: 50, width: 50,
                      )),
                ),

              ],
            ),
            Spacer(),
            Row(
              children: [
                SizedBox(
                  width:280 ,
                  child: TextField(
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.emoji_emotions_outlined, color: Colors.white,
                      ),
                      suffixIcon: Icon(
                        Icons.attach_file, color: Colors.white,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.white,
                        )
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.white,
                        )
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      hintText: "Type a Message" ,
                      hintStyle: TextStyle(
                        color: Colors.white,
                      )
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                CircleAvatar(
                  radius: 30,
                  child: ClipOval(
                      child: Icon(Icons.mic, color: Colors.white,),
                      )),
              ],
            )
          ],

        ),
      ),
    );
  }
}
