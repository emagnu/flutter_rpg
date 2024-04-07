//  //   ///
//  Import LIBRARIES
//  Import FILES
import 'stats.dart';
//  //   ///

// class Character {
//   final String name;
//   final String slogan;
//   final String id;
//   bool _isFav = false;

//   Character({
//     required this.name,
//     required this.slogan,
//     required this.id,
//   });

//   void tiggleIsFav() {
//     _isFav = !_isFav;
//   }
// }

class Character with Stats {
  final String name;
  final String slogan;
  final String id;
  bool _isFav = false;

  Character({
    required this.name,
    required this.slogan,
    required this.id,
  });

// Getter
  bool get isFav => _isFav;

// Setter
  set isFav(bool value) {
    _isFav = value;
  }

// Method
  void tiggleIsFav() {
    _isFav = !_isFav;
  }
}
