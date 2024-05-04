import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:echofetch/widgets/shoping/model/cart_list.dart';
import 'package:echofetch/widgets/shoping/model/fac_list.dart';
import 'package:echofetch/widgets/shoping/product_event.dart';
import 'package:echofetch/widgets/shoping/product_state.dart';



class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductInitial()) {
    on<FavoriteButtonClickedEvent>(favoriteButtonClickedEvent);
    on<FavoriteButtonRemoveEvent>(favoriteButtonRemoveEvent);
    on<CartNavigateEvent>(cartNavigateEvent);
  }

  FutureOr<void> favoriteButtonClickedEvent(
      FavoriteButtonClickedEvent event, Emitter<ProductState> emit) {
    print("Item Added${event.clickedProduct.name}");

    favoriteList.add(event.clickedProduct);
    emit(FavoriteButtonClickedActionState());
  }

  FutureOr<void> favoriteButtonRemoveEvent(
      FavoriteButtonRemoveEvent event, Emitter<ProductState> emit) {
    print("Item removed");
    favoriteList.remove(event.clickedProduct);
    emit(FavoriteButtonRemoveActionState());
  }

  FutureOr<void> cartNavigateEvent(
      CartNavigateEvent event, Emitter<ProductState> emit) {
    cartItems.add(event.clickedProduct);
    emit(AddButtonActionState());
  }
}