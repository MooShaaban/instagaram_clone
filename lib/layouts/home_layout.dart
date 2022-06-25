import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
            'Instagram',
          style: GoogleFonts.pacifico(
            textStyle: TextStyle(
              fontSize: 27
            )
          ),
        ),
        actions: [
          Image.asset('assets/images/add.png', color: Colors.white, height: 25, width: 25,),
          SizedBox(width: 20,),
          Image.asset('assets/images/heart.png', color: Colors.white, height: 25, width: 25,),
          SizedBox(width: 20,),
          Image.asset('assets/images/messenger.png', color: Colors.white,height: 25,width: 25,),
          SizedBox(width: 15,),
        ],
        elevation: 0.0,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        backgroundColor: Colors.black,

      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [

              ],
            )
          ],
        ),
      ),
    );
  }
}
