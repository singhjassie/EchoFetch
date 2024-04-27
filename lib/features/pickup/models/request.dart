import 'dart:collection';

import 'package:echofetch/features/pickup/models/waste_item.dart';
import 'package:intl/intl.dart';
import 'package:shortid/shortid.dart';

DateFormat formatter = DateFormat.yMd();

class Request{
  Request({required this.selectedItems, required this.requestDate, required this.chosenLocation}):
    id = shortid.characters('0123456789'), expectedDate = requestDate.copyWith(day: requestDate.day+5);
    
  final String id;
  final HashSet<WasteItem> selectedItems;
  final String chosenLocation;
  final DateTime requestDate;
  final DateTime expectedDate;

  String get formattedRequestDate{
    return formatter.format(requestDate);
  }
  String get formattedExpectedDate{
    return formatter.format(expectedDate);
  }
  String get formattedSelectedItems{
    String formattedItemList = '';
    for (final item in selectedItems)
      formattedItemList += '${item.title}\n';
    return formattedItemList;
  }
}