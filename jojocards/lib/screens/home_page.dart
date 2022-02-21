// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jojocards/bloc/card_bloc/card_bloc.dart';
import 'package:jojocards/bloc/filtered_cards/card_filter_bloc.dart';
import 'package:jojocards/models/categories.dart';
import 'package:jojocards/models/filtered_category.dart';
import 'package:jojocards/screens/adultspage.dart';
import 'package:jojocards/screens/payment_page.dart';
import 'package:jojocards/screens/settingpage.dart';
import 'package:jojocards/utils/utils.dart';
import 'package:jojocards/widgets/categorybutton.dart';
import 'package:jojocards/widgets/categorycard.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Select Pack",
            style: TextStyle(fontSize: 25),
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
          centerTitle: true,
          backgroundColor: Color(0xFFA9443F),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.settings),
              tooltip: 'profile',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>  SettingsPage()));
              },
            ),
          ],
          bottom: TabBar(onTap: (tabIndex){
            switch (tabIndex) {
              case 0:
                BlocProvider.of<CardFilterBloc>(context).add(UpdateCards(cardsFilter: CategoryFilter.pending ));
                break;
              case 1:
                BlocProvider.of<CardFilterBloc>(context).add(UpdateCards(cardsFilter: CategoryFilter.completed));
                break;

            }
          },tabs: const [
            Tab(icon: Icon(Icons.pending)),
            Tab(icon: Icon(Icons.favorite)),

          ],),
        ),
        body: TabBarView(children: [
          _cards("Selected Packs"),
          _cards("Favorite Packs"),
        ],)

      ),
    );
  }

  BlocBuilder<CardFilterBloc, CardFilterState> _cards(String title) {
    return BlocBuilder<CardFilterBloc, CardFilterState>(
      builder: (context, state) {
        if(state is CardFilterLoading){
          return CircularProgressIndicator();
        }
        if (state is CardFilterLoaded){
          return Center(
              child: Stack(children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                        child: ListView.builder(
                          itemCount: state.filterCards.length,
                          itemBuilder: (BuildContext ctx, int index) {
                            return CategoryCard(
                                placeInfo: state.filterCards[index],
                                onCardClick: () {

                                  context.read<CardBloc>()
                                    .add(UpdateCard(
                                      card: state.filterCards[index].copyWith(isCompleted: true),
                                    ));
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //       builder: (context) => state.filterCards[index].route),
                                  // );
                                });
                          },
                        ))
                  ],
                ),
              ]));
        } else {
          return Text("Failed To load....");
        }

      },
    );
  }
}
