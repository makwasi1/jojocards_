import 'package:flutter/material.dart';
import 'package:jojocards/screens/favoritepage.dart';
import 'package:jojocards/screens/home_page.dart';
import 'package:jojocards/screens/settingpage.dart';

// class CategoryButtonBar extends StatelessWidget {
//   var currentIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       bottomNavigationBar: Container(
//         margin: EdgeInsets.all(20),
//         height: size.width * .155,
//         decoration: BoxDecoration(
//           color: Colors.white,
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(.15),
//               blurRadius: 30,
//               offset: Offset(0, 10),
//             ),
//           ],
//           borderRadius: BorderRadius.circular(50),
//         ),
//         child: ListView.builder(
//           itemCount: 4,
//           scrollDirection: Axis.horizontal,
//           padding: EdgeInsets.symmetric(horizontal: size.width * .024),
//           itemBuilder: (context, index) => InkWell(
//             onTap: () {
//               setState(
//                 () {
//                   currentIndex = index;
//                 },
//               );
//             },
//             splashColor: Colors.transparent,
//             highlightColor: Colors.transparent,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 AnimatedContainer(
//                   duration: Duration(milliseconds: 1500),
//                   curve: Curves.fastLinearToSlowEaseIn,
//                   margin: EdgeInsets.only(
//                     bottom: index == currentIndex ? 0 : size.width * .029,
//                     right: size.width * .0422,
//                     left: size.width * .0422,
//                   ),
//                   width: size.width * .128,
//                   height: index == currentIndex ? size.width * .014 : 0,
//                   decoration: BoxDecoration(
//                     color: Colors.blueAccent,
//                     borderRadius: BorderRadius.vertical(
//                       bottom: Radius.circular(10),
//                     ),
//                   ),
//                 ),
//                 Icon(
//                   listOfIcons[index],
//                   size: size.width * .076,
//                   color: index == currentIndex
//                       ? Colors.blueAccent
//                       : Colors.black38,
//                 ),
//                 SizedBox(height: size.width * .03),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//   List<IconData> listOfIcons = [
//     Icons.home_rounded,
//     Icons.favorite_rounded,
//     Icons.settings_rounded,
//     Icons.person_rounded,
//   ];
//   }

class CategoryButtonBar extends StatefulWidget {
  @override
  _CategoryButtonBarState createState() => _CategoryButtonBarState();
}

class _CategoryButtonBarState extends State<CategoryButtonBar> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    HomePage(),
    FavoritePage(),
    SettingsPage(),
  ];

   void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
      elevation: 0,
      iconSize: 30,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Favorite',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
        ),
      ],
      currentIndex: _currentIndex,

      selectedItemColor: Colors.amber[800],
      onTap: _onItemTapped,
    ));
  }
}
