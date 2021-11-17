import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {
  final String ? id;
  final String ? title;

  const DialogBox({
    Key? key, this.id, this.title
  }) : super(key: key);




  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      backgroundColor: Colors.red.shade900,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Container(
          height: 200,
          width: 200,
          child: Center(
            child: Column(
              children: [   Text(
                title!,
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
                const Text(
                  'category',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}