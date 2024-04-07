//  //   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
//  Import FILES
import '../models/character.dart';
import '../shared/styled_button.dart';
import '../shared/styled_text.dart';
import 'character_card.dart';
//  //   ///

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // List characters = ['mario', 'luigi', 'peach', 'toad', 'bowser', 'koopa'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: const Text('Your Characters'),
        title: const StyledTitle('Your Characters'),
        centerTitle: true,
      ),
      // drawer: const NavigationDrawer()
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: const Icon(Icons.add),
      // ),
      body: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              // const Text('Character List'),
              // const StyledText('Character List'),
              // // Text('Character List',style: Theme.of(context).textTheme.headlineMedium),
              // // Text('Character List',style: Theme.of(context).textTheme.titleMedium),
              // const StyledHeading('Character List'),
              // const StyledTitle('Character List'),
              Expanded(
                child: ListView.builder(
                    itemCount: characters.length,
                    itemBuilder: (_, index) {
                      // return Container(
                      //   color: Colors.grey[800],
                      //   padding: const EdgeInsets.all(40),
                      //   margin: const EdgeInsets.only(bottom: 40),
                      //   child: Text(characters[index]),
                      // );
                      return CharacterCard(
                        character: characters[index],
                      );
                    }),
              ),

              // FilledButton(
              StyledButton(
                onPressed: () {},
                // child: const Text('Create New'),
                child: const StyledHeading('Create New'),
              ),
            ],
          )),
    );
  }
}
