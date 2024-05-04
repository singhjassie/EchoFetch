import 'package:echofetch/widgets/shoping/model/gadget_model.dart';
import 'package:flutter/material.dart';

@immutable
abstract class HomeEvent {}

class HomeInitialEvent extends HomeEvent{}

class CartIconClickedEvent extends HomeEvent{
  final GadgetModel product;

  CartIconClickedEvent({required this.product});
}
class CartNavigateEvent extends HomeEvent{}