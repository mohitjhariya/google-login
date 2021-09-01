import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class FileBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Text(
              //   "TEST LAB",
              //   style: TextStyle(
              //     fontWeight: FontWeight.bold,
              //     fontSize: 25,
              //   ),
              // ),
              SizedBox(
                height: 10,
              ),
              CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(user.photoURL),
              ),
              Text(
                "Wellcome! " + user.displayName,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Text(
                user.email,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
        // Align(
        //   alignment: Alignment.centerLeft,
        //   child: Padding(
        //     padding: const EdgeInsets.symmetric(horizontal: 18),
        //     child: Text(
        //       "Manager",
        //       style: TextStyle(fontWeight: FontWeight.w400, fontSize: 30),
        //     ),
        //   ),
        // ),
        // SizedBox(
        //   height: 15,
        // ),
        // Align(
        //   alignment: Alignment.centerLeft,
        //   child: Padding(
        //     padding: const EdgeInsets.symmetric(horizontal: 18),
        //     child: Text(
        //       "Let's clean and manage your file's",
        //       style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
