import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

import '../../../models/activities_card_models.dart';

class ExercisesPage extends StatelessWidget {
  final int id;
  ExercisesPage({
    super.key,
    required this.id,
  });

  final activitiesCardList = ActivitiesCardModel.activitiesCardList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: activitiesCardList[id].title,
        icon: Icons.arrow_back_ios_new_rounded,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView.separated(
          itemCount: activitiesCardList[id].exercisesCount,
          itemBuilder: (BuildContext context, int index) {
            return ExercisesCard(index: index);
          },
          separatorBuilder: (context, index) {
            return const SizedBox(height: 10);
          },
        ),
      ),
    );
  }
}
