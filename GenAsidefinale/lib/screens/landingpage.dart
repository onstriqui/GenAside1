import 'package:flutter/material.dart';
import 'package:genasidefinale/constants.dart';
import 'package:genasidefinale/screens/scrollpage.dart';
import 'package:genasidefinale/screens/login.dart';
import 'package:genasidefinale/screens/signup.dart';

class landingpage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    constant c = constant(context);
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bg.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          // Center Logo
          Positioned(
            top: 0.17 * c.screenheight,
            left: c.centerPositionw - c.screenwidth / 3,
            child: Container(
              width: c.screenwidth / 1.5,
              height: 0.79 * c.screenwidth / 1.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/logo.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          // Log In Button
          Positioned(
            top: 0.47 * c.screenheight,
            right: c.centerPositionw - (c.screenwidth - 40) / 2,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => login()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: c.vert,
                onPrimary: c.vert1,
                side: BorderSide(color: c.vert, width: 2.0),
              ).copyWith(
                minimumSize: MaterialStateProperty.all(
                  Size(c.screenwidth - 40, c.screenheight * 0.05),
                ),
              ),
              child: Text(
                "Log In",
                style: TextStyle(
                  fontSize: c.screenwidth * 0.05,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          // Sign Up Button
          Positioned(
            top: 0.55 * c.screenheight,
            right: c.centerPositionw - (c.screenwidth - 40) / 2,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => signup()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: c.beige,
                onPrimary: c.beige1,
                side: BorderSide(color: c.beige, width: 2.0),
              ).copyWith(
                minimumSize: MaterialStateProperty.all(
                  Size(c.screenwidth - 40, c.screenheight * 0.05),
                ),
              ),
              child: Text(
                "Sign Up",
                style: TextStyle(
                  fontSize: c.screenwidth * 0.05,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          // Continue as a Guest Text
          Positioned(
            top: c.screenheight * 0.62,
            width: c.screenwidth,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Continue as a ",
                    style: TextStyle(
                      fontSize: c.screenwidth * 0.04,
                      color: c.vert1,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => scrollpage()),
                      );
                    },
                    child: Text(
                      "Guest",
                      style: TextStyle(
                        fontSize: c.screenheight * 0.02,
                        fontWeight: FontWeight.bold,
                        color: c.vert1,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
