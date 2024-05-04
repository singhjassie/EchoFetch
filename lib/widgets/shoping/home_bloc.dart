import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:echofetch/widgets/shoping/home_event.dart';
import 'package:echofetch/widgets/shoping/home_state.dart';
import 'package:echofetch/widgets/shoping/model/cart_list.dart';




class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeInitialEvent>(homeInitialEvent);
    on<CartIconClickedEvent>(cartIconClickedEvent);
    on<CartNavigateEvent>(cartNavigateEvent);
  }

  FutureOr<void> homeInitialEvent(
      HomeInitialEvent event, Emitter<HomeState> emit) {
    emit(HomeLoadedState());
  }

  FutureOr<void> cartIconClickedEvent(
      CartIconClickedEvent event, Emitter<HomeState> emit) {
    print("Product clicked");
    cartItems.add(event.product);
    emit(CartIconClickedActionState());
    emit(HomeLoadedState());
  }

  FutureOr<void> cartNavigateEvent(CartNavigateEvent event, Emitter<HomeState> emit) {
    emit(CartNavigateActionState());
  }
}