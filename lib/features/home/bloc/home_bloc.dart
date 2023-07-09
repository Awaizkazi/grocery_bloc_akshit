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
  }

  FutureOr<void> homeProductWishlistButtonClicketEvent(
      HomeProductWishlistButtonClicketEvent event, Emitter<HomeState> emit) {}

  FutureOr<void> homeProductCartButtonClicketEvent(
      HomeProductCartButtonClicketEvent event, Emitter<HomeState> emit) {}
}





