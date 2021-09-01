import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mcq_app/file_bar.dart';
import 'package:mcq_app/login/google/login.dart';
import 'package:mcq_app/login/google_sign_In.dart';
import 'package:mcq_app/my_appBar.dart';
import 'package:mcq_app/my_cards.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
      create: (context) => GoogleSignInProvider(),
      child: MaterialApp(
        title: "Flutter Demo",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            textTheme: GoogleFonts.latoTextTheme(
              Theme.of(context).textTheme,
            ),
            primaryColor: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity),
        home: AfterSignUP(),
      ));
}

class AfterSignUP extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
      body: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snaphot) {
            if (snaphot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (snaphot.hasData) {
              return HomePage();
            } else if (snaphot.hasError) {
              return Center(
                child: Text("Something Went Wrong"),
              );
            } else {
              return LogInPage();
            }
          }));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // var myAppBar = MyAppBar;
    // var myCards = MyCards1();
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Text("Play Now"),
        icon: Icon(Icons.play_arrow),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyAppBar(),
            //   SizedBox(height: 25),
            FileBar(),
            SizedBox(height: 25),
            // Container(
            //   margin: EdgeInsets.only(left: 20),
            //   height: 230,
            //   child: Expanded(
            //     child: ListView(
            //       scrollDirection: Axis.horizontal,
            //       children: [
            //         MyCards(
            //           mycolor: Color(0xff22293d),
            //           mycolor2: Color(0xff434e6c),
            //         ),
            //         MyCards(
            //           mycolor: Color(0xff3787eb),
            //           mycolor2: Color(0xff1b70da),
            //         ),
            //         MyCards(
            //           mycolor: Color(0xffff5a00),
            //           mycolor2: Color(0xffc84e0c),
            //         ),
            //         MyCards(
            //           mycolor: Color(0xff22293d),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyCards1(
                  mycolor: Color(0xff22293d),
                  mycolor2: Color(0xff434e6c),
                ),
                MyCards2(
                  mycolor: Color(0xff3787eb),
                  mycolor2: Color(0xff1b70da),
                )
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Chapter Wise Question",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color(0xffefefef),
                  //  color: Colors.amber,
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    // child: Center(
                    //   child: Icon(
                    //     Icons.music_note,
                    //     size: 30,
                    //     color: Color(0xffc4c3ff),
                    //   ),
                    // ),
                    child: Center(
                      child: Text(
                        "P",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Physics",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            color: Color(0xff576280)),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        "100+ test series",
                        style: TextStyle(
                            // fontWeight: FontWeight.w700,
                            // fontSize: 20,
                            color: Color(0xff576280)),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color(0xffefefef),
                  //  color: Colors.amber,
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    // child: Center(
                    //   child: Icon(
                    //     Icons.videocam,
                    //     size: 30,
                    //     color: Color(0xffff5a00),
                    //   ),
                    // ),
                    child: Center(
                      child: Text(
                        "C",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Chemistry",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            color: Color(0xff576280)),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        "105+ test series",
                        style: TextStyle(
                            // fontWeight: FontWeight.w700,
                            // fontSize: 20,
                            color: Color(0xff576280)),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color(0xffefefef),
                  //  color: Colors.amber,
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    // child: Center(
                    //   child: Icon(
                    //     Icons.video_call,
                    //     size: 30,
                    //     color: Color(0xffc4c3ff),
                    //   ),
                    // ),
                    child: Center(
                      child: Text(
                        "B",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Botany",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            color: Color(0xff576280)),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        "116+ test series",
                        style: TextStyle(
                            // fontWeight: FontWeight.w700,
                            // fontSize: 20,
                            color: Color(0xff576280)),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color(0xffefefef),
                  //  color: Colors.amber,
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    // child: Center(
                    //   child: Icon(
                    //     Icons.video_call,
                    //     size: 30,
                    //     color: Color(0xffc4c3ff),
                    //   ),
                    // ),
                    child: Center(
                      child: Text(
                        "Z",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Zoology",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            color: Color(0xff576280)),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        "125+ test series",
                        style: TextStyle(
                            // fontWeight: FontWeight.w700,
                            // fontSize: 20,
                            color: Color(0xff576280)),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
