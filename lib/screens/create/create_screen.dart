//  //   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rpg/models/character.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uuid/uuid.dart';
//  Import FILES
import '../../models/vocation.dart';
import '../../shared/styled_button.dart';
import '../../shared/styled_text.dart';
import '../../themes/theme.dart';
import 'vocation_card.dart';
//  //   ///

var uuid = const Uuid();

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

// handling vocation selection
  Vocation selectedVocation = Vocation.junkie;
  void updateVocation(Vocation vocation) {
    setState(() {
      selectedVocation = vocation;
    });
  }

  // submit handler
  void handleSubmit() {
    if (_nameController.text.trim().isEmpty) {
      debugPrint('name must not be empty');
      // Show error dialog
      return;
    }
    if (_sloganController.text.trim().isEmpty) {
      debugPrint('slogan must not be empty');
      // Show error dialog
      return;
    }

    debugPrint(_nameController.text);
    debugPrint(_sloganController.text);

    characters.add(Character(
      id: uuid.v4(),
      name: _nameController.text.trim(),
      slogan: _sloganController.text.trim(),
      vocation: selectedVocation,
    ));
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
        child: SingleChildScrollView(
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
              VocationCard(
                  selected: selectedVocation == Vocation.junkie,
                  onTap: updateVocation,
                  vocation: Vocation.junkie),
              VocationCard(
                  selected: selectedVocation == Vocation.ninja,
                  onTap: updateVocation,
                  vocation: Vocation.ninja),
              VocationCard(
                  selected: selectedVocation == Vocation.raider,
                  onTap: updateVocation,
                  vocation: Vocation.raider),
              VocationCard(
                  selected: selectedVocation == Vocation.wizard,
                  onTap: updateVocation,
                  vocation: Vocation.wizard),

              // good luck message
              Center(
                child: Icon(
                  Icons.code,
                  color: AppColors.primaryColor,
                ),
              ),
              const Center(
                child: StyledHeading('Good Luck.'),
              ),
              const Center(
                child: StyledText('Enjoy the journey.'),
              ),
              const SizedBox(height: 30),

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
      ),
    );
  }
}
