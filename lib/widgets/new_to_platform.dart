import 'package:flutter/material.dart';

Container NewToPlatform(){
  return Container(
    color: Colors.grey.shade900,
    margin: EdgeInsets.symmetric(horizontal: 15),
    width: double.infinity,
    height: 200,
    child: Center(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text('NEW TO PLATFORM?',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
            ),
            SizedBox(height: 10),
            Container(
              child: Text(
                  'Connect to your Grill to unlock the power of your Otto Grill.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.grey,
                  )),
            ),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: ElevatedButton(
                child: Text('START TO GRILL SMART', style: TextStyle(fontSize: 16)),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 35),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  onPrimary: Colors.white,
                  primary: Colors.red.shade900,
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    ),
  );
}