import 'package:flutter/material.dart';
import 'package:job/homepage.dart';
import 'package:job/logout.dart';
import 'package:job/subjects/admission.dart';
import 'package:job/subjects/hackathons.dart';
import 'package:job/subjects/internship.dart';
import 'package:job/subjects/latestjob.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    final urlimage =
        "https://jobportall.s3.ap-south-1.amazonaws.com/SmartEd+(3).PNG";
    return Drawer(
      width: 230,
      elevation: 20,
      backgroundColor: Color.fromARGB(255, 240, 188, 121),
      child: ListView(
        children: <Widget>[
          buildHeader(
            urlimage: urlimage,
          ),
          SingleChildScrollView(
            child: Container(
              padding: padding,
              child: Column(
                children: [
                  const SizedBox(height: 15),
                  Divider(color: Colors.white70),
                  const SizedBox(height: 24),
                  buildMenuItem(
                    text: 'Latest Job',
                    icon: Icons.article,
                    onClicked: () => selectedItem(context, 0),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Internship',
                    icon: Icons.article,
                    onClicked: () => selectedItem(context, 1),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Hackathons',
                    icon: Icons.article,
                    onClicked: () => selectedItem(context, 2),
                  ),
                  // const SizedBox(height: 16),
                  // buildMenuItem(
                  //   text: 'Admission',
                  //   icon: Icons.article,
                  //   onClicked: () => selectedItem(context, 3),
                  // ),
                  const SizedBox(height: 24),
                  Divider(color: Colors.white70),
                  const SizedBox(height: 24),
                  buildMenuItem(
                    text: 'Home',
                    icon: Icons.house,
                    onClicked: () => selectedItem(context, 4),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Logout',
                    icon: Icons.logout_rounded,
                    onClicked: () => selectedItem(context, 5),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildHeader({required String urlimage}) =>
      Container(child: Column(children: <Widget>[Image.network(urlimage)]));

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.black87;
    final hoverColor = Color.fromARGB(221, 138, 137, 137);

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();

    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => latest(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => internship(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => hackathons(),
        ));
        break;
      // case 3:
      //   Navigator.of(context).push(MaterialPageRoute(
      //     builder: (context) => admission(),
      //   ));
      //   break;
      case 4:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => HomePage(),
        ));
        break;
      case 5:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => LogoutPage(),
        ));
        break;
    }
  }
}
