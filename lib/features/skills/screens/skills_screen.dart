import 'package:flutter/material.dart';
import 'package:portfolio/features/skills/widgets/skill_card.dart';

import '../../../constants/constant.dart';

class SkillsScreen extends StatelessWidget {
  const SkillsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SingleChildScrollView(
      child: Wrap(
          alignment: WrapAlignment.center,
          spacing: 20,
          runSpacing: 20,
          children: [
            SkillCard(
                imagePath: '${Constants.imagesPath}flutter.png',
                text: 'Flutter'),
            SkillCard(
                imagePath: '${Constants.imagesPath}dart.png', text: 'Dart'),
            SkillCard(
                imagePath: '${Constants.imagesPath}html.png', text: 'HTML'),
            SkillCard(imagePath: '${Constants.imagesPath}css.png', text: 'CSS'),
            SkillCard(
                imagePath: '${Constants.imagesPath}js.png', text: 'JavaScript'),
            SkillCard(
                imagePath: '${Constants.imagesPath}java.png', text: 'Java'),
            SkillCard(
                imagePath: '${Constants.imagesPath}firebase.png',
                text: 'Firebase'),
            SkillCard(
                imagePath: '${Constants.imagesPath}git.png',
                text: 'Git/Github'),
          ]),
    ));
  }
}
