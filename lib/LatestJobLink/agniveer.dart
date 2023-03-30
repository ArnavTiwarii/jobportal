import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:url_launcher/url_launcher.dart';

class Agniveer extends StatefulWidget {
  Agniveer({Key}) : super();

  static Route<T> getJobDetail<T>() {
    return MaterialPageRoute(
      builder: (_) => Agniveer(),
    );
  }

  @override
  _AgniveerState createState() => _AgniveerState();
}

class _AgniveerState extends State<Agniveer> {
  Widget _header(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 26, vertical: 20),
      child: Column(
        children: [
          Row(
            children: [
              Image.network(
                  'https://jobportall.s3.ap-south-1.amazonaws.com/latestjob/army.png',
                  height: 40),
              SizedBox(
                width: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Army Agniveer Recruitment",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Online Form 2023",
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
        'Agniveers will be enrolled in the Indian Navy under the Navy Act 1957 for a period of four years. Agniveers would from a distinct rank in the Armed Forces, different from any other existing ranks.\n On completion of the four years period, Agniveers will go back to the society as disciplined, dynamic, motivated and skilled work force for employment in the other sectors, thereby contributing further in nation building. Indian Navy in not obligated to retain Agniveers beyond the engagement period of four years. The skills gained by each Agniveer will be captured in a certificate to form part of his resume.',
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
          'Important Dates',
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
          '● Application Begin : 15/03/2023\n ● Last Date for Apply Online : 29/03/2023\n ● Correction Last Date : 03/04/2023\n ● Exam Date Start : 17/06/2023',
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
          'Application Fees',
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
          '● General / Other State : ₹560/-\n ● SC / ST / OBC : ₹310/-\n ● Portal Charge : ₹60/- (Include)\n ● Pay the Exam Fee Through Cash\n ● Pay Debit Card, Credit Card\n ● Net Banking Fee Mode Only.',
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
                launch('https://www.joinindiannavy.gov.in');
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
