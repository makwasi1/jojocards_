// import 'package:jojocards/models/categories.dart';
// import 'package:shared_preferences/shared_preferences.dart';


// class PreferencesService {
//   Future saveSettings(PlaceInfo card) async {
//     final preferences = await SharedPreferences.getInstance();

//     await preferences.setString('id', card.id);
//     await preferences.setString('category', card.category);
//     await preferences.setString('name', card.name);
//     await preferences.setString('', card.);

//     print('Saved settings');
//   }

//   Future<Settings> getSettings() async {
//     final preferences = await SharedPreferences.getInstance();

//     final username = preferences.getString('username');
//     final isEmployed = preferences.getBool('isEmployed');
//     final gender = Gender.values[preferences.getInt('gender') ?? 0];

//     final programmingLanguagesIndicies =
//         preferences.getStringList('programmingLanguages');

//     final programmingLanguages = programmingLanguagesIndicies
//         .map(
//             (stringIndex) => ProgrammingLanguage.values[int.parse(stringIndex)])
//         .toSet();

//     return Settings(
//         username: username,
//         gender: gender,
//         programmingLanguages: programmingLanguages,
//         isEmployed: isEmployed);
//   }
// }