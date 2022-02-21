import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:jojocards/models/categories.dart';
import 'package:meta/meta.dart';

part 'card_event.dart';
part 'card_state.dart';

class CardBloc extends Bloc<CardEvent, CardState> {
  CardBloc() : super(CardLoading()) {
    on<LoadCard>(_onLoadCard);
    on<UpdateCard>(_onUpdateCard);
  }

  void _onLoadCard(LoadCard event, Emitter<CardState> emit) {
    emit(
        CardLoaded(cards: event.cards)
    );
  }

  void _onUpdateCard(UpdateCard event, Emitter<CardState> emit) {
    final state = this.state;
    if(state is CardLoaded){
      List<PlaceInfo> cards = (state.cards.map((card){
        return card.id == event.card.id ? event.card : card;
      }
      )).toList();

      emit(CardLoaded(cards: cards));
  }
}}
