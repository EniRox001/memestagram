import 'package:flutter/material.dart';

class WDivider extends StatelessWidget {
  const WDivider({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const Expanded(
          child: Divider(
            thickness: 1.2,
            color: Colors.grey,
          ),
        ),
        const SizedBox(width: 20.0),
        Text(
          text,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(width: 20.0),
        const Expanded(
          child: Divider(
            thickness: 1.2,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
