import 'package:flutter/material.dart';
import 'package:moda_apps/pages/detail.dart';

class BodyItem extends StatelessWidget {
  const BodyItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const DetailsPage(
                    imagePath: "assets/images/modelgrid1.jpeg")));
          },
          child: Hero(
            tag: "assets/images/modelgrid1.jpeg",
            child: Container(
              height: 200,
              width: (MediaQuery.of(context).size.width - 50) / 2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: const DecorationImage(
                      image: AssetImage("assets/images/modelgrid1.jpeg"),
                      fit: BoxFit.cover)),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          children: [
            InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const DetailsPage(imagePath: "assets/images/modelgrid2.jpeg")));
              },
              child: Hero(
                tag: "assets/images/modelgrid2.jpeg",
                child: Container(
                  height: 95,
                  width: (MediaQuery.of(context).size.width - 100) / 2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: const DecorationImage(
                          image: AssetImage("assets/images/modelgrid2.jpeg"),
                          fit: BoxFit.cover)),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const DetailsPage(imagePath: "assets/images/modelgrid3.jpeg")));
              },
              child: Hero(
                tag: "assets/images/modelgrid3.jpeg",
                child: Container(
                  height: 95,
                  width: (MediaQuery.of(context).size.width - 100) / 2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: const DecorationImage(
                          image: AssetImage("assets/images/modelgrid3.jpeg"),
                          fit: BoxFit.cover)),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
