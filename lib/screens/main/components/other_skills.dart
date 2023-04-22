import 'package:flutter/material.dart';
import 'package:flutter_profile/components/animated_progress_indicator.dart';
import 'package:flutter_profile/constants.dart';


class OtherSkills extends StatelessWidget {
  const OtherSkills({
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
            "Other Skills",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.75,
          label: "Rest API",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.58,
          label: "Design pattern",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.6,
          label: "Clean Code",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.65,
          label: "NVVM",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.6,
          label: "GIT",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.9,
          label: "Soft Skills",
        ),
      ],
    );
  }
}
