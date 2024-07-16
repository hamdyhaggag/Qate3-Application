import 'package:flutter/material.dart';
import 'package:qate3_app/constants/carousel_slider.dart';
import 'package:qate3_app/constants/custom_appbar.dart';

class AwarenessScreen extends StatelessWidget {
  const AwarenessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primary,
        appBar:
            const CustomAppBar(title: 'توعية بأهمية المقاطعة', isHome: true),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return ListView(
              children: <Widget>[
                const CarSlider(
                  imageUrl1: 'assets/images/7.jpg',
                  imageUrl2: 'assets/images/8.jpg',
                  imageUrl3: 'assets/images/9.jpg',
                  imageUrl4: 'assets/images/10.jpg',
                  imageUrl5: 'assets/images/11.jpg',
                  imageUrl6: 'assets/images/12.jpg',
                ),
                ..._buildTextSections(context, constraints),
              ],
            );
          },
        ),
      ),
    );
  }

  List<Widget> _buildTextSections(
      BuildContext context, BoxConstraints constraints) {
    double fontSize = _getTextFontSize(constraints);

    List<String> textSections = [
      '**كل جنيه بتدفعه بيروح لشركات المقاطعة:**',
      '1. بيروح بشكل مباشر للكيان عن طريق دعم مباشر من الشركة للخنازير.',
      '2. بيروح بشكل مباشر في بناء وتجهيز فروع للشركات دي في أراضي فلسطين المحتلة.',
      '3. بيروح بشكل غير مباشر عن طريق ضرايب ومستحقات للدول اللي بتدعم الخنازير بشكل مباشر.',
      '**كل جنيه بتدفعه بيروح لشركات مصرية محلية:**',
      '1. بيفيد الشركات المحلية بأنها بتزود مبيعاتها.',
      '2. بيتم توظيفك أو توظيف عمالة مصرية علشان تقدر توفرلك المنتج اللي انت عاوزه بالكمية المطلوبة.',
      '3. بيمنع من خروج العملة الأجنبية من بلدك علشان مش هتحول استثمارات وأرباح الشركات دي بالدولار برا مصر.',
      'أنا مقاطع ؟ وانت !!!',
    ];

    return textSections.map((text) {
      if (text.startsWith('**')) {
        return Padding(
          padding: const EdgeInsets.only(right: 24.0, left: 12.0, top: 14.0),
          child: Text(
            text.replaceAll('**', ''),
            textAlign: TextAlign.right,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: fontSize,
              color: Theme.of(context).brightness == Brightness.dark
                  ? Colors.white
                  : Colors.black,
              fontFamily: 'Cairo',
            ),
          ),
        );
      } else {
        return Padding(
          padding: const EdgeInsets.only(right: 24.0, left: 12.0, top: 14.0),
          child: Text(
            text,
            textAlign: TextAlign.right,
            style: TextStyle(
              fontSize: fontSize,
              color: Theme.of(context).brightness == Brightness.dark
                  ? Colors.white
                  : Colors.black,
              fontFamily: 'Cairo',
            ),
          ),
        );
      }
    }).toList();
  }

  double _getTextFontSize(BoxConstraints constraints) {
    return constraints.maxWidth > 600 ? 17.0 : 19.8;
  }
}
