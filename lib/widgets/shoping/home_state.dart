import 'package:echofetch/widgets/shoping/model/cart_list.dart';
import 'package:echofetch/widgets/shoping/model/gadget_list.dart';
import 'package:echofetch/widgets/shoping/model/gadget_model.dart';
import 'package:flutter/material.dart';

@immutable
abstract class HomeState {}

abstract class HomeActionState extends HomeState {}

final class HomeInitial extends HomeState {}

class HomeLoadedState extends HomeState {
  final List<GadgetModel> model = electronicGadgets
      .map((e) => GadgetModel(
          category: e['category'],
          name: e['name'],
          price: e['price'],
          image: e['image'],
          rating: e['rating'],
          likesPercentage: e['likesPercentage'],
          numberOfReviews: e['numberOfReviews'],
          description: e['description'],
          sale: e['sale']))
      .toList();
final List<GadgetModel>items = cartItems;
}

class CartIconClickedActionState extends HomeActionState{}
class CartNavigateActionState extends HomeActionState{}