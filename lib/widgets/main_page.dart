import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moda_apps/widgets/my_body.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Fashion App",
            style: GoogleFonts.montserrat(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 22)),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.camera_alt,color: Colors.grey,))
        ],
      ),

      body: const MyBody(),
    );
  }
}
