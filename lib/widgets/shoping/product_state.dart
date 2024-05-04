import 'package:flutter/material.dart';


@immutable
abstract  class ProductState {}
abstract class ProductActionState extends ProductState{}

 class ProductInitial extends ProductState {}

class FavoriteButtonClickedActionState extends ProductActionState{}

class FavoriteButtonRemoveActionState extends ProductActionState{}

class AddButtonActionState extends ProductActionState{}