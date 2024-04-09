//  //   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
//  Import FILES
import '../../models/character.dart';
import '../../shared/styled_text.dart';
import '../../themes/theme.dart';
//  //   ///

class StatsTable extends StatefulWidget {
  final Character character;

  const StatsTable(this.character, {super.key});

  @override
  _StatsTableState createState() => _StatsTableState();
}

class _StatsTableState extends State<StatsTable> {
  @override
  Widget build(BuildContext context) {
    // return const Placeholder();
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: <Widget>[
          // Available point
          Container(
            color: AppColors.secondaryColor,
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.star,
                  color: widget.character.points > 0
                      ? Colors.yellow
                      : Colors.black,
                ),
                const SizedBox(width: 20.0),
                const StyledText('Stat Available Points:'),
                // const SizedBox(width: 20.0),
                const Expanded(child: SizedBox(width: 20.0)),
                // StyledHeading('Points'),
                StyledHeading(widget.character.points.toString()),
              ],
            ),
          ),
          const SizedBox(height: 10.0),

          // Stats table
        ],
      ),
    );
  }
}
