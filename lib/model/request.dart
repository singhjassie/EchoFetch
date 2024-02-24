import 'dart:collection';

import 'package:uuid/uuid.dart';

Uuid uuid = Uuid();

class Request{
  Request({required this.selectedItems, required this.requestDate}):
    id = uuid.v4(), expectedDate = requestDate.copyWith(day: requestDate.day+5);
    
  final String id;
  final HashMap selectedItems;
  final DateTime requestDate;
  final DateTime expectedDate;
}