import 'package:flutter/material.dart';
import 'package:novo_uber_flutter/themes/DivideList.dart';

import '../themes/CustomTheme.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Colors.transparent),
      ),
      child: Expanded(
        child: Align(
          alignment: const AlignmentDirectional(0, -1),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              width: 350,
              height: 60,
              decoration: BoxDecoration(
                color: CustomTheme.alternate,

                boxShadow: const [
                  BoxShadow(
                    blurRadius: 4,
                    color: Color(0x33000000),
                    offset: Offset(
                      0,
                      2,
                    ),
                  )
                ],
                borderRadius: BorderRadius.circular(24),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Icon(
                        Icons.search,
                        color: CustomTheme.primaryText,
                        // Usando a cor do CustomTheme
                        size: 30,
                      ),
                      const Text(
                        'Para onde?',
                        style: TextStyle(
                          fontFamily: 'Inter Tight',
                          fontSize: 18,
                          color: CustomTheme.secondaryText,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.0,
                        ),
                      ),
                    ].divide(const SizedBox(width: 7)),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const SizedBox(
                        height: 40,
                        child: VerticalDivider(
                          thickness: 1,
                          color: CustomTheme.secondaryBackground,
                        ),
                      ),
                      Container(
                        width: 131.8,
                        height: 40,
                        decoration: BoxDecoration(
                          color: CustomTheme.secondaryBackground,
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.calendar_month_rounded,
                              color: CustomTheme.primaryText,
                              size: 24,
                            ),
                            Text(
                              'Mais tarde',
                              style: TextStyle(
                                fontFamily: 'Inter Tight',
                                color: CustomTheme.primaryText,
                                letterSpacing: 0.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


