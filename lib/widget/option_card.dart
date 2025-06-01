import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:novo_uber_flutter/themes/CustomTheme.dart';

class OptionCard extends StatelessWidget {
  final IconData icon;
  final String text;
  final bool isPromo;
  final bool allowMultiline;

  const OptionCard({
    super.key,
    required this.icon,
    required this.text,
    this.isPromo = false,
    this.allowMultiline = false,
  });

  TextStyle _getTextStyle(BuildContext context, {bool isSmall = false}) {
    final baseStyle = isSmall
        ? Theme.of(context).textTheme.bodySmall
        : Theme.of(context).textTheme.bodyMedium;
    return baseStyle!.copyWith(
      fontFamily: GoogleFonts.inter().fontFamily,
      color: CustomTheme.primaryText,
      letterSpacing: 0.0,
      fontWeight: FontWeight.w500,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          color: CustomTheme.secondaryBackground,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: CustomTheme.alternate, width: 1),
        ),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    icon,
                    color: CustomTheme.primaryText,
                    size: 32,
                  ),
                  const SizedBox(height: 8),
                  Flexible(
                    child: Container(
                      width: double.infinity,
                      child: Text(
                        text,
                        style: _getTextStyle(context),
                        maxLines: allowMultiline ? 2 : 1,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            if (isPromo)
              Align(
                alignment: AlignmentDirectional(1, -1),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 0),
                  child: Container(
                    width: 60,
                    height: 29.5,
                    decoration: BoxDecoration(
                      color: Color(0xFF4CAF50), // Verde Material Design
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          'Promo',
                          style: _getTextStyle(context, isSmall: true).copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
