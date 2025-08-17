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
      'تخيّل إن كل مرة تشتري من شركة داعمة للاحتلال، جزء من فلوسك بيتحوّل لرصاصة بتتصوّب في صدر طفل فلسطيني بريء.',
      'في 2024، شركات عالمية زي ماكدونالدز وكنتاكي دفعت ملايين الدولارات للكيان، وده ساهم في قتل وتشريد آلاف العائلات.',

      '**الاقتصاد المحلي هو اللي بينمو لما تدعم الشركات المصرية:**',
      'لما تشتري من منتج مصري، إنت بتساعد أسرة مصرية تعيش بكرامة، وبتساهم في تقوية بلدك بدل ما فلوسك تروح للعدو.',
      'في 2023 و2024، حملات المقاطعة زودت مبيعات الشركات المصرية بنسبة 20%، وكل جنيه خرج من جيبك لمنتج محلي فضل جوه بلدك.',

      '**الضرائب اللي بتدفعها الشركات دي بتروح لدول بتموّل الاحتلال:**',
      'الشركات العالمية دي بتدفع ضرائب لدول بتدي 3.8 مليار دولار سنويًا لدعم آلة القتل في فلسطين. يعني الفلوس اللي بتدفعها بترجع في شكل قنابل وصواريخ.',

      '**مقاطعتك بتفرق:**',
      'في 2024، أرباح الشركات الكبرى في الشرق الأوسط نزلت 10-15% بسبب المقاطعة. صوتك وقرارك بيهزّ اقتصادهم.',

      '**مقاطعة المنتجات الأجنبية بتقلل الضغط على عملتنا:**',
      'مصر في 2024 عانت من أزمة دولار، والمقاطعة بتخلي الجنيه أقوى لأنك بتقلل خروج العملة الصعبة.',

      '**التوسع في الأراضي المحتلة بفلوسك:**',
      'الاحتلال بيبني مستوطنات جديدة على دم الأطفال الفلسطينيين، والمقاطعة بتقطع عنه التمويل ده.',

      '**إحصائيات حديثة:**',
      'الدعم الأمريكي للكيان لسه مستمر بـ 3.8 مليار دولار سنويًا، والشركات العالمية في مصر جزء من المنظومة دي بضرائبها وأرباحها.',

      '**تأثير المقاطعة في الشرق الأوسط:**',
      'في 2023 و2024، المقاطعة قللت مبيعات الشركات الأجنبية في المنطقة 10-15%. ده معناه إننا مش قليلين... وإيدينا في إيد بعض نقدر.',

      '**الاقتصاد المصري والاستثمار المحلي:**',
      'دعم المنتجات المصرية ساعد يخلق فرص عمل جديدة بنسبة 5% في 2024، بفضل المقاطعة اللي شجعت الصناعة المحلية.',

      // تحديثات أغسطس 2025
      '**آخر تطورات أغسطس 2025 – الوضع الإنساني في غزة:**',
      'أكتر من 61,897 شهيد... أرقام مرعبة بس ورا كل رقم فيه إنسان، فيه أم بتبكي، فيه طفل اتحرم من حضن أبوه.',
      'من أكتوبر 2023 حتى أغسطس 2025، مات 98 طفل من الجوع وسوء التغذية. 37 طفل منهم في يوليو بس. تخيّل طفل بيموت وهو بيبكي عشان لقمة أكل!',

      '**المجاعة تتفاقم:**',
      'بين مارس ويوليو 2025، مات أكتر من 122 شخص من الجوع... و66,000 طفل في غزة بيعانوا من سوء تغذية حاد. الأطفال دي كان ممكن يبقوا زي ولادنا، بس اتولدوا تحت حصار.',

      '**المساعدات كسلاح:**',
      'أكتر من 100 منظمة إغاثة قالت إن الاحتلال بيستخدم المساعدات كسلاح. في يوليو بس اترفض أكتر من 60 طلب لدخول مساعدات رغم إن الأكل والدواء جاهزين على الحدود. تخيل حد بيموت عطش وجنبه مية ممنوعة تدخل!',

      '**التضامن الشعبي:**',
      'في 3 أغسطس 2025، مئات الآلاف خرجوا للشوارع: من 100,000 لـ 300,000 في سيدني و25,000 في ملبورن. العالم كله بيصرخ: "كفاية قتل".',

      '**أصوات عالمية للمقاطعة:**',
      'أكتر من 200 كاتب مشهور في العالم طالبوا بمقاطعة كاملة وفورية لإسرائيل. المثقفين نفسهم بقوا بيقولوا: "اللي ساكت كأنه مشارك في الجريمة".',

      '**المواقف السياسية الدولية:**',
      'مجلس أوروبا طلب وقف تصدير السلاح لإسرائيل، وأستراليا أعلنت اعترافها بدولة فلسطين. الموجة بتكبر، وإحنا لازم نكون جزء منها.',

      '**الخلاصة:**',
      'كل مرة تشتري منتج محلي، انت بتحمي اقتصاد بلدك وبتنقذ روح في فلسطين.',
      'كل مرة ترفض منتج داعم للاحتلال، انت بتقول للعدو: "مش بفلوسي هتقتل طفل تاني".',
      'أنا اخترت أكون مقاطع... وانت؟'
    ];

    return textSections.map((text) {
      if (text.startsWith('**')) {
        return Padding(
          padding: const EdgeInsets.only(right: 24.0, left: 12.0, top: 14.0),
          child: SelectableText(
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
          child: SelectableText(
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
