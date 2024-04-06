//  //   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
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
          ],
        ),
      ),
    );
  }
}
