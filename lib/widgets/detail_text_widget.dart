import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderDetail extends StatelessWidget {
  OrderDetail({required this.label, required this.value});
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
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
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  )),
              Text(value,
                  style: GoogleFonts.lato(
                    fontSize: 16,
                    color: Colors.black,
                  )),
            ],
          ),
        )
        // child: RichText(
        //   text: TextSpan(
        //     style: GoogleFonts.lato(
        //       fontSize: 16,
        //       color: Colors.black,
        //     ),
        //     children: <TextSpan>[
        //       TextSpan(
        //         text: label,
        //         style: GoogleFonts.lato(
        //           fontWeight: FontWeight.bold,
        //         ),
        //       ),
        //       TextSpan(
        //         text: value,
        //       )
        //     ],
        //   ),
        // ),
        );
  }
}
