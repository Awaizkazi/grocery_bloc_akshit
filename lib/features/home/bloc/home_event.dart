part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class HomeInitialEvent extends HomeEvent {}

class HomeProductWishlistButtonClicketEvent extends HomeEvent {}

class HomeProductCartButtonClicketEvent extends HomeEvent {}

class HomeWishlistButtonNavigateEvent extends HomeEvent {}

class HomeCratButtonNavigateEvent extends HomeEvent {}
