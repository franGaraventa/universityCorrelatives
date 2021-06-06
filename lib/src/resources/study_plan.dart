import 'correlatives.dart';

class StudyPlan {
  final List<Correlatives> studyPlanHistory;

  StudyPlan({
    this.studyPlanHistory,
  });

  factory StudyPlan.fromJson(List<dynamic> parsedJson) {
    var studyPlanList =
        parsedJson.map((i) => Correlatives.fromJson(i)).toList();
    return StudyPlan(
      studyPlanHistory: studyPlanList,
    );
  }
}
