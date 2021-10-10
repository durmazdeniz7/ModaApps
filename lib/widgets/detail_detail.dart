import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailDetail extends StatelessWidget {
  const DetailDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 120,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    image: const DecorationImage(
                        image: AssetImage("assets/images/dress.jpg"),
                        fit: BoxFit.contain)),
              ),
            ),
            textColumn(context),
          ],
        ),
        const Divider(
          height: 2,
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Text("\$6500 ",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize:22)),
              const Spacer(),
FloatingActionButton(
  backgroundColor: Colors.brown,
  onPressed: (){},child: const Icon(Icons.arrow_forward_ios,),)

            ],
          ),
        ),
      ],
    );
  }

  Column textColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "LAMİNATED",
          style:
              GoogleFonts.montserrat(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 5),
        Text(
          "Louis Vuttion",
          style: GoogleFonts.montserrat(fontSize: 16, color: Colors.grey),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
            height: 40,
            width: MediaQuery.of(context).size.width - 200,
            child: Text(
              "One button V-neck sling  long-sleeved waist female stiching dress",
              style: GoogleFonts.montserrat(fontSize: 16, color: Colors.grey),
            ))
      ],
    );
  }
}
