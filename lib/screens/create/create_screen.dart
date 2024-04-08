//  //   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_rpg/shared/styled_button.dart';
import 'package:flutter_rpg/themes/theme.dart';
import 'package:google_fonts/google_fonts.dart';
//  Import FILES
import '../../models/vocation.dart';
import '../../shared/styled_text.dart';
import 'vocation_card.dart';
//  //   ///

class CreateScreen extends StatefulWidget {
  const CreateScreen({super.key});

  @override
  _CreateScreenState createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _sloganController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _sloganController.dispose();
    super.dispose();
  }

  // submit habdler
  void handleSubmit() {
    if (_nameController.text.trim().isEmpty) {
      debugPrint('name must not be empty');
      return;
    }
    if (_sloganController.text.trim().isEmpty) {
      debugPrint('slogan must not be empty');
      return;
    }

    debugPrint(_nameController.text);
    debugPrint(_sloganController.text);
  }

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
              controller: _nameController,
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
              controller: _sloganController,
              style: GoogleFonts.kanit(
                  textStyle: Theme.of(context).textTheme.bodyMedium),
              cursorColor: AppColors.textColor,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.chat),
                label: StyledText('Character slogan'),
              ),
            ),
            // ...
            const SizedBox(height: 30),
            // Select vocation title
            Center(
              child: Icon(
                Icons.code,
                color: AppColors.primaryColor,
              ),
            ),
            const Center(
              child: StyledHeading('Choose a vocation.'),
            ),
            const Center(
              child: StyledText('This determines your available skills.'),
            ),
            const SizedBox(height: 30),
            // Output vocation cards
            const VocationCard(vocation: Vocation.junkie),
            const VocationCard(vocation: Vocation.ninja),
            const VocationCard(vocation: Vocation.raider),
            const VocationCard(vocation: Vocation.wizard),
            //Character creation form - input for name and slogan
            Center(
              child: StyledButton(
                onPressed: handleSubmit, //() {},
                child: const StyledHeading('Create Character'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
