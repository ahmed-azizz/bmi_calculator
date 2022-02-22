import 'package:flutter/material.dart';

class introduction_view extends StatelessWidget {
  const introduction_view({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image:
                      DecorationImage(image: AssetImage('images/unnamed.png'))),
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueGrey[800],
                  onPrimary: Colors.white,
                  shadowColor: Colors.green,
                  elevation: 20,
                  minimumSize: Size(150, 50),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/bmiScreen');
                },
                child: Text(
                  'Start',
                  style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                      color: Colors.green[800]),
                ))
          ],
        ),
      ),
    ));
  }
}
