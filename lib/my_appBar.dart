import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mcq_app/login/google_sign_In.dart';
import 'package:provider/provider.dart';

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_left,
                  size: 37,
                )),
            // Container(
            //   margin: EdgeInsets.only(right: 18),
            //   height: 30,
            //   width: 30,
            //   decoration: BoxDecoration(
            //       color: Colors.blue, borderRadius: BorderRadius.circular(8)),
            //   child: ClipRRect(
            //     borderRadius: BorderRadius.circular(8),
            //     child: Image.network(
            //         "http://techboon.in/wp-content/uploads/2020/01/mohit1-520x562.jpeg"),
            //   ),
            // )
            TextButton(
                onPressed: () {
                  final provider =
                      Provider.of<GoogleSignInProvider>(context, listen: false);
                  provider.logout();
                },
                child: Text(
                  "Logout",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
    );
  }
}
