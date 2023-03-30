import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:url_launcher/url_launcher.dart';

class Tcsnqt extends StatefulWidget {
  Tcsnqt({Key}) : super();

  static Route<T> getJobDetail<T>() {
    return MaterialPageRoute(
      builder: (_) => Tcsnqt(),
    );
  }

  @override
  _TcsnqtPageState createState() => _TcsnqtPageState();
}

class _TcsnqtPageState extends State<Tcsnqt> {
  Widget _header(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 26, vertical: 20),
      child: Column(
        children: [
          Row(
            children: [
              Image.network(
                  'https://jobportall.s3.ap-south-1.amazonaws.com/Internshiplink/logo/TCS.png',
                  height: 40),
              SizedBox(
                width: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Tata Consultancy Services",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "NQT Hiring 2023",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(137, 140, 141, 1),
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(height: 32),
          Row(
            children: [
              _headerStatic("Salary", "Unknown"),
              _headerStatic("Applicants", "145080"),
              _headerStatic("Post Date", "16 April 2023"),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [],
          ),
          Divider(
            color: Color.fromARGB(255, 133, 126, 126),
            height: 20,
          ),
        ],
      ),
    );
  }

  Widget _headerStatic(String title, String sub) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w400,
              //color: KColors.subtitle,
            ),
          ),
          SizedBox(height: 5),
          Text(
            sub,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              //color: KColors.title,
            ),
          )
        ],
      ),
    );
  }

  Widget _jobdescritionn(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Job Description',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget _jobDescription(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: ReadMoreText(
        'TCS National Qualifier Test (TCS NQT) helps you prove your skills to top Corporates. You may choose to get assessed on aptitude skills, domain specific skills, industry knowledge or work values. The tests are scheduled every quarter and can be taken from home or at our exam centres. Your TCS NQT scorecard will showcase your performance in every section of the test. You can apply for jobs in various Corporates that accept TCS NQT Score, on our website and respective Corporates websites.',
        trimLines: 5,
        style: TextStyle(fontSize: 17, color: Color.fromARGB(255, 75, 73, 73)),
        colorClickableText: Colors.pink,
        trimMode: TrimMode.Line,
        trimCollapsedText: '...Read more',
        trimExpandedText: ' Less',
      ),
    );
  }

  Widget _ourPeoplee(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Who can Apply',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget _ourPeople(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Center(
        child: Text(
          '● Pre-final or final year students from any stream or degree \n ● Students passing between 2018-2024, who are looking for a job \n ● Working professionals with up to 2 years of experience',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
          // textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget _people(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Connect with Us',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget _ourfees(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Center(
        child: Text(
          '● Contact Us: 1800 266 6282 (India Toll Free) \n ● E-mail: info.tcsionhub@tcs.com \n ● SMS: "TCSiON dghub" to 56161',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
          // textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget _apply(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      margin: EdgeInsets.only(top: 54),
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.amber),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(vertical: 16))),
              onPressed: () {
                launch(
                    'https://learning.tcsionhub.in/hub/national-qualifier-test');
              },
              child: Text(
                "Apply Now",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var child;
    return Scaffold(
        appBar: AppBar(
          //backgroundColor: KColors.background,
          iconTheme: IconThemeData(),
          elevation: 1,
        ),
        body: DefaultTextStyle.merge(
            style: const TextStyle(
              fontSize: 16.0,
              //fontFamily: 'monospace',
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _header(context),
                  _jobdescritionn(context),
                  _jobDescription(context),
                  _ourPeoplee(context),
                  _ourPeople(context),
                  _people(context),
                  _ourfees(context),
                  _apply(context)
                ],
              ),
            )));
  }
}
