import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:masterclass_app/src/models/activities_card_models.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final activitiesCardList = ActivitiesCardModel.activitiesCardList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Atividades'),
      body: ListView.builder(
        itemCount: activitiesCardList.length,
        itemBuilder: (BuildContext context, int index) {
          return ActivitiesCard(
            id: index,
            title: activitiesCardList[index].title,
            description: activitiesCardList[index].description,
            exercisesCount: activitiesCardList[index].exercisesCount,
            icon: activitiesCardList[index].icon,
          );
        },
      ),
      bottomNavigationBar: const CustomNavigator(pageIndex: 1),
    );
  }
}
