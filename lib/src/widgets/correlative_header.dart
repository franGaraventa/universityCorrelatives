import 'package:flutter/material.dart';

class CorrelativeHeader extends StatelessWidget {
  final String year;
  final String quarter;


  CorrelativeHeader({
    Key key,
    this.year,
    this.quarter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade300
      ),
      child: Column(
        children: [
          Divider(
            height: 20,
            thickness: 5,
          ),
          Text(
            "Year: " + year,
          ),
          Text(
            "Quarter: " + quarter,
          ),
          Divider(
            height: 20,
            thickness: 5,
          ),
        ],
      ),
    );
  }
}
