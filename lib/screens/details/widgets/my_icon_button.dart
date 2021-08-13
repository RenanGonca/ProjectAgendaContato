import 'package:agenda_contato/screens/details/widgets/my_themed_icon.dart';
import 'package:flutter/material.dart';
import '../../../style.dart';

class MyIconButton extends StatelessWidget {
  final IconData icon;
  final String text;

  MyIconButton({
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: IconButton(
            padding: EdgeInsets.zero,
            constraints: BoxConstraints(),
            onPressed: (){},
            icon: MyThemedIcon(icon: this.icon)
          ),
        ),
        Text(
          this.text,
          style: TextStyle(
            color: blueTheme,
            fontSize: 10,
          ),
        )
      ],
    );
  }
}