//  //   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
//  Import FILES
import '../../models/character.dart';
import '../../shared/styled_text.dart';
import '../../themes/theme.dart';
//  //   ///

class ProfileScreen extends StatelessWidget {
  final Character character;

  const ProfileScreen({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: const StyledText('character name'),
        title: StyledText(character.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // basic info - image, vocations, descriptio
            Container(
              padding: const EdgeInsets.all(16),
              color: AppColors.secondaryColor.withOpacity(0.3),
              child: Row(
                children: <Widget>[
                  Image.asset(
                    'assets/img/vocations/${character.vocation.image}',
                    width: 140.0,
                    height: 140.0,
                  ),
                  const SizedBox(height: 20.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        StyledHeading(character.vocation.title),
                        StyledText(character.vocation.description),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // weapon and ability

            // stats & skills

            // save button
          ],
        ),
      ),
    );
  }
}
