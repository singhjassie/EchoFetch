import 'dart:collection';

import 'package:echofetch/widgets/waste_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:echofetch/data/waste_item_list.dart';

class SelectItemStep extends StatefulWidget {
  SelectItemStep({super.key, required this.onNext});
  final void Function(HashSet) onNext;

  @override
  State<SelectItemStep> createState() => _SelectItemStepState();
}

class _SelectItemStepState extends State<SelectItemStep> {
  final HashSet _selectedItems = HashSet();

  void _selectMultipleItems(String id) {
    setState(() {
      if (_selectedItems.contains(id)) {
        _selectedItems.remove(id);
      } else {
        _selectedItems.add(id);
      }
    },);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 2,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
            ),
            children: [
              ...wasteItemList.map(
                (item) => WasteItemWidget(
                  wasteItem: item,
                  onTap: _selectMultipleItems,
                  isSelected: _selectedItems.contains(item.id),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 8,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            padding: EdgeInsets.symmetric(
              vertical: 14,
              horizontal: 50,
            ),
            backgroundColor: Theme.of(context).colorScheme.primary,
          ),
          onPressed: (){widget.onNext(_selectedItems);},
          child: Text(
            'Next',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }
}
