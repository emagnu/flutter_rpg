//  //   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
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
                  color:
                      widget.character.points > 0 ? Colors.yellow : Colors.grey,
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
          Table(
            // children: const <TableRow>[TableRow()],
            children: widget.character.statsAsFormattedList.map((stat) {
              return TableRow(
                  decoration: BoxDecoration(
                      color: AppColors.secondaryColor.withOpacity(0.9)),
                  children: <Widget>[
                    // Stat title
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: StyledHeading(stat['title']!),
                      ),
                    ),
                    // Stat value
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: StyledText(stat['value']!),
                      ),
                    ),
                    // Icon to increase
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(
                          // icon: const Icon(Icons.add),
                          icon: Icon(
                            Icons.arrow_upward,
                            color: AppColors.textColor,
                          ),
                          onPressed: () {
                            setState(() {
                              widget.character.increaseStat(stat['title']!);
                            });
                          },
                        ),
                      ),
                    ),
                    // Icon to decrease
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(
                          // icon: const Icon(Icons.add),
                          icon: Icon(
                            Icons.arrow_downward,
                            color: AppColors.textColor,
                          ),
                          onPressed: () {
                            setState(() {
                              widget.character.decreaseStat(stat['title']!);
                            });
                          },
                        ),
                      ),
                    ),
                  ]);
            }).toList(),
          ),
        ],
      ),
    );
  }
}
