import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moda_apps/constant/text.dart';
import 'package:moda_apps/widgets/body_item.dart';
import 'package:moda_apps/widgets/button_item.dart';
import 'package:moda_apps/widgets/tag_item.dart';
import 'package:moda_apps/widgets/top_item.dart';


class MyBody extends StatelessWidget {
  const MyBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(top: 10),
      children: [
        _storyItem(),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Material(
            elevation: 4,
            borderRadius: BorderRadius.circular(16),
            // color: Colors.blue.shade300,
            child: Container(
              padding: const EdgeInsets.all(16),
              height: 500,
              width: double.infinity,
              child: Column(
                children: [
                  const TopItem(),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    TextHelp.tex,
                    style: GoogleFonts.montserrat(
                        fontSize: 13, color: Colors.grey),
                  ),
                  const SizedBox(height: 15),
                  const SizedBox(
                    height: 15,
                  ),
                  const BodyItem(),
                  const SizedBox(
                    height: 10,
                  ),
                  const TagItem(),
                  const SizedBox(height: 20,),
                  const Divider(),
                  const SizedBox(height: 20,),
                const  ButtomItem()

                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  SizedBox _storyItem() {
    return SizedBox(
      height: 160,
      width: double.infinity,
      child: ListView(
        padding: const EdgeInsets.all(15),
        scrollDirection: Axis.horizontal,
        children: [
          _listItem(
              "assets/images/model1.jpeg", "assets/images/chanellogo.jpg"),
          const SizedBox(
            width: 30,
          ),
          _listItem(
              "assets/images/model2.jpeg", "assets/images/louisvuitton.jpg"),
          const SizedBox(
            width: 30,
          ),
          _listItem("assets/images/model3.jpeg", "assets/images/chloelogo.png"),
          const SizedBox(
            width: 30,
          ),
          _listItem(
              "assets/images/model1.jpeg", "assets/images/chanellogo.jpg"),
          const SizedBox(
            width: 30,
          ),
          _listItem(
              "assets/images/model2.jpeg", "assets/images/louisvuitton.jpg"),
          const SizedBox(
            width: 30,
          ),
          _listItem("assets/images/model3.jpeg", "assets/images/chloelogo.png"),
        ],
      ),
    );
  }

  Widget _listItem(String imagePath, String logoPath) {
    return Column(
      children: [
        _stackPhoto(imagePath, logoPath),
        const SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.center,
          height: 20,
          width: 75,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.brown),
          child: Text(
            "Follow",
            style: GoogleFonts.montserrat(color: Colors.white),
          ),
        ),
      ],
    );
  }

  Stack _stackPhoto(String imagePath, String logoPath) {
    return Stack(
      children: [
        Container(
          width: 75,
          height: 75,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(
                image: AssetImage(imagePath), fit: BoxFit.cover),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            width: 25,
            height: 35,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(logoPath), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(38)),
          ),
        )
      ],
    );
  }
}
