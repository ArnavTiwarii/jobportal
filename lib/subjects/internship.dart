import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job/internshiplink.dart/google.dart';
import 'package:job/internshiplink.dart/gitlab.dart';
import 'package:job/internshiplink.dart/tcs.dart';
import 'package:job/internshiplink.dart/slack.dart';
import 'package:job/Drawer/NavigationDrawerWidget.dart';

class internship extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
      extendBodyBehindAppBar: true,
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text(
          'Internship',
          style: TextStyle(color: Colors.black87),
        ),
        backgroundColor: Color.fromARGB(255, 240, 176, 92),
        foregroundColor: Colors.black,
        shadowColor: Colors.transparent,
        centerTitle: true,
      ),
      body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 240, 176, 92),
                Color.fromARGB(255, 241, 239, 235),
                Color.fromARGB(255, 192, 233, 117),
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Google(),
                    ));
                  },
                  child: Card(
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.black, width: 2)),
                    color: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.chat,
                          size: 50,
                          color: Colors.black,
                        ),
                        Text(
                          "Google Summer Internship 2023",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black, fontSize: 25),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Tcs(),
                    ));
                  },
                  child: Card(
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.black, width: 2)),
                    color: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.chat,
                          size: 50,
                          color: Colors.black,
                        ),
                        Text(
                          "TCS Internship 2023-24",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black, fontSize: 25),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Slack(),
                    ));
                  },
                  child: Card(
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.black, width: 2)),
                    color: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.chat,
                          size: 50,
                          color: Colors.black,
                        ),
                        Text(
                          "Slack Intern 2023",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black, fontSize: 25),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Gitlab(),
                    ));
                  },
                  child: Card(
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.black, width: 2)),
                    color: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.chat,
                          size: 50,
                          color: Colors.black,
                        ),
                        Text(
                          "Gitlab Hiring",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black, fontSize: 25),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    // Navigator.of(context).push(MaterialPageRoute(
                    //   builder: (context) => VieoaaApp(),
                    // ));
                  },
                  child: Card(
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.black, width: 2)),
                    color: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.chat,
                          size: 50,
                          color: Colors.black,
                        ),
                        Text(
                          "Cognizant 2023",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black, fontSize: 25),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    // Navigator.of(context).push(MaterialPageRoute(
                    //   builder: (context) => VieoasApp(),
                    // ));
                  },
                  child: Card(
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.black, width: 2)),
                    color: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.chat,
                          size: 50,
                          color: Colors.black,
                        ),
                        Text(
                          "Tech Mahindra 2023",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black, fontSize: 25),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    // Navigator.of(context).push(MaterialPageRoute(
                    //   builder: (context) => VideoApp(),
                    // ));
                  },
                  child: Card(
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.black, width: 2)),
                    color: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.chat,
                          size: 50,
                          color: Colors.black,
                        ),
                        Text(
                          "NITI Aayog 2023",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black, fontSize: 25),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    // Navigator.of(context).push(MaterialPageRoute(
                    //   builder: (context) => Videopp(),
                    // ));
                  },
                  child: Card(
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.black, width: 2)),
                    color: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.chat,
                          size: 50,
                          color: Colors.black,
                        ),
                        Text(
                          "..............",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black, fontSize: 25),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    // Navigator.of(context).push(MaterialPageRoute(
                    //   builder: (context) => VideoAp(),
                    // ));
                  },
                  child: Card(
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.black, width: 2)),
                    color: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.chat,
                          size: 50,
                          color: Colors.black,
                        ),
                        Text(
                          "............................",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black, fontSize: 25),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    // Navigator.of(context).push(MaterialPageRoute(
                    //   builder: (context) => VieoaApp(),
                    // ));
                  },
                  child: Card(
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.black, width: 2)),
                    color: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.chat,
                          size: 50,
                          color: Colors.black,
                        ),
                        Text(
                          ".......................",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black, fontSize: 25),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    // Navigator.of(context).push(MaterialPageRoute(
                    //   builder: (context) => VieoaaApp(),
                    // ));
                  },
                  child: Card(
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.black, width: 2)),
                    color: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.chat,
                          size: 50,
                          color: Colors.black,
                        ),
                        Text(
                          "...........................",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black, fontSize: 25),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    // Navigator.of(context).push(MaterialPageRoute(
                    //   builder: (context) => VieoasApp(),
                    // ));
                  },
                  child: Card(
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.black, width: 2)),
                    color: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.chat,
                          size: 50,
                          color: Colors.black,
                        ),
                        Text(
                          "UPPSC Pre 2023 Online Form",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black, fontSize: 25),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    // Navigator.of(context).push(MaterialPageRoute(
                    //   builder: (context) => VieoasApp(),
                    // ));
                  },
                  child: Card(
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.black, width: 2)),
                    color: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.chat,
                          size: 50,
                          color: Colors.black,
                        ),
                        Text(
                          "IGNOU Junior Assistant Online Form 2023",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black, fontSize: 25),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    // Navigator.of(context).push(MaterialPageRoute(
                    //   builder: (context) => VideoApp(),
                    // ));
                  },
                  child: Card(
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.black, width: 2)),
                    color: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.chat,
                          size: 50,
                          color: Colors.black,
                        ),
                        Text(
                          "Bihar BAMETI Various Post Online Form 2023",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black, fontSize: 25),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  // onTap: () {
                  //   Navigator.of(context).push(MaterialPageRoute(
                  //     builder: (context) => JobDetailPage(),
                  //   ));
                  // },
                  child: Card(
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.black, width: 2)),
                    color: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.chat,
                          size: 50,
                          color: Colors.black,
                        ),
                        Text(
                          "NWDA JE, UDC, LDC and Various Post Online Form 2023",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black, fontSize: 25),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    // Navigator.of(context).push(MaterialPageRoute(
                    //   builder: (context) => VideoAp(),
                    // ));
                  },
                  child: Card(
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.black, width: 2)),
                    color: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.chat,
                          size: 50,
                          color: Colors.black,
                        ),
                        Text(
                          "Central Bank of India Apprentices Online Form 2023",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black, fontSize: 25),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    // Navigator.of(context).push(MaterialPageRoute(
                    //   builder: (context) => VieoaApp(),
                    // ));
                  },
                  child: Card(
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.black, width: 2)),
                    color: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.chat,
                          size: 50,
                          color: Colors.black,
                        ),
                        Text(
                          "SSC GD Constable 2022 Revised Vacancy Details",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black, fontSize: 25),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    // Navigator.of(context).push(MaterialPageRoute(
                    //   builder: (context) => VieoaaApp(),
                    // ));
                  },
                  child: Card(
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.black, width: 2)),
                    color: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.chat,
                          size: 50,
                          color: Colors.black,
                        ),
                        Text(
                          "Airforce Agniveer 02/2023 Online Form",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black, fontSize: 25),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    // Navigator.of(context).push(MaterialPageRoute(
                    //   builder: (context) => VieoasApp(),
                    // ));
                  },
                  child: Card(
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.black, width: 2)),
                    color: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.chat,
                          size: 50,
                          color: Colors.black,
                        ),
                        Text(
                          "Delhi DSSSB Various Post Online Form 2023",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black, fontSize: 25),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    // Navigator.of(context).push(MaterialPageRoute(
                    //   builder: (context) => VideoApp(),
                    // ));
                  },
                  child: Card(
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.black, width: 2)),
                    color: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.chat,
                          size: 50,
                          color: Colors.black,
                        ),
                        Text(
                          "NTA CSIR UGC NET Online Form June 2023",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black, fontSize: 25),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    // Navigator.of(context).push(MaterialPageRoute(
                    //   builder: (context) => Videopp(),
                    // ));
                  },
                  child: Card(
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.black, width: 2)),
                    color: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.chat,
                          size: 50,
                          color: Colors.black,
                        ),
                        Text(
                          "AAICLAS Security Screener Online Form 2023",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black, fontSize: 25),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    // Navigator.of(context).push(MaterialPageRoute(
                    //   builder: (context) => VideoAp(),
                    // ));
                  },
                  child: Card(
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.black, width: 2)),
                    color: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.chat,
                          size: 50,
                          color: Colors.black,
                        ),
                        Text(
                          "NIC Scientific and Technical Posts Online Form 2023",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black, fontSize: 25),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    // Navigator.of(context).push(MaterialPageRoute(
                    //   builder: (context) => VieoaApp(),
                    // ));
                  },
                  child: Card(
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.black, width: 2)),
                    color: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.chat,
                          size: 50,
                          color: Colors.black,
                        ),
                        Text(
                          "MP Apex Bank Various Post Online Form 2023",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black, fontSize: 25),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    // Navigator.of(context).push(MaterialPageRoute(
                    //   builder: (context) => VieoaaApp(),
                    // ));
                  },
                  child: Card(
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.black, width: 2)),
                    color: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.chat,
                          size: 50,
                          color: Colors.black,
                        ),
                        Text(
                          "SSC Selection Post XI Online Form 2023",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black, fontSize: 25),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    // Navigator.of(context).push(MaterialPageRoute(
                    //   builder: (context) => VieoasApp(),
                    // ));
                  },
                  child: Card(
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.black, width: 2)),
                    color: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.chat,
                          size: 50,
                          color: Colors.black,
                        ),
                        Text(
                          "UPUMS Staff Nurse Online Form 2023",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black, fontSize: 25),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    // Navigator.of(context).push(MaterialPageRoute(
                    //   builder: (context) => VieoasApp(),
                    // ));
                  },
                  child: Card(
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.black, width: 2)),
                    color: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.chat,
                          size: 50,
                          color: Colors.black,
                        ),
                        Text(
                          "BSF Latest and Upcoming Recruitment 2023",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black, fontSize: 25),
                        )
                      ],
                    ),
                  ),
                ),
              ],
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio: (1 / .4),
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10),
            ),
          )));
}
