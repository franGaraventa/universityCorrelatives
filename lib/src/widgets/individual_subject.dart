import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:university_correlatives/src/utils/dimension.dart';

class IndividualSubject extends StatefulWidget {
  final double containerHeight;
  final double containerWidth;
  final double containerMargin;
  final double containerPadding;
  final double containerBoxDecorationBorder;
  final double containerBoxDecorationBorderRadius;
  final double containerBoxDecorationBoxShadowOffset;
  final String subjectName;
  Color containerColor;

  IndividualSubject({
    Key key,
    this.containerHeight = Dimension.containerHeight,
    this.containerWidth = Dimension.containerWidth,
    this.containerMargin = Dimension.containerMargin,
    this.containerPadding = Dimension.containerPadding,
    this.containerBoxDecorationBorder = Dimension.containerBoxDecorationBorder,
    this.containerBoxDecorationBorderRadius =
        Dimension.containerBoxDecorationBorderRadius,
    this.containerBoxDecorationBoxShadowOffset =
        Dimension.containerBoxDecorationBoxShadowOffset,
    this.subjectName,
    this.containerColor = Colors.blueAccent,
  }) : super(key: key);

  @override
  _IndividualSubjectState createState() => _IndividualSubjectState();
}

class _IndividualSubjectState extends State<IndividualSubject> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(widget.containerMargin),
      padding: EdgeInsets.all(widget.containerPadding),
      decoration: BoxDecoration(
          border: Border.all(
              width: widget.containerBoxDecorationBorder, color: Colors.black),
          color: widget.containerColor,
          borderRadius:
              BorderRadius.circular(widget.containerBoxDecorationBorderRadius),
          boxShadow: [
            BoxShadow(
              color: Colors.blueGrey,
              offset: Offset(
                widget.containerBoxDecorationBoxShadowOffset,
                widget.containerBoxDecorationBoxShadowOffset,
              ),
            )
          ]),
      child: Text(widget.subjectName),
    );
  }
}
