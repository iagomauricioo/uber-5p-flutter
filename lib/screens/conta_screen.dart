import 'package:flutter/material.dart';
import 'package:novo_uber_flutter/themes/CustomTextStyle.dart';
import 'package:novo_uber_flutter/themes/CustomTheme.dart';

class TelaConta extends StatelessWidget {
  const TelaConta({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: CustomTheme.alternate,
          ),
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mozart Melo',
                      style: CustomTextStyle.bodyMedium,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star_rounded,
                            color: Color(0xFFFFC107),
                            size: 16,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(4, 0, 4, 0),
                            child: Text(
                              '4.85',
                              style: CustomTextStyle.bodyMedium,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(4, 0, 4, 0),
                            child: Text(
                              '(1074 avaliações)',
                              style: CustomTextStyle.bodyMedium,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.network(
                        '500x500?person',
                      ).image,
                    ),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 6,
                        color: CustomTheme.primaryColor,
                        offset: Offset(
                          0,
                          10,
                        ),
                      )
                    ],
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Color(0x0039D2C0),
                      width: 2,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(24),
                    child: Image.asset(
                      'assets/images/mozart.png',
                      width: 200,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
