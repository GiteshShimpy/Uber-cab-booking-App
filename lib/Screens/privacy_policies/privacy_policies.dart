import 'package:flutter/material.dart';

class Privacypolicy extends StatelessWidget {
  const Privacypolicy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 193, 29, 29),
        title: Text(
          "Privacy policies",
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(18.0),
        child: Container(
          width: w * 0.9,
          height: h * 0.85,
          decoration: BoxDecoration(
              border: (Border.all(width: 0.1, color: Colors.white)),
              borderRadius: const BorderRadius.all(const Radius.circular(15.0)),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Color.fromARGB(255, 209, 200, 200),
                    spreadRadius: 3.0,
                    blurRadius: 5.0,
                    blurStyle: BlurStyle.normal),
              ]),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10.0, right: 5.0, top: 20.0),
                child: Text(
                  "Privacy",
                  style: TextStyle(
                      color: Color.fromARGB(255, 193, 29, 29),
                      decoration: TextDecoration.underline,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10.0, right: 5.0, top: 20.0),
                child: Text(
                  "Please note that legal information, including legal templates and legal policies, is not legal advice. The information provided on this site is not legal advice, does not constitute a lawyer referral service, and no attorney-client or confidential relationship is or will be formed by use of the site.\n\nThe reproduction, distribution, display, or transmission of the content is strictly prohibited, unless authorized by FreePrivacyPolicy. All other company & product names may be trademarks of the respective companies with which they are associated.",
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10.0, right: 5.0, top: 20.0),
                child: Text(
                  "Policy",
                  style: TextStyle(
                      color: Color.fromARGB(255, 193, 29, 29),
                      decoration: TextDecoration.underline,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10.0, right: 5.0, top: 20.0),
                child: Text(
                  "We may update Our Privacy Policy from time to time. We will notify You of any changes by posting the new Privacy Policy on this page.\n\nWe will let You know via email and/or a prominent notice on Our Service, prior to the change becoming effective and update .\n\nYou are advised to review this Privacy Policy periodically for any changes.",
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
