import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:jojocards/bloc/card_bloc/card_bloc.dart';
import 'package:jojocards/models/categories.dart';
import 'package:jojocards/models/filtered_category.dart';

part 'card_filter_event.dart';
part 'card_filter_state.dart';

class CardFilterBloc extends Bloc<CardFilterEvent, CardFilterState> {
  final CardBloc _cardBloc;
  StreamSubscription _cardStreamSubscription;

  CardFilterBloc({@required CardBloc cardBloc}) : _cardBloc = cardBloc, 
        super(CardFilterLoading()) {
    on<UpdateCards>(_onUpdateCards);
    on<UpdateFilter>(_onUpdateFilter);
    
    _cardStreamSubscription = cardBloc.stream.listen((state) {
      add(const UpdateCards());
    });
  }

  void _onUpdateFilter(UpdateFilter event, Emitter<CardFilterState> emit) {
    if(state is CardFilterLoading){
      add(const UpdateCards(cardsFilter: CategoryFilter.pending),);
    }

    if(state is CardFilterLoaded) {
      final state = this.state as CardFilterLoaded;

      add(UpdateCards(cardsFilter: state.cardsFilter),);
    }
  }

  void _onUpdateCards(UpdateCards event , Emitter<CardFilterState> emit){
    final state = _cardBloc.state;
    if(state is CardLoaded){
      // ignore: missing_return
      List<PlaceInfo> cards = state.cards.where((card) {
        assert(card != null);
        switch (event.cardsFilter){
          case CategoryFilter.all:
            return true;
          case CategoryFilter.completed:
            return !card.isCompleted;
          case CategoryFilter.cancelled:
            return !card.isCancelled;
          case CategoryFilter.pending:
            return !(card.isCancelled || !card.isCompleted);
        }
      }).toList();
      emit(CardFilterLoaded(filterCards: cards));
    }

  }
}
