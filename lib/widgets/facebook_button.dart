import 'package:flutter/material.dart';

class FacebookButton extends StatelessWidget {
  const FacebookButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1.0,
      height: MediaQuery.of(context).size.height * 0.10,
      child: Align(
        alignment: FractionalOffset.bottomCenter,
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: OutlinedButton(
              child: Text('LOGIN WITH FACEBOOK',
                  style: TextStyle(fontSize: 16)),
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  onPrimary: Colors.white,
                  side:
                  BorderSide(color: Colors.white, width: 1.0)),
              onPressed: () {},
            )),
      ),
    );
  }
}