import 'package:flutter/material.dart';

class LoginLogo extends StatelessWidget {
  const LoginLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1.0,
      height: MediaQuery.of(context).size.height * 0.15,
      padding: EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'LOGIN',
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor),
              ),
              SizedBox(height: 20),
              Text(
                'For the ultimate Experience',
                style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).primaryColor),
              )
            ],
          ),
          Container(
            color: Colors.black,
            height: 100,
            width: 100,
            child: Image(
              image: AssetImage(
                'assets/images/logo.png',
              ),
              fit: BoxFit.fitHeight,
            ),
          )
        ],
      ),
    );
  }
}
