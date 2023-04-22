import 'package:flutter/material.dart';
import 'package:flutter_profile/components/animated_progress_indicator.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/screens/main/components/area_info_text.dart';


class EducationalBackground extends StatelessWidget {
  const EducationalBackground({
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
            "Educational Background",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        AreaInfoText(
          title: "University",
          text: "Tanta",
        ),
        AreaInfoText(
          title: "Faculty",
          text: "Computer Science",
        ),
        AreaInfoText(
          title: "Degree",
          text: "Bachelor’s Degree",
        ),
        AreaInfoText(
          title: "Cumulative GPA",
          text: "3.4/4.0",
        ),
      ],
    );
  }
}
