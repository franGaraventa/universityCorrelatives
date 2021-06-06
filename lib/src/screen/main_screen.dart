import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:university_correlatives/src/widgets/quarter_widget.dart';
import '../resources/study_plan.dart';

class MainScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var studyPlan;

  Future<String> _loadAsset() async {
    return await rootBundle.loadString('assets/studyPlan.json');
  }

  Future loadStudent() async {
    String jsonString = await _loadAsset();
    final jsonResponse = json.decode(jsonString);
    studyPlan = StudyPlan.fromJson(jsonResponse);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ingeniería de Sistemas"),
      ),
      body: Center(
        child: FutureBuilder(
          future: loadStudent(),
          builder: (context, snapshot) {
            return ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: studyPlan.studyPlanHistory.length,
              itemBuilder: (context, index) {
                return QuarterWidget(
                  correlative: studyPlan.studyPlanHistory[index],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
