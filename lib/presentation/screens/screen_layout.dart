import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_vibrate/flutter_vibrate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:logger/logger.dart';
import 'package:qate3_app/presentation/screens/search_screen.dart';
import 'package:qate3_app/presentation/screens/settings_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';
import 'awareness_screen.dart';
import 'home_screen.dart';

class CreativeDialog extends StatelessWidget {
  CreativeDialog({Key? key}) : super(key: key);

  final Logger _logger = Logger();

  Future<void> _vibrateFeedback() async {
    try {
      if (await Vibrate.canVibrate) {
        Vibrate.feedback(FeedbackType.impact);
      }
    } catch (e, stackTrace) {
      _logger.e('Vibration error', error: e, stackTrace: stackTrace);
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Center(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Text(
            'تعليمات هامة جداً : ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      content: SingleChildScrollView(
        child: ListBody(
          children: [
            Directionality(
              textDirection: TextDirection.rtl,
              child: Text(
                '''
  أود أن أوضح لكم موقفي الرسمي من قضية محاربة الشركات المقاطعة ، وذلك استنادًا إلى بعض النقاط الرئيسية التي أؤمن بها بشدة :

أرغب في التأكيد على أن كل  المنتجات التي تم حصرها بقوائم المقاطعة نتيجة إجتهادات شخصية قد تخطئ وتصيب وليس هناك خصومة أو قصد للضرر بأي شركة أو مؤسسة بقدر ما يمكن إعتباره أبسط شيئ نقدمه لإخواننا الفلسطينيين ورفع الضرر عنهم خاصة وأن معظم هذه الشركات داعمة للكيان الصهيوني بشكل غير مباشر ....في حالة الخطأ أرجو التواصل علي الفور .
في الختام، نحن نعمل جاهدين للتحسين المستمر والتعاون مع جميع أفراد المجتمع ، نقدر تعاونكم وتفهمكم ، ونتطلع إلى استمرار دعمكم لنا ولهم .

مع خالص الاحترام،
[ قاطع ]
  ''',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: MediaQuery.of(context).size.width * 0.04,
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
            _vibrateFeedback();
            _showWhatsNewDialog(context);
          },
          child: const Text(
            'حسناً',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
        ),
      ],
    );
  }
}

void _showWhatsNewDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Center(
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Text(
              'ما الجديد في هذا الإصدار ؟',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        content: SingleChildScrollView(
          child: ListBody(
            children: [
              const Directionality(
                textDirection: TextDirection.rtl,
                child: Text(
                  '''
●  تم إضافة قسم جديد "القنوات و البرامج التليفزيونية" .
● تم تعديل منتجات متعددة و تنظيمها .
● تم إضافةالعديد من المنتجات المختلفة في جميع الأقسام .
  ''',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text(
              'حسناً',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
          ),
        ],
      );
    },
  );
}

class ScreenLayout extends StatefulWidget {
  final int selectedIndex;

  const ScreenLayout({Key? key, required this.selectedIndex}) : super(key: key);

  @override
  ScreenLayoutState createState() => ScreenLayoutState();
}

class ScreenLayoutState extends State<ScreenLayout> {
  late PageController controller;
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    selectedIndex = widget.selectedIndex;
    controller = PageController(initialPage: selectedIndex);

    SharedPreferences.getInstance().then((prefs) {
      bool dialogShown = prefs.getBool('dialogShown') ?? false;

      if (!dialogShown) {
        Future.delayed(const Duration(milliseconds: 500), () {
          showDialog(
            context: context,
            builder: (context) => CreativeDialog(),
          );

          prefs.setBool('dialogShown', true);
        });
      }
    });
  }

  Future<void> _vibrateFeedback() async {
    try {
      if (await Vibrate.canVibrate) {
        Vibrate.feedback(FeedbackType.impact);
      }
    } catch (e) {
      print('Vibration error: $e');
    }
  }

  Future<void> showQuitConfirmationDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Center(
          child: Text(
            'هل تود الخروج من التطبيق ؟',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17.0,
            ),
          ),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              _vibrateFeedback();
            },
            child: const Text(
              'لا',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              _vibrateFeedback();
              SystemNavigator.pop();
            },
            child: const Text(
              'نعم',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        showQuitConfirmationDialog(context);
      },
      child: Scaffold(
        body: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(overscroll: false),
          child: PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: controller,
            children: const [
              SettingsScreen(),
              SearchScreen(isDarkTheme: false),
              AwarenessScreen(),
              HomeScreen(),
            ],
          ),
        ),
        bottomNavigationBar: SlidingClippedNavBar(
          backgroundColor: Theme.of(context).primaryColor,
          onButtonPressed: (index) {
            setState(() {
              selectedIndex = index;
            });
            controller.animateToPage(
              selectedIndex,
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeOutQuad,
            );

            _vibrateFeedback();
          },
          iconSize: 25,
          selectedIndex: selectedIndex,
          barItems: [
            BarItem(
              icon: FontAwesomeIcons.gear,
              title: 'الإعدادات',
            ),
            BarItem(
              icon: FontAwesomeIcons.magnifyingGlass,
              title: 'البحث',
            ),
            BarItem(
              icon: FontAwesomeIcons.lightbulb,
              title: 'توعية',
            ),
            BarItem(
              icon: FontAwesomeIcons.house,
              title: 'الرئيسية',
            ),
          ],
          activeColor: Colors.red,
          inactiveColor: Colors.grey[300],
        ),
      ),
    );
  }
}
