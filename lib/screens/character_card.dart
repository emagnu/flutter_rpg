//  //   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
//  Import FILES
import '../models/character.dart';
import '../shared/styled_text.dart';
import '../themes/theme.dart';
import 'profile/profile_screen.dart';
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
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          // const ProfileScreen(), //(character: character),
                          ProfileScreen(character: character),
                    ),
                  );
                  debugPrint('Pushed $character');
                },
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
