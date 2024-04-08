//  //   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_rpg/shared/styled_text.dart';
//  Import FILES
import '../../models/vocation.dart';
//  //   ///

class VocationCard extends StatelessWidget {
  final Vocation vocation;
  const VocationCard({super.key, required this.vocation});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        debugPrint(vocation.title);
        // Navigator.pushNamed(context, '/vocation', arguments: vocation);
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              // vocation image
              Image.asset('assets/img/vocations/${vocation.image}',
                  width: 80, colorBlendMode: BlendMode.color),
              const SizedBox(width: 10.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    StyledHeading(vocation.title),
                    StyledText(vocation.description),
                  ],
                ),
              ),
              //

              //
            ],
          ),
        ),
      ),
    );
  }
}
