//  //   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
//  Import FILES
import '../shared/styled_button.dart';
import '../shared/styled_text.dart';
//  //   ///

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
              const StyledText('Character List'),
              // Text('Character List',style: Theme.of(context).textTheme.headlineMedium),
              // Text('Character List',style: Theme.of(context).textTheme.titleMedium),
              const StyledHeading('Character List'),
              const StyledTitle('Character List'),

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
