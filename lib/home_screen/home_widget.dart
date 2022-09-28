import 'package:flutter/material.dart';
import 'package:news_api/home_screen/recommended/recomended.dart';

import 'newreleases/new_releasses.dart';

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30,
        ),
        NewReleases(),
        SizedBox(
          height: 30,
        ),
        Recomended(),
      ],
    );
  }
}

