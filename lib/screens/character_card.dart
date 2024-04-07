//  //   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_rpg/themes/theme.dart';
//  Import FILES
import '../models/character.dart';
import '../shared/styled_text.dart';
//  //   ///

class CharacterCard extends StatelessWidget {
  // final String character;
  final Character character;

  const CharacterCard({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    // return const Placeholder();
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          children: <Widget>[
            // Text(character),
            Image.asset(
              'assets/img/vocations/${character.vocation.image}',
              width: 80, // height: 80,// fit: BoxFit.cover,
            ),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                StyledHeading(character.name),
                StyledText(character.vocation.title),
              ],
            ),
            const Expanded(child: SizedBox()),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward,
                  color: AppColors.textColor,
                ))
          ],
        ),
      ),
    );
  }
}
