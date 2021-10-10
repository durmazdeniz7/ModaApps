import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class TopItem extends StatelessWidget {
  const TopItem({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                                image: AssetImage("assets/images/model1.jpeg"),
                                fit: BoxFit.cover)),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 172,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Daily",
                              style: GoogleFonts.montserrat(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "34 minns ago",
                              style: GoogleFonts.montserrat(
                                  fontSize: 10, color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.more_vert,
                            color: Colors.grey,
                          ))
                    ],
                  );
  }
}