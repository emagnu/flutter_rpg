//  //   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_rpg/shared/styled_text.dart';
import 'package:flutter_rpg/themes/theme.dart';
//  Import FILES
import '../../models/vocation.dart';
//  //   ///

class VocationCard extends StatelessWidget {
  final Vocation vocation;
  final void Function(Vocation vocation) onTap;
  final bool selected;

  const VocationCard(
      {super.key,
      required this.vocation,
      required this.onTap,
      required this.selected});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        debugPrint(vocation.title);
        onTap(vocation);
        // navigate to vocation detail page
        // Navigator.pushNamed(context, '/vocation', arguments: vocation);
      },
      child: Card(
        color: selected ? AppColors.secondaryColor : Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              // vocation image
              Image.asset(
                'assets/img/vocations/${vocation.image}',
                width: 80,
                colorBlendMode: BlendMode.color,
                color: !selected
                    ? Colors.black.withOpacity(0.8)
                    : Colors.transparent,
              ),
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
