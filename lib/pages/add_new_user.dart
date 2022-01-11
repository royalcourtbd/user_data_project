import 'package:flutter/material.dart';
import 'package:user_data_project/pages/login_page.dart';
import 'package:user_data_project/widgets/app_text.dart';
import 'package:user_data_project/widgets/buttons.dart';
import 'package:user_data_project/widgets/large_text.dart';

enum Gender { Male, Female }

class AddNewUser extends StatefulWidget {
  @override
  _AddNewUserState createState() => _AddNewUserState();
}

class _AddNewUserState extends State<AddNewUser> {
  Gender? _gender = Gender.Male;
  late bool passwordVisible;
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController numberController = TextEditingController();
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
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        centerTitle: true,
        title: AppText(
          text: 'Add New User',
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          reverse: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 12,
              ),
              Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: CircleAvatar(
                      maxRadius: 70,
                      backgroundImage: AssetImage(
                        'assets/images/images1.png',
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextFormField(
                  controller: nameController,
                  enableSuggestions: true,
                  focusNode: FocusNode(canRequestFocus: false),
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffF2F2F7),
                      hintText: 'Name',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                        borderRadius: BorderRadius.circular(6),
                      )),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextFormField(
                  controller: emailController,
                  enableSuggestions: true,
                  focusNode: FocusNode(canRequestFocus: false),
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffF2F2F7),
                      hintText: 'Email',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                        borderRadius: BorderRadius.circular(6),
                      )),
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
                    fontSize: 16,
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
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                        borderRadius: BorderRadius.circular(6),
                      )),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextFormField(
                  controller: numberController,
                  enableSuggestions: true,
                  focusNode: FocusNode(canRequestFocus: false),
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffF2F2F7),
                      hintText: 'Enter Mobile Number',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                        borderRadius: BorderRadius.circular(6),
                      )),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: AppText(
                  text: 'Gender',
                  color: Colors.black,
                  fontSize: 19,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Row(
                  children: [
                    AppText(
                        text: 'Male',
                        color: Colors.black,
                        fontSize: 19,
                        fontWeight: FontWeight.w400),
                    Radio(
                      value: Gender.Male,
                      groupValue: _gender,
                      onChanged: (Gender? value) {
                        _gender = value;
                      },
                      activeColor: Colors.blue,
                      fillColor: MaterialStateProperty.all(Colors.blue),
                    ),
                    SizedBox(
                      width: 43,
                    ),
                    AppText(
                        text: 'Female',
                        color: Colors.black,
                        fontSize: 19,
                        fontWeight: FontWeight.w400),
                    Radio(
                      value: Gender.Female,
                      groupValue: _gender,
                      onChanged: (Gender? value) {
                        setState(() {
                          _gender = value;
                        });
                      },
                      activeColor: Colors.blue,
                      fillColor: MaterialStateProperty.all(Colors.blue),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 87,
              ),
              Align(
                alignment: Alignment.center,
                child: ResponsiveButton(
                  width: 343,
                  height: 48,
                  color: Colors.black,
                  text: AppText(
                    text: 'Save',
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
