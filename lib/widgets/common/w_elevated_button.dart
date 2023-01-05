import 'package:flutter/material.dart';
import 'package:memestagram/utils/colors.dart';

class WElevatedButton extends StatelessWidget {
  const WElevatedButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.color = AppColors.blue,
  }) : super(key: key);

  final VoidCallback onPressed;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: color),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(text),
          ],
        ),
      ),
    );
  }
}
