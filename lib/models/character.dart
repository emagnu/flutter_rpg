//  //   ///
//  Import LIBRARIES
//  Import FILES
import 'skill.dart';
import 'stats.dart';
import 'vocation.dart';
//  //   ///

class Character with Stats {
  // fields
  final Set<Skill> skills = {};
  final Vocation vocation;
  final String name;
  final String slogan;
  final String id;
  bool _isFav = false;

  Character({
    required this.vocation,
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

  void updateSkill(Skill skill) {
    skills.clear();
    skills.add(skill);
  }
}
