part of 'card_bloc.dart';


abstract class CardEvent extends Equatable {
  const CardEvent();

  @override
  List<Object> get props => [];
}

class LoadCard extends CardEvent {
  final List<PlaceInfo> cards;

  const LoadCard({this.cards = const <PlaceInfo>[]});

  @override
  List<Object> get props => [cards];
}

class UpdateCard extends CardEvent {
  final PlaceInfo card;

 const UpdateCard({this.card});

  @override
  List<Object> get props => [card];
}
