import 'package:flutter/material.dart';
import '../resources/correlatives.dart';
import 'individual_subject.dart';

import 'correlative_header.dart';

class QuarterWidget extends StatelessWidget {
  final Correlatives correlative;

  QuarterWidget({Key key, this.correlative}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CorrelativeHeader(
          year: correlative.year.toString(),
          quarter: correlative.quarter.toString(),
        ),
        ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: correlative.subjects.length,
          itemBuilder: (context, index) {
            return IndividualSubject(
              subjectName: correlative.subjects[index].subjectName,
            );
          },
        ),
      ],
    );
  }
}
