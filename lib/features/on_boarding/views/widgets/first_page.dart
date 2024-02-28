import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/common/widgets/widget.dart';
import '../../../../core/res/res.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(ImageRes.todo),
          const WhiteSpace(height: 100),
          const FadingText(
            'ToDo with Riverpod',
            fontSize: 30,
            fontWeight: FontWeight.w500,
            color: Colours.light,
          ),
          const WhiteSpace(height: 10),
          Text(
            'Welcome!!! Do you want to clear task super fast with ToDo?',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.normal,
              color: Colours.darkGrey,
            ),
          ),
        ],
      ),
    );
  }
}
