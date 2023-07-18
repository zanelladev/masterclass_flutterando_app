import 'package:flutter/material.dart';

class ActivitiesCardModel {
  int id;
  String title;
  String description;
  int exercisesCount;
  IconData icon;

  ActivitiesCardModel({
    required this.id,
    required this.title,
    required this.description,
    required this.exercisesCount,
    required this.icon,
  });

  static List<ActivitiesCardModel> get activitiesCardList => [
        ActivitiesCardModel(
          id: 0,
          title: 'Animações',
          description:
              'Estudos sobre animações implícitas e controladas, contendo 4 exercícios e 2 estudos',
          exercisesCount: 4,
          icon: Icons.directions_run,
        ),
        ActivitiesCardModel(
          id: 1,
          title: 'Leitura de Mockup',
          description:
              'Aplicação da técnica de leitura de mockup, contendo 2 exercícios',
          exercisesCount: 2,
          icon: Icons.visibility_outlined,
        ),
        ActivitiesCardModel(
          id: 2,
          title: 'Playground',
          description: 'Ambiente destinado a testes e estudos em geral',
          exercisesCount: 3,
          icon: Icons.gamepad_outlined,
        ),
      ];
}
