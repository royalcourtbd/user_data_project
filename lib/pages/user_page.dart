import 'package:flutter/material.dart';
import 'package:user_data_project/widgets/app_text.dart';
import 'package:user_data_project/widgets/buttons.dart';

class UserListPage extends StatefulWidget {
  @override
  _UserListPageState createState() => _UserListPageState();
}

class _UserListPageState extends State<UserListPage> {
  var _totalUser = 0;
  List userList = [
    'Sayed',
    'Hridoy',
    'Mushfiq',
    'Rezwan',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: AppText(
          text: 'User List',
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Icon(
                          Icons.person_outline,
                          size: 50,
                        ),
                        AppText(
                          text: 'Total User',
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                        AppText(
                          text: userList.length.toString(),
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                  ),
                  ResponsiveButton(
                    width: 131,
                    height: 26,
                    color: Colors.black,
                    text: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person_outline,
                          color: Colors.white,
                        ),
                        AppText(
                          text: 'Add New User',
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.normal,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search_outlined,
                    size: 24,
                    color: Colors.black.withOpacity(0.5),
                  ),
                  hintStyle: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                  hintText: 'Search',
                  fillColor: Color(0xffC4C4C4),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7),
                    borderSide: BorderSide(width: 0, style: BorderStyle.none),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Divider(
                height: 1,
                thickness: 1,
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemCount: userList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    maxRadius: 30,
                    backgroundImage: AssetImage('assets/images/images1.png'),
                  ),
                  title: Text(userList[index]),
                  subtitle: Text('Email'),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
