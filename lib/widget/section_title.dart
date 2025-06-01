import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:novo_uber_flutter/themes/CustomTheme.dart';

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            fontFamily: GoogleFonts.interTight().fontFamily,
            letterSpacing: 0.0,
            fontWeight: FontWeight.w600,
            color: CustomTheme.primaryText,
          ),
    );
  }
}
