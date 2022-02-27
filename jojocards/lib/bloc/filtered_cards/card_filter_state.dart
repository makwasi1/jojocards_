part of 'card_filter_bloc.dart';

abstract class CardFilterState extends Equatable {
  const CardFilterState();

  @override
  List<Object> get props => [];
}

class CardFilterLoading extends CardFilterState {}

class CardFilterLoaded extends CardFilterState {
  final List<PlaceInfo> filterCards;
  final CategoryFilter cardsFilter;

  const CardFilterLoaded({@required this.filterCards, this.cardsFilter = CategoryFilter.all});

  @override
  List<Object> get props => [
    filterCards,
    cardsFilter
  ];
}
