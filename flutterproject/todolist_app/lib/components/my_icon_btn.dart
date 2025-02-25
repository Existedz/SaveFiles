import 'package:flutter/material.dart';

class MyIconBtn extends StatelessWidget {
  
  final String imagePath;

  const MyIconBtn({
    super.key, required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(16),
        color: Colors.blue,
      ),
      child: Image.asset(imagePath, height: 40,),
    );
  }
}
