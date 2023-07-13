import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:grocery_bloc_akshit/data/cart_items.dart';
import 'package:grocery_bloc_akshit/data/wishlist_items.dart';
import 'package:grocery_bloc_akshit/features/cart/ui/wishlist.dart';
import 'package:grocery_bloc_akshit/features/home/bloc/models/home_product_data_model.dart';
import 'package:meta/meta.dart';

import '../../../data/grocery_data.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeInitialEvent>(homeInitialEvent);
    on<HomeProductWishlistButtonClicketEvent>(
        homeProductWishlistButtonClicketEvent);
    on<HomeProductCartButtonClicketEvent>(homeProductCartButtonClicketEvent);
    on<HomeWishlistButtonNavigateEvent>(homeWishlistButtonNavigateEvent);
    on<HomeCratButtonNavigateEvent>(homeCratButtonNavigateEvent);
  }
  FutureOr<void> homeInitialEvent(
      HomeInitialEvent event, Emitter<HomeState> emit) async {
    emit(HomeLoadingState());
    await Future.delayed(Duration(seconds: 1));
    emit(
      HomeLoadedSuccessState(
        products: GroceryData.groceryProducts
            .map((e) => ProductDataModel(
                id: e['id'],
                name: e['name'],
                description: e['description'],
                price: e['price'],
                imageUrl: e['imageUrl']))
            .toList(),
      ),
    );
  }

  FutureOr<void> homeProductWishlistButtonClicketEvent(
      HomeProductWishlistButtonClicketEvent event, Emitter<HomeState> emit) {
    print('Wishlist Product Clicked');
    WishlistItems.add(event.clickedProduct);
  }

  FutureOr<void> homeProductCartButtonClicketEvent(
      HomeProductCartButtonClicketEvent event, Emitter<HomeState> emit) {
    print('Cart Procuct Clicked');
    cartItems.add(event.clickedProduct);
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
