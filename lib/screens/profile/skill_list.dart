//  //   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
//  Import FILES
import '../../models/character.dart';
import '../../models/skill.dart';
import '../../shared/styled_text.dart';
import '../../themes/theme.dart';
//  //   ///

class SkillList extends StatefulWidget {
  final Character character;

  const SkillList(this.character, {super.key});

  @override
  _SkillListState createState() => _SkillListState();
}

class _SkillListState extends State<SkillList> {
  late List<Skill> availableSkills;

  @override
  void initState() {
    availableSkills = allSkills.where((skill) {
      return skill.vocation == widget.character.vocation;
    }).toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16),
        child: Container(
          padding: const EdgeInsets.all(16),
          color: AppColors.secondaryColor.withOpacity(0.5),
          child: Column(
            children: <Widget>[
              const StyledHeading('Choose and active skill'),
              const StyledText('Skills are unique to your vocations.'),
              const SizedBox(height: 20.0),
              Row(
                children: availableSkills.map((skill) {
                  return Container(
                    margin: const EdgeInsets.all(16),
                    padding: const EdgeInsets.all(2),
                    child: Image.asset(
                      'assets/img/skills/${skill.image}',
                      width: 70,
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(height: 20.0),
            ],
          ),
        ));
  }
}
