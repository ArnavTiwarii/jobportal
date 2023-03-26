import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class Cognizant extends StatefulWidget {
  Cognizant({Key}) : super();

  static Route<T> getJobDetail<T>() {
    return MaterialPageRoute(
      builder: (_) => Cognizant(),
    );
  }

  @override
  _CognizantPageState createState() => _CognizantPageState();
}

class _CognizantPageState extends State<Cognizant> {
  Widget _header(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 26, vertical: 20),
      child: Column(
        children: [
          Row(
            children: [
              Image.network(
                  'https://jobportall.s3.ap-south-1.amazonaws.com/latestjob/Cognizant.jpg',
                  height: 40),
              SizedBox(
                width: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Cognizant",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Nurture Hiring 2023",
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
              _headerStatic("Applicants", "135080"),
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
        'To help build a more inclusive society with better quality of life, Outreach supports people with disabilities, implements community-building activities and provides vocational training to women, youth and older people.Motivated to act after visiting a village in need, Outreach volunteers returned every week to address the main issue: help the community find ways to make a living.',
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
          'Eligibility Criteria',
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
          '● Your College should be the part of Digital Nurture 2.0 cognizant Program.\n ● Academic Marks Should be >70% throughout your School to Degree till 4 semesters. \n ● No Backlogs Allowed \n ● Courses-B.E/B.TECH/CS/IT/Circuit streams',
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
          '● Contact Us: 1800 266 6282 (India Toll Free) \n ● E-mail: info.nurture@cognizant.com \n ● SMS: "Cognizant Nuture" to 56161',
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
              onPressed: () {},
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
