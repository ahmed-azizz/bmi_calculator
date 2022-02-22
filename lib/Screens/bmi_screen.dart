import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/Screens/ResultScreen.dart';
import 'package:bmi_calculator/Screens/BMIMODEL.dart';
import 'package:bmi_calculator/Screens/ResultScreen.dart';
enum gender {
  male,
  female,
}

class bmi_view extends StatefulWidget {
  const bmi_view({Key? key}) : super(key: key);

  @override
  _bmi_viewState createState() => _bmi_viewState();
}

class _bmi_viewState extends State<bmi_view> {
  Color? inactiveColor = Colors.blueGrey[800];
  Color? activeColor = Colors.blueGrey[400];
  gender? selectedGender;
  int height = 175;
  int weight = 65;
  int age = 20;
    double _bmi = 0;
  
    late BMIModel _bmiModel;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('BMI Calculator',
                style: TextStyle(color: Colors.green[700])),
            backgroundColor: Colors.blueGrey[700],
            centerTitle: true,
          ),
          body: Column(children: <Widget>[
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = gender.male;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 20),
                      height: 150,
                      width: 167,
                      decoration: BoxDecoration(
                          color: selectedGender == gender.male
                              ? activeColor
                              : inactiveColor,
                          borderRadius: BorderRadius.circular(8)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(FontAwesomeIcons.male,
                              size: 65, color: Colors.white),
                          SizedBox(
                            height: 25,
                          ),
                          Text(
                            'Male',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = gender.female;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 20),
                      height: 150,
                      width: 167,
                      decoration: BoxDecoration(
                          color: selectedGender == gender.female
                              ? activeColor
                              : inactiveColor,
                          borderRadius: BorderRadius.circular(8)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(FontAwesomeIcons.female,
                              size: 65, color: Colors.white),
                          SizedBox(
                            height: 25,
                          ),
                          Text(
                            'Female',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
            Container(
              margin: EdgeInsets.only(top: 20),
              width: 350,
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.blueGrey[700],
                  borderRadius: BorderRadius.circular(8)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    height.toString() + ' cm',
                    style: TextStyle(color: Colors.white),
                  ),
                  Slider(
                    min: 0.0,
                    max: 250.0,
                    activeColor: Colors.green[700],
                    inactiveColor: Colors.green.shade200,
                    thumbColor: Colors.green[900],
                    value: height.toDouble(),
                    onChanged: (double v) {
                      setState(() {
                        height = v.round();
                      });
                    },
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.blueGrey[700],
                      borderRadius: BorderRadius.circular(8)),
                  height: 200,
                  width: 167,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('AGE',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        age.toString(),
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 20,
                            child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    if (age >= 0) {
                                      age++;
                                    }
                                  });
                                },
                                icon: Icon(
                                  Icons.add,
                                  color: Colors.green[700],
                                  size: 20,
                                )),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 20,
                            child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    if (age > 0) {
                                      age--;
                                    }
                                  });
                                },
                                icon: Icon(
                                  Icons.remove,
                                  color: Colors.green[700],
                                  size: 20,
                                )),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  height: 200,
                  width: 167,
                  decoration: BoxDecoration(
                      color: Colors.blueGrey[700],
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('WEIGHT',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        weight.toString(),
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 20,
                            child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                icon: Icon(
                                  Icons.add,
                                  color: Colors.green[700],
                                  size: 20,
                                )),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 20,
                            child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                icon: Icon(
                                  Icons.remove,
                                  color: Colors.green[700],
                                  size: 20,
                                )),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 340,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueGrey[900],
                  onPrimary: Colors.white,
                  shadowColor: Colors.green,
                  elevation: 20,
                  minimumSize: Size(100, 50),
                ),
                child: Center(
                  child: Text(
                    'CALCULATE',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.green[700]),
                  ),
                ),
                onPressed: () {
       setState(() {
                        _bmi = weight/((height/100)*(height/100));

                        if(_bmi >= 18.5 && _bmi <= 25){
                          _bmiModel = BMIModel(bmi: _bmi, isNormal: true, comments: "You are Totaly Fit");
                        }else if(_bmi < 18.5){
                          _bmiModel = BMIModel(bmi: _bmi, isNormal: false, comments: "You are Underweighted");
                        }else if(_bmi > 25 && _bmi <= 30){
                          _bmiModel = BMIModel(bmi: _bmi, isNormal: false, comments: "You are Overweighted");
                        }else{
                          _bmiModel = BMIModel(bmi: _bmi, isNormal: false, comments: "You are Obesed");
                        }
                      });

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ResultScreen(
                                bmiModel: _bmiModel,
                              )));
                },
              ),
            )
          ])),
    );
  }
}

//