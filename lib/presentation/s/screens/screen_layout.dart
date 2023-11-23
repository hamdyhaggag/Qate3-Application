import 'package:flutter/material.dart';
import 'package:flutter_vibrate/flutter_vibrate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:qate3_app/presentation/s/screens/awareness_screen.dart';
import 'package:qate3_app/presentation/s/screens/home_screen.dart';
import 'package:qate3_app/presentation/s/screens/search_screen.dart';
import 'package:qate3_app/presentation/s/screens/settings_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';

class CreativeDialog extends StatelessWidget {
  const CreativeDialog({Key? key}) : super(key: key);

  Future<void> _vibrateFeedback() async {
    try {
      if (await Vibrate.canVibrate) {
        Vibrate.feedback(FeedbackType.impact);
      }
    } catch (e) {
      print('Vibration error: $e');
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

class ScreenLayout extends StatefulWidget {
  final int selectedIndex;

  const ScreenLayout({Key? key, required this.selectedIndex}) : super(key: key);

  @override
  _ScreenLayoutState createState() =>
      _ScreenLayoutState(selectedIndex: selectedIndex);
}

class _ScreenLayoutState extends State<ScreenLayout> {
  int selectedIndex = 3;
  late PageController controller = PageController();

  _ScreenLayoutState({required this.selectedIndex});
  Future<void> _vibrateFeedback() async {
    try {
      if (await Vibrate.canVibrate) {
        Vibrate.feedback(FeedbackType.impact);
      }
    } catch (e) {
      print('Vibration error: $e');
    }
  }

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
            builder: (context) => const CreativeDialog(),
          );

          prefs.setBool('dialogShown', true);
        });
      }
    });
  }

  Future<bool> showQuitConfirmationDialog(BuildContext context) async {
    return await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Center(
            child: Text(
              'هل تود الخروج من التطبيق ؟',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(false);
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
                Navigator.of(context).pop(true);
                _vibrateFeedback();
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
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return await showQuitConfirmationDialog(context);
      },
      child: Scaffold(
        body: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(overscroll: false),
          child: PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: controller,
            children: const [
              SettingsScreen(),
              SearchScreen(),
              AwarenessScreen(),
              HomeScreen(),
            ],
          ),
        ),
        bottomNavigationBar: SlidingClippedNavBar(
          backgroundColor: Colors.white,
          onButtonPressed: (index) {
            setState(() {
              selectedIndex = index;
            });
            controller.animateToPage(selectedIndex,
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeOutQuad);

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
