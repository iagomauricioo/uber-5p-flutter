import 'package:flutter/material.dart';

import '../themes/CustomTextStyle.dart';
import '../themes/CustomTheme.dart';

class AccountHeader extends StatelessWidget {
  const AccountHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: CustomTheme.primaryColor,
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Mozart Melo',
                  style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                      fontWeight: FontWeight.w800),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: CustomTheme.alternate,
                        ),
                        child: const Row(
                          children: [
                            Icon(
                              Icons.star_rounded,
                              color: Colors.yellowAccent,
                              size: 24,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(4, 0, 4, 0),
                              child: Text(
                                '4.85',
                                style: CustomTextStyle.bodyMedium,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
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
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.network(
                    '500x500?person',
                  ).image,
                ),
                boxShadow: const [
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
    );
  }
}
