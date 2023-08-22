import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  String _message = 'لا يوجد رسالة';

  @override
  Widget build(BuildContext context) {
    ModalRoute? modalRoute = ModalRoute.of(context);
    if(modalRoute != null && modalRoute.settings.arguments != null){
      debugPrint('${modalRoute.settings.arguments}');
      // if(modalRoute.settings.arguments is Map<String,dynamic>){
        Map<String,dynamic> map = modalRoute.settings.arguments as Map<String,dynamic>;
        if(map.containsKey('message')){
          _message = map['message'];
        }
      // }
    }
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'عن التطبيق',
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
          _message,
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
