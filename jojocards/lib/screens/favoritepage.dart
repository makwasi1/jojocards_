import 'package:flutter/material.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({ Key key }) : super(key: key);

  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back)
        ),
          centerTitle: true,
          backgroundColor: Color(0xFFA9443F),
          actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.exit_to_app),
            tooltip: 'Log out',
            onPressed: () {
              // handle the press
            },
          ),
        ],
        title: const Text('Favorites'),
      ),
  body:  const Center(
    child: Text("Favorites page"),
  ),
    );
  }
}