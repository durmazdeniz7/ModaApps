import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moda_apps/widgets/detail_detail.dart';

class DetailsPage extends StatefulWidget {
  final String imagePath;
  const DetailsPage({required this.imagePath, Key? key}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(backgroundColor: Colors.transparent,elevation: 0,),
      body: Stack(
        children: [
          Hero(
            tag: widget.imagePath,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.imagePath), fit: BoxFit.cover)),
            ),
          ),
          Positioned(
            left: 15,
            right: 15,
            bottom: 15,
            child: Material(
              borderRadius: BorderRadius.circular(15),
              elevation: 4,
              child: Container(
                
                width: double.infinity,
                height: MediaQuery.of(context).size.height/3,
                decoration: BoxDecoration(            
                  borderRadius: BorderRadius.circular(15),
                ),

child: const DetailDetail(),


              ),
            ),
          ),
        _tagDress()
        ],
      ),
    );
  }

  Widget _tagDress() {
    return Positioned(
      top: MediaQuery.of(context).size.height/2,
      left: 50,
      child: Container(
        alignment: Alignment.center,
height: 40,
width: 150,
decoration: BoxDecoration(
  color: Colors.black.withOpacity(0.4),
  borderRadius: BorderRadius.circular(8),
),
child: Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
        Text("LAMINAMATED",style: GoogleFonts.montserrat(color: Colors.white,fontWeight: FontWeight.bold),),
        const Icon(Icons.arrow_forward_ios,color: Colors.white,)
  ],
),
      ),
    );
  }
}
