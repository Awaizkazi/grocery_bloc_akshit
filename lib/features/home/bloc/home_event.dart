part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class HomeInitialEvent extends HomeEvent {}

class HomeProductWishlistButtonClicketEvent extends HomeEvent {
  final ProductDataModel clickedProduct;

  HomeProductWishlistButtonClicketEvent({required this.clickedProduct});
}

class HomeProductCartButtonClicketEvent extends HomeEvent {
  final ProductDataModel clickedProduct;

  HomeProductCartButtonClicketEvent({required this.clickedProduct});
}

class HomeWishlistButtonNavigateEvent extends HomeEvent {}

class HomeCratButtonNavigateEvent extends HomeEvent {}
