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

// Dummy character data

List<Character> characters = [
  Character(
      id: '1', name: 'Klara', vocation: Vocation.wizard, slogan: 'Kapumf!'),
  Character(
      id: '2',
      name: 'Jonny',
      vocation: Vocation.junkie,
      slogan: 'Light me up...'),
  Character(
      id: '3',
      name: 'Crimson',
      vocation: Vocation.raider,
      slogan: 'Fire in the hole!'),
  Character(
      id: '4',
      name: 'Shaun',
      vocation: Vocation.ninja,
      slogan: 'Alright then gang.'),
];
