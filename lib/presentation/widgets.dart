import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:logger/logger.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../constants/app_text.dart';

final logger = Logger();

void navigateAndFinish(BuildContext context, Widget widget) {
  Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(builder: (context) => widget),
    (route) => false,
  );
}

void navigateTo(BuildContext context, Widget widget) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => widget),
  );
}

const String googlePlayUrl =
    'https://play.google.com/store/apps/details?id=com.qate3.app.qate3_app';

Future<void> _launchUrl(String url) async {
  final Uri uri = Uri.parse(url);

  if (uri.scheme == 'mailto') {
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      // Show a user-friendly message or log the error
      debugPrint('No email client found to handle mailto link: $url');
      throw 'Could not launch email client: $url';
    }
  } else {
    if (await canLaunchUrl(uri)) {
      await launchUrl(
        uri,
        mode: LaunchMode.inAppWebView,
        webViewConfiguration:
            const WebViewConfiguration(enableJavaScript: true),
      );
    } else {
      // Handle web URL failure more gracefully
      debugPrint('Could not launch web URL: $url');
      throw 'Could not launch web URL: $url';
    }
  }
}

Widget buildRow(BuildContext context, IconData icon, String url, String text,
    Color textColor) {
  return GestureDetector(
    onTap: () {
      _launchUrl(url);
    },
    child: Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).brightness == Brightness.dark
                ? Colors.black12.withOpacity(0.5)
                : Colors.red,
            blurRadius: 4.0,
            spreadRadius: 1.0,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(icon, color: textColor, size: 24.0),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                color: textColor,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    ),
  );
}

void donate(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: AppText(
          'ادعمنا من خلال :',
          textDirection: TextDirection.rtl,
          color: Theme.of(context).brightness == Brightness.dark
              ? Colors.white
              : Colors.red,
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
                  context,
                  FontAwesomeIcons.moneyCheckDollar,
                  'https://www.buymeacoffee.com/hamdyhaggag74',
                  'Buy Me A Coffee',
                  Theme.of(context).brightness == Brightness.dark
                      ? Colors.white
                      : Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              Center(
                child: buildRow(
                  context,
                  FontAwesomeIcons.paypal,
                  'https://www.paypal.com/paypalme/hamdyhaggag74',
                  'PayPal',
                  Theme.of(context).brightness == Brightness.dark
                      ? Colors.white
                      : Colors.white,
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}

Future<void> shareOptions(BuildContext context) async {
  const String text = googlePlayUrl;
  const String subject = "تطبيق قاطع";
  await Share.share(text, subject: subject);
}

Future<void> openGooglePlayForFeedback() async {
  const String packageName = 'com.qate3.app.qate3_app';
  final Uri googlePlayUri = Uri.parse('market://details?id=$packageName');

  if (await canLaunchUrl(googlePlayUri)) {
    await launchUrl(googlePlayUri);
  } else {
    throw 'Could not launch Google Play Store.';
  }
}

void shareFeedback(BuildContext context) {
  openGooglePlayForFeedback();
}

Future<void> sendEmail() async {
  final Uri emailLaunchUri = Uri(
    scheme: 'mailto',
    path: 'arabianatech@gmail.com',
    queryParameters: {
      'subject': 'الإقتراحات أو الشكاوي بخصوص تطبيق قاطع',
      'body': '',
    },
  );

  try {
    await launchUrl(emailLaunchUri);
  } catch (e) {
    logger.e('Error launching email', error: e);
  }
}

Future<void> sendEmail2() async {
  final Uri emailLaunchUri = Uri(
    scheme: 'mailto',
    path: 'hamdyhaggag74@gmail.com',
    queryParameters: {
      'subject': 'تطبيق قاطع',
      'body': '',
    },
  );

  try {
    await launchUrl(emailLaunchUri);
  } catch (e) {
    logger.e('Error launching email', error: e);
  }
}

Future<void> openFormLink() async {
  const String formLink =
      'https://6m0oi2hw.forms.app/ttbyk-ktaa-llktrht-o-lmshkl-o-ltkyym';

  try {
    await launchUrl(Uri.parse(formLink));
  } catch (e) {
    logger.e('Error launching form link', error: e);
  }
}

// void contactDev(BuildContext context) {
//   showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return AlertDialog(
//         title: AppText(
//           'تواصل من خلال :',
//           textDirection: TextDirection.rtl,
//           color: Colors.red,
//           fontWeight: FontWeight.bold,
//           fontFamily: 'Cairo',
//         ),
//         content: SingleChildScrollView(
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: <Widget>[
//               Center(
//                 child: buildRow(
//                   context,
//                   FontAwesomeIcons.solidEnvelope,
//                   'mailto:hamdyhaggag74@gmail.com',
//                   'البريد الإلكتروني',
//                   Theme.of(context).brightness == Brightness.dark
//                       ? Colors.white
//                       : Colors.black,
//                 ),
//               ),
//               // const SizedBox(height: 10),
//               // Center(
//               //   child: buildRow(
//               //     context,
//               //     FontAwesomeIcons.facebook,
//               //     'https://www.facebook.com/hamdyhaggag74',
//               //     'فيسبوك',
//               //    Theme.of(context).brightness == Brightness.dark
//               //                       ? Colors.white
//               //                       : Colors.black,
//               //   ),
//               // ),
//               const SizedBox(height: 10),
//               Center(
//                 child: buildRow(
//                   context,
//                   FontAwesomeIcons.linkedin,
//                   'https://www.linkedin.com/in/hamdyhaggag74/',
//                   'لينكد إن',
//                   Theme.of(context).brightness == Brightness.dark
//                       ? Colors.white
//                       : Colors.black,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       );
//     },
//   );
// }

void integrateWithBuyMeACoffee(BuildContext context) {
  showModalBottomSheet(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
    ),
    backgroundColor: Theme.of(context).colorScheme.primary,
    isScrollControlled: true,
    builder: (BuildContext context) {
      return SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: buildRow(
                context,
                FontAwesomeIcons.moneyCheckDollar,
                'https://www.buymeacoffee.com/hamdyhaggag74',
                'Buy Me A Coffee',
                Theme.of(context).brightness == Brightness.dark
                    ? Colors.white
                    : Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            Center(
              child: buildRow(
                context,
                FontAwesomeIcons.paypal,
                'https://www.paypal.com/paypalme/hamdyhaggag74',
                'Paypal',
                Theme.of(context).brightness == Brightness.dark
                    ? Colors.white
                    : Colors.white,
              ),
            ),
          ],
        ),
      );
    },
  );
}

void integrateWithEgyptianPayments(BuildContext context) {
  showModalBottomSheet(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
    ),
    backgroundColor: Theme.of(context).colorScheme.primary,
    isScrollControlled: true,
    builder: (BuildContext context) {
      return SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Choose Payment Method',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            // Fawry
            buildRow(
              context,
              FontAwesomeIcons.moneyBillWave,
              'https://fawry.com/integration',
              'Fawry',
              Theme.of(context).brightness == Brightness.dark
                  ? Colors.white
                  : Colors.white,
            ),
            const SizedBox(height: 10),
            // Vodafone Cash
            buildRow(
              context,
              FontAwesomeIcons.wallet,
              'https://vodafone.cash/payment',
              'Vodafone Cash',
              Theme.of(context).brightness == Brightness.dark
                  ? Colors.white
                  : Colors.white,
            ),
            const SizedBox(height: 10),

            // Etisalat Cash
            buildRow(
              context,
              FontAwesomeIcons.wallet,
              'https://etisalat.cash/payment',
              'Etisalat Cash',
              Theme.of(context).brightness == Brightness.dark
                  ? Colors.white
                  : Colors.white,
            ),
            const SizedBox(height: 10),

            // Orange Cash
            buildRow(
              context,
              FontAwesomeIcons.wallet,
              'https://orange.cash/payment',
              'Orange Cash',
              Theme.of(context).brightness == Brightness.dark
                  ? Colors.white
                  : Colors.white,
            ),
            const SizedBox(height: 10),

            // We Pay
            buildRow(
              context,
              FontAwesomeIcons.wallet,
              'https://we.pay/payment',
              'We Pay',
              Theme.of(context).brightness == Brightness.dark
                  ? Colors.white
                  : Colors.white,
            ),
          ],
        ),
      );
    },
  );
}

// Widget buildPaymentOption(
//     BuildContext context, IconData icon, String title, String url) {
//   return GestureDetector(
//     onTap: () {
//       // Perform the respective payment action here (e.g., redirect to URL or call API)
//       _launchPaymentURL(url);
//     },
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         Icon(icon,
//             color: Theme.of(context).brightness == Brightness.dark
//                 ? Colors.white
//                 : Colors.black),
//         const SizedBox(width: 10),
//         Text(
//           title,
//           style: TextStyle(
//             fontSize: 16,
//             color: Theme.of(context).brightness == Brightness.dark
//                 ? Colors.white
//                 : Colors.black,
//           ),
//         ),
//       ],
//     ),
//   );
// }
