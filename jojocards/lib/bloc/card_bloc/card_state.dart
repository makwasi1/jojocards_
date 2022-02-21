part of 'card_bloc.dart';


abstract class CardState extends Equatable {
  const CardState();

  @override
  List<Object> get props => [];
}

class CardLoading extends CardState {}

class CardLoaded extends CardState{
  final List<PlaceInfo> cards;

  const CardLoaded({this.cards = const <PlaceInfo> []});

  @override
  List<Object> get props => [cards];
}
