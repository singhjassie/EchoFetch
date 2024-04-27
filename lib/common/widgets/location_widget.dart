import 'package:flutter/material.dart';

import 'package:echofetch/features/pickup/models/location.dart';
import 'package:google_fonts/google_fonts.dart';

class LocationWidget extends StatelessWidget {
  LocationWidget(
      {super.key,
      required this.location,
      required this.isSelected,
      required this.onTap});
  final Location location;
  final bool isSelected;
  final void Function(Location) onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap(location);
      },
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(8),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                gradient: LinearGradient(colors: [
                  Theme.of(context)
                      .colorScheme
                      .secondaryContainer
                      .withAlpha(255),
                  Theme.of(context)
                      .colorScheme
                      .secondaryContainer
                      .withAlpha(150),
                ], begin: Alignment.topLeft, end: Alignment.bottomRight),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 35),
                child: Text(
                  location.fullAddress,
                  textAlign: TextAlign.left,
                  style: GoogleFonts.lato(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
          Visibility(
            visible: isSelected,
            child: Align(
              alignment: Alignment.centerRight,
              child: Padding(
                  padding: EdgeInsets.all(12), child: Icon(Icons.check_box)),
            ),
          )
        ],
      ),
    );
  }
}