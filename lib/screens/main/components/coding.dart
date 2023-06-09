import 'package:flutter/material.dart';
import 'package:flutter_profile/components/animated_progress_indicator.dart';
import 'package:flutter_profile/constants.dart';


class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Coding",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.7,
          label: "Dart",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.39,
          label: "Kotlin",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.38,
          label: "Java",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.6,
          label: "C++",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.65,
          label: "HTML",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.6,
          label: "CSS",
        ),
      ],
    );
  }
}
