import 'package:flutter/material.dart';

// ignore: camel_case_types
class categiryCard extends StatelessWidget {
  final String name;
  final String images;

  const categiryCard({
    Key? key,
    required this.name,
    required this.images,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: <Widget>[
          Image(
            image: AssetImage(
              images,
            ),
          ),
          Text(
            name,
            textAlign: TextAlign.center,
            // ignore: prefer_const_constructors
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
