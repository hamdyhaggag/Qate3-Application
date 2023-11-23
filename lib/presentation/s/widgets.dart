import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constants/app_text.dart';

navigateAndFinish(context, widget) {
  return Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(builder: (context) => widget),
    (route) => false,
  );
}

navigateTo(context, widget) {
  return Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => widget),
  );
}

const String googlePlayUrl =
    'https://play.google.com/store/apps/details?id=com.qate3.app.qate3_app';
void _launchURL(String link) async {
  Uri url = Uri.parse(link);

  if (!await launchUrl(
    url,
    mode: LaunchMode.externalApplication,
  )) {
    throw 'Could not launch $url';
  }
}

Widget buildRow(IconData icon, String url, String title, Color color) {
  return InkWell(
    onTap: () {
      _launchURL(url);
    },
    child: SizedBox(
      height: 40,
      child: Row(
        textDirection: TextDirection.rtl,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(icon, color: color, size: 25),
          AppText(title),
        ],
      ),
    ),
  );
}

donate(context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: AppText(
          'ادعمنا من خلال :',
          textDirection: TextDirection.rtl,
          color: Colors.red,
          fontWeight: FontWeight.bold,
          fontFamily: 'Cairo',
        ),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Center(
                child: buildRow(
                  FontAwesomeIcons.moneyCheckDollar,
                  'https://www.buymeacoffee.com/hamdyhaggag74',
                  'Buy Me A Coffee',
                  Colors.red,
                ),
              ),
              const SizedBox(height: 10),
              Center(
                child: buildRow(
                  FontAwesomeIcons.paypal,
                  'https://www.paypal.com/paypalme/hamdyhaggag74',
                  'paypal',
                  Colors.red,
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}

void shareOptions(BuildContext context) async {
  const String text = googlePlayUrl;
  const String subject = "تطبيق قاطع";

  await Share.share(text, subject: subject);
}

////////////////////////////////////////////////
void openGooglePlayForFeedback() async {
  const String packageName = 'com.qate3.app.qate3_app';
  const String googlePlayUrl = 'market://details?id=$packageName';

  final Uri googlePlayUri = Uri.parse(googlePlayUrl);

  if (await canLaunchUrl(googlePlayUri)) {
    await launchUrl(googlePlayUri);
  } else {
    throw 'Could not launch Google Play Store.';
  }
}

void shareFeedback(BuildContext context) {
  openGooglePlayForFeedback();
}

////////////////////////////////////////////////
void sendEmail() async {
  final Uri emailLaunchUri = Uri(
    scheme: 'mailto',
    path: 'arabianatech@gmail.com',
    queryParameters: {
      'subject': 'الإقتراحات أو الشكاوي بخصوص تطبيق قاطع',
      'body': 'تمت تعبئة هذة الرسالة تلقائيا امسح نص الرسالة و اترك رسالتك',
    },
  );

  try {
    await launch(emailLaunchUri.toString());
  } catch (e) {
    print('Error launching email: $e');
  }
}

//////////////////////
contactDev(context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: AppText(
          'تواصل من خلال :',
          textDirection: TextDirection.rtl,
          color: Colors.red,
          fontWeight: FontWeight.bold,
          fontFamily: 'Cairo',
        ),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Center(
                child: buildRow(
                  FontAwesomeIcons.solidEnvelope,
                  'mailto:hamdyhaggag74@gmail.com',
                  'البريد الإلكتروني',
                  Colors.red,
                ),
              ),
              const SizedBox(height: 10),
              Center(
                child: buildRow(
                  FontAwesomeIcons.facebook,
                  'https://www.facebook.com/hamdyhaggag74/',
                  'فيسبوك',
                  Colors.red,
                ),
              ),
              const SizedBox(height: 10),
              Center(
                child: buildRow(
                  FontAwesomeIcons.linkedin,
                  'https://www.linkedin.com/in/hamdyhaggag74/',
                  'لينكد إن',
                  Colors.red,
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
