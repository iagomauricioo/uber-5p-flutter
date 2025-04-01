import 'package:flutter/material.dart';
import 'package:novo_uber_flutter/themes/CustomTextStyle.dart';
import 'package:novo_uber_flutter/themes/CustomTheme.dart';
import 'package:novo_uber_flutter/themes/DivideList.dart';

class CardListImageButton extends StatelessWidget {
  const CardListImageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0, 1),
      child: SizedBox(
        width: 356.4,
        height: 244.3,
        child: ListView(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ImageButtonCard(
                      title: 'Personalize sua experiência',
                      buttonText: 'Uber Comfort',
                      colorButton: CustomTheme.primaryColor,
                      colorText: CustomTheme.primaryColor,
                      color: const Color(0xFFFBCF00),
                      imageUrl: 'https://images.pexels.com/photos/9519975/pexels-photo-9519975.jpeg?auto=compress&cs=tinysrgb&w=600',
                      onPressed: () {
                        print('Button pressed ...');
                      },
                    ),
                    ImageButtonCard(
                      title: 'Viaje no seu horário',
                      buttonText: 'Uber Comfort',
                      colorButton: CustomTheme.primaryColor,
                      colorText: CustomTheme.primaryText,
                      color: const Color(0xFF470766),
                      imageUrl: 'https://images.pexels.com/photos/599705/pexels-photo-599705.jpeg?auto=compress&cs=tinysrgb&w=600',
                      onPressed: () {
                        print('Button pressed ...');
                      },
                    ),
                    ImageButtonCard(
                      title: 'Tudo pronto? Então, vamos lá!',
                      buttonText: 'Uber Comfort',
                      colorButton: CustomTheme.primaryColor,
                      colorText: CustomTheme.primaryColor,
                      color: const Color(0xFFA47BBC),
                      imageUrl: 'https://images.pexels.com/photos/34239/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=600',
                      onPressed: () {
                        print('Button pressed ...');
                      },
                    ),
                  ].divide(const SizedBox(width: 12)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ImageButtonCard extends StatelessWidget {
  final String title;
  final String buttonText;
  final Color color;
  final Color colorButton;
  final Color colorText;
  final String imageUrl;
  final VoidCallback onPressed;

  const ImageButtonCard({
    super.key,
    required this.title,
    required this.buttonText,
    required this.color,
    required this.imageUrl,
    required this.onPressed,
    required this.colorButton,
    required this.colorText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      height: 180,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Text and button section
          Container(
            width: 220,
            height: 180,
            decoration: BoxDecoration(
              color: color,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(0),
                topLeft: Radius.circular(10),
                topRight: Radius.circular(0),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: AlignmentDirectional(-1, -1),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      title,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: colorText,
                        fontWeight: FontWeight.w800,
                        fontSize: 22
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: Align(
                    alignment: AlignmentDirectional(-1, 1),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: ElevatedButton(
                        onPressed: onPressed,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: colorButton,
                          foregroundColor: Theme.of(context)
                              .colorScheme
                              .onBackground,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(24),
                          ),
                        ),
                        child: Text(
                          buttonText,
                          style: CustomTextStyle.bodyMedium,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Image section
          ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(0),
              bottomRight: Radius.circular(10),
              topLeft: Radius.circular(0),
              topRight: Radius.circular(10),
            ),
            child: Image.network(
              imageUrl,
              width: 130,
              height: 180,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}