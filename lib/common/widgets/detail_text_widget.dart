import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderDetail extends StatelessWidget {
  OrderDetail({required this.label, required this.value});
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Padding(
        padding: EdgeInsets.symmetric(
          vertical: 4,
        ),
        child: Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(label,
                  style: GoogleFonts.lato(
                    fontSize: 16,
                    color: colorScheme.onBackground,
                    fontWeight: FontWeight.bold,
                  )),
              Text(value,
                  style: GoogleFonts.lato(
                    fontSize: 16,
                    color: colorScheme.onBackground,
                  )),
            ],
          ),
        )
        );
  }
}
