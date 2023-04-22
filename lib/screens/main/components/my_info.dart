import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: Color(0xFF242430),
        child: Column(
          children: [
            Spacer(flex: 2),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/images/kareem.png"),
            ),
            Spacer(),
            Text(
              "Kareem Mohamed",
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Text(
              "Flutter Developer",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
            ),
            Text(
              "President of Student Union 2019 & 2020 and 2021",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w200,
                height: 1.5,
                fontSize: 10
              ),
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
