//  //   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_rpg/themes/theme.dart';
import 'package:google_fonts/google_fonts.dart';
//  Import FILES
import '../../shared/styled_text.dart';
//  //   ///

class CreateScreen extends StatefulWidget {
  const CreateScreen({super.key});

  @override
  _CreateScreenState createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const StyledTitle('Character Creation'), centerTitle: true,
        // elevation: 0,
        // backgroundColor: Colors.transparent,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: Column(
          children: <Widget>[
            // Welcome message
            Center(
              child: Icon(
                Icons.code,
                color: AppColors.primaryColor,
              ),
            ),
            const Center(
              child: StyledHeading('Welcome New Player.'),
            ),
            const Center(
              child: StyledText('Create a name & slogan for your character.'),
            ),
            const SizedBox(height: 30),
            // Character creation form - input for name and slogan
            TextField(
              style: GoogleFonts.kanit(
                  textStyle: Theme.of(context).textTheme.bodyMedium),
              cursorColor: AppColors.textColor,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person_2),
                label: StyledText('Character name'),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              style: GoogleFonts.kanit(
                  textStyle: Theme.of(context).textTheme.bodyMedium),
              cursorColor: AppColors.textColor,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.chat),
                label: StyledText('Character slogan'),
              ),
            ),
            // ...
          ],
        ),
      ),
    );
  }
}
