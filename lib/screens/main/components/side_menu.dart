import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/screens/main/components/educational_background.dart';
import 'package:flutter_profile/screens/main/components/knowledges.dart';
import 'package:flutter_profile/screens/main/components/other_skills.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';
import 'area_info_text.dart';
import 'coding.dart';
import 'my_info.dart';
import 'skills.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    AreaInfoText(
                      title: "Residence",
                      text: "Egypt",
                    ),
                    AreaInfoText(
                      title: "City",
                      text: "Tanta",
                    ),
                    AreaInfoText(
                      title: "Military Service",
                      text: " Exempted",
                    ),
                    AreaInfoText(
                      title: "Age",
                      text: "23",
                    ),
                    EducationalBackground(),
                    Skills(),
                    SizedBox(height: defaultPadding),
                    Coding(),
                    OtherSkills(),
                    Knowledge(),
                    Divider(),
                    SizedBox(height: defaultPadding / 2),
                    TextButton(
                      onPressed: () {
                        _launchInBrowser(
                          //https://drive.google.com/file/d/1OKM5g_TJiNRBP2GkdYUIhv47goCWO5eX/view?usp=sharing
                          Uri(scheme: 'https', host: 'drive.google.com', path: '/file/d/1OKM5g_TJiNRBP2GkdYUIhv47goCWO5eX/view'),
                        );
                      },
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text(
                              "DOWNLOAD CV",
                              style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color,
                              ),
                            ),
                            SizedBox(width: defaultPadding / 2),
                            SvgPicture.asset("assets/icons/download.svg")
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: defaultPadding),
                      color: Color(0xFF24242E),
                      child: Row(
                        children: [
                          Spacer(),
                          IconButton(
                            onPressed: () {
                              _launchInBrowser(
                                  Uri(scheme: 'https', host: 'www.linkedin.com', path: '/in/kareem-hamed-0051a71b2/'),
                              );
                            },
                            icon: Image.asset("assets/icons/linkedin.png"),
                          ),
                          IconButton(
                            onPressed: () {
                              _launchInBrowser(
                                Uri(scheme: 'https', host: 'github.com', path: '/kareemhamed4'),
                              );
                            },
                            icon: SvgPicture.asset("assets/icons/github.svg"),
                          ),
                          IconButton(
                            onPressed: () {
                              _launchInBrowser(
                                Uri(scheme: 'https', host: 'twitter.com', path: '/KareemMHamed5'),
                              );
                            },
                            icon: SvgPicture.asset("assets/icons/twitter.svg"),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }
}
