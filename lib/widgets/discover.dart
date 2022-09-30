import 'package:flutter/material.dart';

import '../paltte.dart';

class Discover extends StatelessWidget {
  const Discover({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Discover',
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 36,
          ),
        ),
        Text(
          'News from all over the world.',
          style: kTextLightGrey,
        ),
      ],
    );
  }
}
