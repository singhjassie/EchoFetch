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
        DropdownMenuItem(child: Text('Gift Card'),value: '-1',),
        DropdownMenuItem(child: Text('Discount Coupon'),value: '1',),
        DropdownMenuItem(child: Text('Loyalty Points'),value: '2',),
        DropdownMenuItem(child: Text('Buy One Get One (BOGO)'),value: '3',),
        DropdownMenuItem(child: Text('Free Shipping'),value: '4',),
        DropdownMenuItem(child: Text('Cashback'),value: '5',),
      ], onChanged: (v){});
  }
}
