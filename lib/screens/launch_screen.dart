import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    super.initState();
    debugPrint('initState');
    Future.delayed(const Duration(seconds: 5),(){
      // Navigator.pushNamed(context,'/home_screen' );
      Navigator.pushReplacementNamed(context, '/home_screen');
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('build');
    return Scaffold(
      body: Container(
        // height: ,
        // width: ,
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
        child: Text('المسبحة الالكترونية',style: GoogleFonts.arefRuqaa(
          fontSize: 24,
          fontWeight: FontWeight.w800,
          color: const Color(0xFFEDF1D6),
        ),),
      ),
    );
  }
  }


