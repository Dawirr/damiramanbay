import 'package:damir1/user.dart';
import 'package:flutter/material.dart';


class UserInfoPage extends StatelessWidget {

  final User userInfo;
  const UserInfoPage({Key? key, required this.userInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Info'),
        centerTitle: true,
      ),
      body: Card(
        margin: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ListTile(
              title: Text(
                userInfo.number,
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              leading: Icon(
                Icons.admin_panel_settings_outlined,
                color: Colors.black,),
            ),
            ListTile(
              title: Text(
                userInfo.name,
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text(userInfo.story),
              leading: const Icon(
                Icons.person,
                color: Colors.black,
              ),
              trailing: Text(userInfo.country),
            ),
            ListTile(
              title: Text(
                userInfo.gender,
                style: TextStyle(fontWeight: FontWeight.normal),
              ),
              leading: Icon(
                Icons.people,
                color: Colors.black,
              ),
            ),
            ListTile(
              title: Text(
                userInfo.phone,
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
              leading: const Icon(
                Icons.phone,
                color: Colors.black,
              ),
            ),
            ListTile(
              title: Text(
                userInfo.email.isEmpty ? 'Not specified' : userInfo.email,
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
              leading: const Icon(
                Icons.mail,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}