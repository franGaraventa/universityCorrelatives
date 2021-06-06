import 'subject.dart';

class Correlatives {
  final int year;
  final int quarter;
  final List<Subject> subjects;

  Correlatives({
    this.year,
    this.quarter,
    this.subjects,
  });

  factory Correlatives.fromJson(Map<String, dynamic> parsedJson) {
    var list = parsedJson['subjects'] as List;
    List<Subject> subjectList = list.map((i) => Subject.fromJson(i)).toList();
    return Correlatives(
      year: parsedJson['year'],
      quarter: parsedJson['quarter'],
      subjects: subjectList,
    );
  }
}
