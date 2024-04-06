//  //   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_rpg/themes/theme.dart';
//  Import FILES
//  //   ///

class CharacterCard extends StatelessWidget {
  final String character;

  const CharacterCard({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    // return const Placeholder();
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          children: <Widget>[
            Text(character),
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
