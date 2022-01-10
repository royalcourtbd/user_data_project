import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:user_data_project/pages/login_page.dart';
import 'package:user_data_project/pages/signup_page.dart';
import 'package:user_data_project/widgets/buttons.dart';
import 'package:user_data_project/widgets/large_text.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String bgImage = 'assets/images/bd.jpg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              bgImage,
            ),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.blue.withOpacity(0.6),
              BlendMode.dstATop,
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            LargeText(
              text: 'Test Me',
              color: Colors.white,
              fontSize: 53,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(
              height: 3,
            ),
            ResponsiveButton(
              text: Text(
                ' User Authentica',
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              width: 229,
              height: 32,
              color: Colors.black,
            ),
            SizedBox(
              height: 61,
            ),
            // Login Button
            InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => SignInPage()));
              },
              child: ResponsiveButton(
                text: Text(
                  'Login',
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                width: 343,
                height: 48,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 13,
            ),
            //SignUp Button

            InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => SignUpPage()));
              },
              child: ResponsiveButton(
                text: Text(
                  'SignUp',
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                width: 343,
                height: 48,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 136,
            ),
          ],
        ),
      ),
    );
  }
}
