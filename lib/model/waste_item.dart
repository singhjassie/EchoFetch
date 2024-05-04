import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

Uuid uuid = Uuid();

class WasteItem{
  WasteItem({required this.title, required this.color, required this.price}): id = uuid.v4();
  final String id;
  final String title;
  final Color color;
  final double price;
}