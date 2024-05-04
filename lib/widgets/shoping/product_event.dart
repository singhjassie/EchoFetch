import 'package:echofetch/widgets/shoping/model/gadget_model.dart';
import 'package:flutter/material.dart';


@immutable
abstract class ProductEvent {}

class FavoriteButtonClickedEvent extends ProductEvent{

  final GadgetModel clickedProduct;

  FavoriteButtonClickedEvent({required this.clickedProduct});
}

class FavoriteButtonRemoveEvent extends ProductEvent{
  final GadgetModel clickedProduct;

  FavoriteButtonRemoveEvent({required this.clickedProduct});
}
class CartNavigateEvent extends ProductEvent{
  final GadgetModel clickedProduct;

  CartNavigateEvent({required this.clickedProduct});
}