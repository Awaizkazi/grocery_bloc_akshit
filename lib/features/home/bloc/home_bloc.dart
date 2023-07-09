import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeProductWishlistButtonClicketEvent>(
        homeProductWishlistButtonClicketEvent);
    on<HomeProductCartButtonClicketEvent>(homeProductCartButtonClicketEvent);
    on<HomeWishlistButtonNavigateEvent>(homeWishlistButtonNavigateEvent);
    on<HomeCratButtonNavigateEvent>(homeCratButtonNavigateEvent);
  }

  FutureOr<void> homeProductWishlistButtonClicketEvent(
      HomeProductWishlistButtonClicketEvent event, Emitter<HomeState> emit) {
    print('Wishlist Product Clicked');
  }

  FutureOr<void> homeProductCartButtonClicketEvent(
      HomeProductCartButtonClicketEvent event, Emitter<HomeState> emit) {
    print('Cart Procuct Clicked');
  }

  FutureOr<void> homeWishlistButtonNavigateEvent(
      HomeWishlistButtonNavigateEvent event, Emitter<HomeState> emit) {
    print('Wishlist Navigate Clicked');
    emit(HomeNavigateToWishListPageActionState());
  }

  FutureOr<void> homeCratButtonNavigateEvent(
      HomeCratButtonNavigateEvent event, Emitter<HomeState> emit) {
    print('Cart Navigate Clicked');
    emit(HomeNavigateToCartPageActionState());
  }
}
