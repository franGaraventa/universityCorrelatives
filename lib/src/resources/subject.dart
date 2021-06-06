class Subject {
  final int subjectId;
  final String subjectName;

  //final List<int> subjectsCorrelatives;

  Subject({
    this.subjectId,
    this.subjectName,
    //this.subjectsCorrelatives,
  });

  factory Subject.fromJson(Map<String, dynamic> parsedJson) {
    return Subject(
      subjectId: parsedJson["subjectId"],
      subjectName: parsedJson["subjectName"],
      //subjectsCorrelatives: parsedJson["subjectCorrelatives"]
    );
  }
}
