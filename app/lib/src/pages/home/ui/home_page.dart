import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:masterclass_app/src/models/activities_card_models.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final activitiesCardList = ActivitiesCardModel.activitiesCardList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: ListView.builder(
        itemCount: activitiesCardList.length,
        itemBuilder: (BuildContext context, int index) {
          return ActivitiesCard(
            title: activitiesCardList[index].title,
            description: activitiesCardList[index].description,
            exercisesCount: activitiesCardList[index].exercisesCount,
          );
        },
      ),
      bottomNavigationBar: CustomNavigator(),
    );
  }
}
