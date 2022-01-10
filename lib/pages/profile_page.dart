import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:user_data_project/widgets/app_text.dart';
import 'package:user_data_project/widgets/large_text.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        centerTitle: true,
        title: AppText(
          text: 'Profile',
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 11,
            ),
            Container(
              alignment: Alignment.center,
              child: CircleAvatar(
                maxRadius: 95,
                backgroundImage: AssetImage(
                  'assets/images/images1.png',
                ),
              ),
            ),
            SizedBox(
              height: 13,
            ),
            LargeText(
              text: 'Mr. John Doe',
              color: Colors.black,
              fontSize: 36,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(
              height: 10,
            ),
            AppText(
              text: 'sayedvai08@gmail.com',
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(
              height: 8,
            ),
            AppText(
              text: 'Password',
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(
              height: 5,
            ),
            AppText(
              text: 'Phone: 01842081997',
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(
              height: 11,
            ),
            Container(
              alignment: Alignment.center,
              height: 34,
              width: 344,
              child: Text(
                'Created Date & Time: ' +
                    DateFormat('dd/MMM/yyyy')
                        .format(DateTime.now())
                        .toString() +
                    ' at ' +
                    DateFormat('hh:mm a').format(DateTime.now()).toString(),
                style: GoogleFonts.arvo(
                  color: Color(0xff504F4F),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade500,
                    offset: Offset(4, 4),
                    blurRadius: 11,
                    spreadRadius: 1,
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(-4, -4),
                    blurRadius: 11,
                    spreadRadius: 1,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: Color(0xffC4C4C4),
                  ),
                  AppText(
                    text: 'Location',
                    color: Color(0xffC4C4C4),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 9,
            ),
            Container(
              alignment: Alignment.center,
              height: 227,
              width: 344,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'assets/images/map.jpeg',
                    ),
                    fit: BoxFit.cover),
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade500,
                    offset: Offset(4, 4),
                    blurRadius: 11,
                    spreadRadius: 1,
                  ),
                  BoxShadow(
                    color: Colors.grey.shade200,
                    offset: Offset(-4, -4),
                    blurRadius: 11,
                    spreadRadius: 1,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
