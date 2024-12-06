import 'package:babstrap_settings_screen/babstrap_settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;
import 'package:url_launcher/url_launcher_string.dart';
import '../../../constants/custom_appbar.dart';
import '../widgets.dart';
import 'Home/SettingsScreen/app_info.dart';
import 'Home/SettingsScreen/contribute.dart';
import 'Home/SettingsScreen/privacy_policy.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: const CustomAppBar(title: 'الإعدادات', isHome: true),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: ListView(
            children: _buildSettingsItems(context),
          ),
        ),
      ),
    );
  }

  List<SettingsItem> _buildSettingsItems(BuildContext context) {
    return [
      _createSettingsItem(
        context,
        icon: FontAwesomeIcons.circleInfo,
        title: 'معلومات عن التطبيق',
        subtitle: 'اعرف أكتر عن التطبيق',
        onTap: () => navigateTo(context, const AppInfo()),
      ),
      _createSettingsItem(
        context,
        icon: FontAwesomeIcons.shield,
        title: 'سياسة الخصوصية',
        subtitle: 'حماية خصوصيتك على الإنترنت',
        onTap: () => navigateTo(context, const PrivacyPolicy()),
      ),
      _createSettingsItem(
        context,
        icon: FontAwesomeIcons.solidStar,
        title: 'تقييم التطبيق',
        subtitle: 'يرجى ترك تقييم إيجابي',
        onTap: () => shareFeedback(context),
      ),
      _createSettingsItem(
        context,
        icon: FontAwesomeIcons.wallet,
        title: 'إدعم التطبيق',
        subtitle: 'كن رفيقنا في التطوير',
        onTap: () => donate(context),
      ),
      // _createSettingsItem(
      //   context,
      //   icon: FontAwesomeIcons.magnifyingGlass,
      //   title: 'إسأل عن منتج',
      //   subtitle: 'لو فيه منتج مش موجود',
      //   onTap: () => sendEmail(),
      // ),
      _createSettingsItem(
        context,
        icon: FontAwesomeIcons.solidEnvelope,
        title: 'تواصل معنا',
        subtitle: 'شارك اقتراحاتك و شكواك معنا',
        onTap: () => openFormLink(),
      ),
      _createSettingsItem(
        context,
        icon: FontAwesomeIcons.shareNodes,
        title: 'مشاركة التطبيق',
        subtitle: 'شارك التطبيق لتساعد في نصرة القضية',
        onTap: () => shareOptions(context),
      ),
      _createSettingsItem(
        context,
        icon: FontAwesomeIcons.handHoldingDollar,
        title: 'تبرع لإغاثة غزة',
        subtitle: 'تبرع الآن لتساعد في إغاثة إخواننا في غزة',
        onTap: () => _launchURL('https://baitzakat.org.eg/donationChannels/'),
      ),
      _createSettingsItem(
        context,
        icon: FontAwesomeIcons.layerGroup,
        title: 'المساهمون في التطبيق',
        subtitle: 'شكر خاص لمساهمينا',
        onTap: () => navigateTo(context, const ContributeScreen()),
      ),
      _createSettingsItem(
        context,
        icon: FontAwesomeIcons.dev,
        title: 'تواصل مع مطور التطبيق',
        subtitle: 'طرق التواصل مع المطور',
        onTap: () => sendEmail2(),
      ),
    ];
  }

  SettingsItem _createSettingsItem(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String subtitle,
    required void Function() onTap,
  }) {
    return SettingsItem(
      onTap: onTap,
      icons: icon,
      iconStyle: IconStyle(
        iconsColor: Colors.white,
        withBackground: true,
        backgroundColor: Colors.red,
      ),
      title: title,
      subtitle: subtitle,
      trailing: const SizedBox(width: 24.0),
    );
  }

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);

    if (await url_launcher.canLaunchUrl(uri)) {
      await url_launcher.launchUrl(
        uri,
        mode: LaunchMode.inAppWebView, // Open in an in-app WebView
        webViewConfiguration: const WebViewConfiguration(
            enableJavaScript: true), // Enable JavaScript
      );
    } else {
      throw 'Could not launch $url';
    }
  }
}
