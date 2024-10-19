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
      '**الفلوس اللي بتدفعها بتروح للعدو بشكل مباشر:**',
      'لما بتشتري منتجات من شركات داعمة للاحتلال، الفلوس دي بتروح لدعم الأنشطة الاستيطانية وتوسيع المستوطنات في فلسطين.',
      'في 2024، شركات عالمية زي ماكدونالدز وكنتاكي بتدفع ملايين الدولارات لدعم الكيان بشكل مباشر، وده بيساهم في زيادة القمع ضد الفلسطينيين.',
      '**الاقتصاد المحلي هو اللي بينمو لما تدعم الشركات المصرية:**',
      'دعم المنتجات المحلية بيساهم في تعزيز الاقتصاد المصري. في 2023 و2024، كان فيه زيادة بحوالي 20% في مبيعات الشركات المصرية بسبب حملات المقاطعة.',
      'كل جنيه بتدفعه لشركة مصرية بيحافظ على الفلوس جوه البلد وبيمنع خروج العملة الأجنبية.',
      '**الضرائب اللي بتدفعها الشركات دي بتروح لدول بتدعم الاحتلال:**',
      'الشركات العالمية الداعمة للكيان بتدفع ضرائب ضخمة لدول بتمول الاحتلال، زي أمريكا اللي بتقدم مساعدات بحوالي 3.8 مليار دولار سنويًا.',
      '**مقاطعتك بتفرق:**',
      'في 2024، حملات المقاطعة قللت أرباح الشركات الكبرى بحوالي 10-15% في الشرق الأوسط، وده أجبر الشركات دي على مراجعة سياساتها.',
      '**مقاطعة المنتجات الأجنبية بتقلل الضغط على العملة الأجنبية:**',
      'مصر بتعاني من أزمة في نقص العملة الصعبة في 2024، والمقاطعة بتساهم في تقليل خروج الدولار وتقوية الجنيه المصري.',
      '**التوسع في الأراضي المحتلة بفلوسك:**',
      'الاحتلال بيستغل أرباح الشركات اللي بتتعامل معاها لتوسيع المستوطنات في الضفة الغربية، والمقاطعة بتمنع تمويل التوسع ده.',
      '**إحصائيات حديثة:**',
      'الدعم الأمريكي للكيان الصهيوني في 2024 مستمر بقيمة 3.8 مليار دولار سنويًا، والشركات العالمية المتواجدة في مصر بتدفع ضرائب لدول بتوجه مساعدات مباشرة للاحتلال.',
      '**تأثير المقاطعة في الشرق الأوسط:**',
      'في 2023 و2024، حملات المقاطعة قللت مبيعات الشركات الأجنبية في المنطقة بحوالي 10-15%.',
      '**الاقتصاد المصري والاستثمار المحلي:**',
      'دعم المنتجات المحلية ساهم في زيادة فرص العمل بحوالي 5% في 2024، وده بفضل المقاطعة اللي شجعت على دعم الصناعات المحلية.',
      'أنا مقاطع؟ وانت!!!'
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
                  ? Colors.red
                  : Colors.red,
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
