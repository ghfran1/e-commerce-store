import 'package:flutter/material.dart';
import 'package:example/constans.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:example/widgets/home/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        backgroundColor: Colors.grey[200],
      appBar: homeAppBar(),
      body:  const HomeBody(),
   
    );
    
  }

  AppBar homeAppBar() {
    return AppBar(
      title:  Text(
        "متجر بيع",
 
      style: GoogleFonts.almarai(),

      ),
      actions: [
        IconButton(
          onPressed: (){}, 
          icon:  const Icon (Icons.menu),
          ),
      ],
      backgroundColor: kPrimaryColor,
    );
  }
}
