import 'package:echofetch/data/waste_item_list.dart';
import 'package:echofetch/widgets/overlay_steps/select_items_step.dart';
import 'package:echofetch/widgets/waste_item_widget.dart';
import 'package:flutter/material.dart';

class PricingScreen extends StatelessWidget{
  const PricingScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(14),
      child: Column(
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
                    isSelected: false,
                    onTap: (e){},
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}