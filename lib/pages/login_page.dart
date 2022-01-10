import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:user_data_project/pages/main_page.dart';
import 'package:user_data_project/pages/profile_page.dart';
import 'package:user_data_project/pages/signup_page.dart';
import 'package:user_data_project/widgets/app_text.dart';
import 'package:user_data_project/widgets/buttons.dart';
import 'package:user_data_project/widgets/large_text.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  late bool passwordVisible;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 38,
                    width: 19.5,
                  ),
                  Icon(
                    Icons.arrow_back_ios,
                    color: Color(0xff007AFF),
                    size: 18,
                  ),
                  Text(
                    'Back',
                    style: TextStyle(
                        color: Color(0xff007AFF),
                        fontSize: 17,
                        fontWeight: FontWeight.normal,
                        letterSpacing: -0.41),
                  ),
                ],
              ),
              SizedBox(
                height: 52,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: LargeText(
                  text: 'Login',
                  color: Colors.black,
                  fontSize: 32,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Container(
                  height: 52,
                  width: 343,
                  child: Text(
                    'Enter your email address and password to access your account',
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 102,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextFormField(
                  controller: emailController,
                  enableSuggestions: true,
                  focusNode: FocusNode(canRequestFocus: false),
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xffF2F2F7),
                    hintText: 'Email',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    //fillColor: Color(0xffF2F2F7),
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextFormField(
                  controller: passwordController,
                  obscureText: passwordVisible,
                  //maxLength: 16,
                  focusNode: FocusNode(canRequestFocus: false),
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xffF2F2F7),
                    hintText: 'Password',
                    suffixIcon: IconButton(
                      icon: Icon(
                        passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Theme.of(context).primaryColorDark,
                      ),
                      onPressed: () {
                        setState(() {
                          passwordVisible = !passwordVisible;
                        });
                      },
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    //fillColor: Color(0xffF2F2F7),
                  ),
                ),
              ),
              SizedBox(
                height: 59,
              ),
              Align(
                alignment: Alignment.center,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => MainPage()));
                  },
                  child: ResponsiveButton(
                    width: 343,
                    height: 48,
                    color: Colors.black,
                    text: AppText(
                      text: 'Login',
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 130,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppText(
                    text: 'Don’t have an account?',
                    color: Color.fromRGBO(0, 0, 0, 0.51),
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => SignUpPage()));
                    },
                    child: AppText(
                      text: 'SignUp',
                      color: Color(0xff007AFF),
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
