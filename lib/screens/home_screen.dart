//  //   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
//  Import FILES
//  //   ///

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Characters'),
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
              const Text('Character List'),
              FilledButton(
                onPressed: () {},
                child: const Text('Create New'),
              ),
            ],
          )),
    );
  }
}
