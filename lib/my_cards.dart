import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';

class MyCards1 extends StatelessWidget {
  Color mycolor;
  Color mycolor2;

  MyCards1({
    this.mycolor,
    this.mycolor2,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(boxShadow: [
        new BoxShadow(
          color: Colors.black,
          // blurRadius: 3.0,
        ),
      ], color: mycolor, borderRadius: BorderRadius.circular(20)),
      width: 180,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Text(
              //   "Manager",
              //   style: TextStyle(color: mycolor2, fontSize: 15),
              // ),
              // Icon(
              //   Icons.more_horiz,
              //   color: Colors.white,
              // )
            ],
          ),
          // SizedBox(
          //   height: 13,
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Neet",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
              Text(
                "1000000+",
                style: TextStyle(
                    color: Color(0xffcfff00),
                    fontWeight: FontWeight.w600,
                    fontSize: 13),
              ),
            ],
          ),
          Row(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Full Syllbus",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
              Text(
                "Que",
                style: TextStyle(
                    color: mycolor2, fontWeight: FontWeight.w600, fontSize: 15),
              ),
            ],
          ),
          // SizedBox(
          //   height: 13,
          // ),
          // Container(
          //   height: 8,
          //   child: ClipRRect(
          //     borderRadius: BorderRadius.circular(10),
          //     child: LinearProgressIndicator(
          //       value: 0.7,
          //       backgroundColor: mycolor2,
          //       valueColor: AlwaysStoppedAnimation<Color>(Color(0xffcfff00)),
          //     ),
          //   ),
          // ),
          // SizedBox(
          //   height: 3,
          // ),
          // Align(
          //   alignment: Alignment.centerLeft,
          //   child: Text(
          //     "72.40GB / 128GB",
          //     style: TextStyle(color: Colors.white, fontSize: 10),
          //   ),
          // ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 30,
            width: 150,
            child: SliderButton(
              action: () {
                Navigator.of(context).pop();
              },
              backgroundColor: mycolor2,
              label: Text(
                ">>>",
                style: TextStyle(fontSize: 18),
              ),
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 1),
                height: 30,
                // height: double.infinity,
                width: 55,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Start",
                    style: TextStyle(color: Color(0xff434e6c)),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MyCards2 extends StatelessWidget {
  Color mycolor;
  Color mycolor2;

  MyCards2({
    this.mycolor,
    this.mycolor2,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(boxShadow: [
        new BoxShadow(
          color: Colors.black,
          // blurRadius: 3.0,
        ),
      ], color: mycolor, borderRadius: BorderRadius.circular(20)),
      width: 180,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Text(
              //   "Manager",
              //   style: TextStyle(color: mycolor2, fontSize: 15),
              // ),
              // Icon(
              //   Icons.more_horiz,
              //   color: Colors.white,
              // )
            ],
          ),
          // SizedBox(
          //   height: 13,
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Previous Year",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
              Text(
                "20+",
                style: TextStyle(
                    color: Color(0xffcfff00),
                    fontWeight: FontWeight.w600,
                    fontSize: 13),
              ),
            ],
          ),
          Row(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Que Papar",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
              Text(
                "Years",
                style: TextStyle(
                    color: mycolor2, fontWeight: FontWeight.w600, fontSize: 15),
              ),
            ],
          ),
          // SizedBox(
          //   height: 13,
          // ),
          // Container(
          //   height: 8,
          //   child: ClipRRect(
          //     borderRadius: BorderRadius.circular(10),
          //     child: LinearProgressIndicator(
          //       value: 0.7,
          //       backgroundColor: mycolor2,
          //       valueColor: AlwaysStoppedAnimation<Color>(Color(0xffcfff00)),
          //     ),
          //   ),
          // ),
          // SizedBox(
          //   height: 3,
          // ),
          // Align(
          //   alignment: Alignment.centerLeft,
          //   child: Text(
          //     "72.40GB / 128GB",
          //     style: TextStyle(color: Colors.white, fontSize: 10),
          //   ),
          // ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 30,
            width: 150,
            child: SliderButton(
              action: () {
                Navigator.of(context).pop();
              },
              backgroundColor: mycolor2,
              label: Text(
                ">>>",
                style: TextStyle(fontSize: 18),
              ),
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 1),
                height: 30,
                // height: double.infinity,
                width: 55,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Start",
                    style: TextStyle(color: Color(0xff434e6c)),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
