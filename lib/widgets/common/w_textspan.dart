import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class WTextSpan extends StatelessWidget {
  const WTextSpan({
    Key? key,
    required this.textOne,
    required this.textTwo,
    required this.onPressed,
  }) : super(key: key);

  final String textOne;
  final String textTwo;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
              text: textOne, style: Theme.of(context).textTheme.titleSmall),
          TextSpan(
            text: textTwo,
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: Colors.blueAccent,
                ),
            recognizer: TapGestureRecognizer()..onTap = onPressed,
          )
        ],
      ),
    );
  }
}
