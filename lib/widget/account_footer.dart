import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:novo_uber_flutter/themes/CustomTextStyle.dart';
import 'package:novo_uber_flutter/themes/CustomTheme.dart';

class AccountFooter extends StatelessWidget {
  final String title;
  final IconData icon;

  const AccountFooter({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: AlignmentDirectional(0, 0),
          child: Material(
            color: Colors.transparent,
            child: ListTile(
              leading: Icon(
                icon,
                size: 22,
                color: CustomTheme.primaryText,
              ),
              title: Text(
                title,
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 16,
                    color: CustomTheme.primaryText
                ),
              ),
              dense: false,
            ),
          ),
        ),
        Divider(
          height: 1,
          thickness: 1,
          color: CustomTheme.alternate,
        )
      ],
    );
  }
}
