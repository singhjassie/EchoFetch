import 'package:flutter/material.dart';


class CustomDropdownMenu extends StatefulWidget {
  const CustomDropdownMenu({super.key});

  @override
  State<CustomDropdownMenu> createState() => _CustomDropdownMenuState();
}

class _CustomDropdownMenuState extends State<CustomDropdownMenu> {
  var _value='-1';
  @override
  Widget build(BuildContext context) {
    
    return DropdownButtonFormField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 10),
        border: OutlineInputBorder(
          
          borderRadius: BorderRadius.circular(19),
          borderSide: BorderSide(
          color: Theme.of(context).colorScheme.primary))
      ),
      value: _value,
      items: [
        DropdownMenuItem(child: Text('Gift Card', style: TextStyle(color: Theme.of(context).colorScheme.onBackground),),value: '-1',),
        DropdownMenuItem(child: Text('Discount Coupon', style: TextStyle(color: Theme.of(context).colorScheme.onBackground),),value: '1',),
        DropdownMenuItem(child: Text('Loyalty Points', style: TextStyle(color: Theme.of(context).colorScheme.onBackground),),value: '2',),
        DropdownMenuItem(child: Text('Buy One Get One (BOGO)', style: TextStyle(color: Theme.of(context).colorScheme.onBackground),),value: '3',),
        DropdownMenuItem(child: Text('Free Shipping', style: TextStyle(color: Theme.of(context).colorScheme.onBackground)),value: '4',),
        DropdownMenuItem(child: Text('Cashback', style: TextStyle(color: Theme.of(context).colorScheme.onBackground),),value: '5',),
      ], onChanged: (v){});
  }
}
