import 'package:babstrap_settings_screen/babstrap_settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;
import '../../../constants/custom_appbar.dart';
import '../widgets.dart';
import 'SettingsScreen/app_info.dart';
import 'SettingsScreen/contribute.dart';
import 'SettingsScreen/privacy_policy.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: const CustomAppBar(title: 'الإعدادات', isHome: true),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: ListView(
              children: [
                SettingsGroup(
                  items: [
                    SettingsItem(
                      onTap: () {
                        navigateTo(context, const AppInfo());
                      },
                      icons: FontAwesomeIcons.circleInfo,
                      iconStyle: IconStyle(
                        iconsColor: Colors.white,
                        withBackground: true,
                        backgroundColor: Colors.red,
                      ),
                      title: 'معلومات عن التطبيق',
                      subtitle: 'اعرف أكتر عن التطبيق',
                      trailing: SizedBox(
                        width: 24.0,
                        child: Container(),
                      ),
                    ),
                    SettingsItem(
                      onTap: () {
                        navigateTo(context, const PrivacyPolicy());
                      },
                      icons: FontAwesomeIcons.shield,
                      iconStyle: IconStyle(
                        iconsColor: Colors.white,
                        withBackground: true,
                        backgroundColor: Colors.red,
                      ),
                      title: 'سياسة الخصوصية',
                      subtitle: "حماية خصوصيتك على الإنترنت",
                      trailing: SizedBox(
                        width: 24.0,
                        child: Container(),
                      ),
                    ),
                    SettingsItem(
                      onTap: () {
                        shareFeedback(context);
                      },
                      icons: FontAwesomeIcons.solidStar,
                      iconStyle: IconStyle(
                        backgroundColor: Colors.red,
                      ),
                      title: 'تقييم التطبيق',
                      subtitle: 'يرجى ترك تقييم إيجابي',
                      titleMaxLine: 1,
                      subtitleMaxLine: 1,
                      trailing: SizedBox(
                        width: 24.0,
                        child: Container(),
                      ),
                    ),
                    SettingsItem(
                      onTap: () {
                        donate(context);
                      },
                      icons: FontAwesomeIcons.wallet,
                      iconStyle: IconStyle(
                        backgroundColor: Colors.red,
                      ),
                      title: 'إدعم التطبيق',
                      subtitle: "كن رفيقنا في التطوير",
                      titleMaxLine: 1,
                      subtitleMaxLine: 1,
                      trailing: SizedBox(
                        width: 24.0,
                        child: Container(),
                      ),
                    ),
                    SettingsItem(
                      onTap: () {
                        sendEmail();
                      },
                      icons: FontAwesomeIcons.magnifyingGlass,
                      iconStyle: IconStyle(
                        backgroundColor: Colors.red,
                      ),
                      title: 'إسأل عن منتج',
                      subtitle: "لو فيه منتج مش موجود",
                      titleMaxLine: 1,
                      subtitleMaxLine: 1,
                      trailing: SizedBox(
                        width: 24.0,
                        child: Container(),
                      ),
                    ),
                    SettingsItem(
                      onTap: () {
                        openFormLink();
                      },
                      icons: FontAwesomeIcons.solidEnvelope,
                      iconStyle: IconStyle(
                        iconsColor: Colors.white,
                        withBackground: true,
                        backgroundColor: Colors.red,
                      ),
                      title: 'تواصل معنا',
                      subtitle: 'شارك اقتراحاتك و شكواك معنا',
                      trailing: SizedBox(
                        width: 24.0,
                        child: Container(),
                      ),
                    ),
                    SettingsItem(
                      onTap: () {
                        shareOptions(context);
                      },
                      icons: FontAwesomeIcons.shareNodes,
                      iconStyle: IconStyle(
                        backgroundColor: Colors.red,
                      ),
                      title: 'مشاركة التطبيق',
                      subtitle: "شارك التطبيق لتساعد في نصرة القضية",
                      trailing: SizedBox(
                        width: 24.0,
                        child: Container(),
                      ),
                    ),
                    SettingsItem(
                      onTap: () {
                        _launchURL(
                            'https://www.egyptianrc.org/arabic/Donate/online-donation');
                      },
                      icons: FontAwesomeIcons.handHoldingDollar,
                      iconStyle: IconStyle(
                        backgroundColor: Colors.red,
                      ),
                      title: ' تبرع إلى الهلال الأحمر',
                      subtitle: "تبرع الآن لتساعد في إغاثة إخواننا في غزة",
                      trailing: SizedBox(
                        width: 24.0,
                        child: Container(),
                      ),
                    ),
                    SettingsItem(
                      onTap: () {
                        navigateTo(context, const ContributeScreen());
                      },
                      icons: FontAwesomeIcons.layerGroup,
                      iconStyle: IconStyle(
                        backgroundColor: Colors.red,
                      ),
                      title: ' المساهمون في التطبيق',
                      subtitle: "شكر خاص لمساهمينا",
                      trailing: SizedBox(
                        width: 24.0,
                        child: Container(),
                      ),
                    ),
                    SettingsItem(
                      onTap: () {
                        contactDev(context);
                      },
                      icons: FontAwesomeIcons.dev,
                      iconStyle: IconStyle(
                        iconsColor: Colors.white,
                        withBackground: true,
                        backgroundColor: Colors.red,
                      ),
                      title: 'تواصل مع مطور التطبيق',
                      subtitle: 'طرق التواصل مع المطور ',
                      trailing: SizedBox(
                        width: 24.0,
                        child: Container(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }

  void _launchURL(String urlString) async {
    Uri url = Uri.parse(urlString);
    if (await url_launcher.canLaunchUrl(url)) {
      await url_launcher.launchUrl(url);
    } else {
      throw 'Could not launch $urlString';
    }
  }
}
