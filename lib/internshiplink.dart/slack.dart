import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:url_launcher/url_launcher.dart';

class Slack extends StatefulWidget {
  Slack({Key}) : super();

  static Route<T> getJobDetail<T>() {
    return MaterialPageRoute(
      builder: (_) => Slack(),
    );
  }

  @override
  _SlackPageState createState() => _SlackPageState();
}

class _SlackPageState extends State<Slack> {
  Widget _header(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 26, vertical: 20),
      child: Column(
        children: [
          Row(
            children: [
              Image.network(
                  'https://jobportall.s3.ap-south-1.amazonaws.com/Internshiplink/logo/slack.png',
                  height: 40),
              SizedBox(
                width: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Slack",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Intern 2023",
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
              _headerStatic("Salary", "\$153,000"),
              _headerStatic("Applicants", "45980"),
              _headerStatic("Post Date", "16 March 2023"),
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
        'Slack isnt just a software company. The Hardware Operations team is responsible for monitoring the state-of-the-art physical infrastructure behind Googles powerful search technology. As an Operations Technician, you will install, configure, test, troubleshoot and maintain hardware (like servers and its components) and server software (like Googles Linux cluster). You will also take on the configuration of more complex components such as networks, routers, hubs, bridges, switches and networking protocols. You will participate in or lead small project teams on larger installations and develop project contingency plans. A typical day involves manual movement and installation of racks, and while it can sometimes be physically demanding, you are excited to work with infrastructure that is at the cutting-edge of computer technology.\n In this role, you will deploy and maintain Googles Data Center Server and Network Infrastructure by installing, configuring, testing, troubleshooting, and repairing hardware and server software. Youu will manage the configuration of networks, routers, bridges, and switches.',
        trimLines: 10,
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
          'Minimum qualifications',
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
          '● Bachelors degree or equivalent practical experience.\n ● Experience with Operating Systems and Networking Protocols.\n ● Experience with troubleshooting, diagnosing, \nmaintenance, and monitoring of computer hardware and server hardware.',
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
          'Preferred qualifications',
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
          '● Experience working with and troubleshooting hardware or network related issues using Linux-based tools.\n ● Experience with coding, systems administration or scripting.\n ● Experience with light coding or scripting.Experience troubleshooting OS, network equipment, and software.\n ● Ability to collaborate and partner with people and teams to overcome challenges.\n ● Ability to manage competing and changing priorities.',
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
                    'https://slack.com/intl/en-in/careers/university-recruiting');
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
          //backgroundColor: Color.fromRGBO(26, 123, 136, 0.8),
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
