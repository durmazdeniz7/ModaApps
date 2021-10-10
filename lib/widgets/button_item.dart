import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtomItem extends StatelessWidget {
  const ButtomItem({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.reply,color: Colors.brown.withOpacity(0.4),size: 30,),
        const SizedBox(width: 10,),
         Text("1.7K",style: GoogleFonts.montserrat(fontSize: 16),) ,

         const SizedBox(width: 25,),
         Icon(Icons.comment,color: Colors.brown.withOpacity(0.4),size: 30,),
        const SizedBox(width: 10,),
         Text("325",style: GoogleFonts.montserrat(fontSize: 16),) ,
       const  Spacer(),
        const Icon(Icons.favorite,color: Colors.red,size: 30,),
        const SizedBox(width: 10,),
         Text("325",style: GoogleFonts.montserrat(fontSize: 16),) ,

         

      ],
      
    );
  }
}