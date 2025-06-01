import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:novo_uber_flutter/themes/CustomTheme.dart';
import 'package:novo_uber_flutter/widget/options_section.dart';

extension ListSpacing on List<Widget> {
  List<Widget> divide(Widget separator) {
    if (length <= 1) return this;

    final List<Widget> result = [];
    for (int i = 0; i < length - 1; i++) {
      result.add(this[i]);
      result.add(separator);
    }
    result.add(last);
    return result;
  }
}

class OptionCard extends StatelessWidget {
  final double width;
  final IconData icon;
  final String text;
  final bool isPromo;
  final bool allowMultiline;

  const OptionCard({
    super.key,
    required this.width,
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
      color: Colors.white,
      letterSpacing: 0.0,
      fontWeight: FontWeight.w500,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(12),
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
                  color: Colors.white,
                  size: 32,
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                  child: Text(
                    text,
                    style: _getTextStyle(context),
                    maxLines: allowMultiline ? 2 : 1,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
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
                    color: Color(0xFFFF5252),
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
    );
  }
}

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

class TelaOpcoes extends StatelessWidget {
  const TelaOpcoes({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(16, 24, 16, 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Primeira seção - Transporte
                    const TransportSection(),

                    // Divisor
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0, 24, 0, 24),
                      child: Divider(
                        height: 1,
                        thickness: 1,
                        color: CustomTheme.alternate,
                      ),
                    ),

                    // Segunda seção - Serviços
                    const ServicesSection(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
