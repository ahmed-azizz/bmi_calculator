import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final bmiModel;

  ResultScreen({this.bmiModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 100,
            width: 200,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "Your BMI is ${bmiModel.bmi.round()}",
            style: TextStyle(
                color: Colors.green[700],
                fontSize: 34,
                fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "${bmiModel.comments}",
            style: TextStyle(
                color: Colors.grey[700],
                fontSize: 18,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 16,
          ),
          bmiModel.isNormal
              ? Text(
                  "Hurray! Your BMI is Normal.",
                  style: TextStyle(
                      color: Colors.green[700],
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                )
              : Text(
                  "Sadly! Your BMI is not Normal.",
                  style: TextStyle(
                      color: Colors.green[700],
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
          SizedBox(
            height: 16,
          ),
          Container(
            child: FlatButton.icon(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              label: Text(
                "LET CALCULATE AGAIN",
                style: TextStyle(color: Colors.green[700]),
              ),
              textColor: Colors.white,
              color: Colors.blueGrey[800],
            ),
            width: double.infinity,
            padding: EdgeInsets.only(left: 16, right: 16),
          )
        ],
      ),
    ));
  }
}
