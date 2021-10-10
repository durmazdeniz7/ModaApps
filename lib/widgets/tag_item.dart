import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TagItem extends StatelessWidget {
  const TagItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          alignment: Alignment.center,
          width: 100,
          height: 25,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.brown.withOpacity(0.2)),
          child: Text(
            "# Louis vuitton",
            style: GoogleFonts.montserrat(fontSize: 10, color: Colors.brown),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          alignment: Alignment.center,
          width: 75,
          height: 25,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.brown.withOpacity(0.2)),
          child: Text(
            "# Chloe",
            style: GoogleFonts.montserrat(fontSize: 10, color: Colors.brown),
          ),
        ),
      ],
    );
  }
}
