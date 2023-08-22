import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FAQsScreen extends StatelessWidget {
  const FAQsScreen({Key? key , this.message = 'واجهة الاسئلة'}) : super(key: key);

 final String message;
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'الاسئلة الشائعة',
          style: GoogleFonts.arefRuqaa(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        alignment: AlignmentDirectional.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
            colors: [
              Color(0xFF9DC08B),
              Color(0xFF40513B),
            ],
          ),
        ),
        child: Text(
          message ,
          style: GoogleFonts.arefRuqaa(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xFFEDF1D6)
          ),
        ),
      ),
    );
  }
}
