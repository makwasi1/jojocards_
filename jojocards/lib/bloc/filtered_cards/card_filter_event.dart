part of 'card_filter_bloc.dart';

abstract class CardFilterEvent extends Equatable {
  const CardFilterEvent();

  @override
  List<Object> get props => [];
}

class UpdateFilter extends CardFilterEvent{
  const UpdateFilter();

  @override
  List<Object> get props => [];
}

class UpdateCards extends CardFilterEvent{
  final CategoryFilter cardsFilter;

  const UpdateCards({this.cardsFilter = CategoryFilter.all});

  @override
  List<Object> get props => [cardsFilter];
}
