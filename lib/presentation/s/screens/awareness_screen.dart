import 'package:flutter/material.dart';
import 'package:qate3_app/constants/carousel_slider.dart';
import 'package:qate3_app/constants/custom_appbar.dart';
import 'package:qate3_app/constants/custom_text.dart';

class AwarenessScreen extends StatelessWidget {
  const AwarenessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'توعية بأهمية المقاطعة', isHome: true),
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
              CustomText(
                ' أول حاجة علشان نسمي الأشياء بمسمياتها هي مش "مقاطعة إقتصادية" هي "عقوبات إقتصادية" لكن مقررة من الشعوب وليس بقرار الحكومات.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: _getTextFontSize(constraints)),
              ),
              CustomText(
                ' ماشي يا عم هنقول عليها "عقوبات إقتصادية" هتفيدنا أو هتضرنا في إيه!؟ خلينا نقول في الأول شوية أمثلة علي عقوبات إقتصادية ...',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: _getTextFontSize(constraints)),
              ),
              CustomText(
                ' أقرب مثال واللي كلنا عارفينه لما ألمانيا قررت تقطع واردات الطاقة من روسيا علشان بوتين قرر يحارب أوكرانيا واللي كان ليه تأثير كبير علي الإقتصاد الألماني حوالي ٣٪ من الناتج المحلي أو كل مواطن ألماني ١٢٠٠ يورو في السنة لكنهم كانو شايفين الأوكرانين أهم من الفلوس .',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: _getTextFontSize(constraints)),
              ),
              CustomText(
                'مثال تاني أيام حرب فيتنام قامت حركة مقاطعة ضخمة في أمريكا ضد شركة Dow Chemical المنتجة للنابالم ( سائل هلامي يلتصق بالجلد، وهو قابل للاشتعال )\nالإحتجاجات أدت لتدهور سمعة الشركة والجامعات وقفت المشاريع المشتركة معاهم حصلت حاجات كتير في الآخر الشركة قررت الإلتزام بمعايير أخلاقية، وكانت درس لباقي الشركات.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: _getTextFontSize(constraints)),
              ),
              CustomText(
                'في الخمسينات مارتن لوثر كينغ عمل حملة مقاطعة لشركات الأتوبيسات علشان الأتوبيسات كانت حاطة قواعد إن الأمريكيين الأفارقة يقعدوا ورا ولازم يقوموا للمواطن الأبيض المقاطعة كانت انهم يمشوا مسافات طويلة ولا إنهم نركبوا أوتوبيس وبسبب الضغوط الإقتصادية علي الشركة تراجعت عن قواعد الفصل العنصري.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: _getTextFontSize(constraints)),
              ),
              CustomText(
                'طبعاً احنا حكينا بإختصار شديد وقصص العقوبات الإقتصادية ( اللي نجحت ) في الضغط علي الشركات، كتير جداً وفيها ضحك كتير .. تقدر تلاقي قصص اكتر لو دورت علي جوجل. ',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: _getTextFontSize(constraints)),
              ),
              CustomText(
                'لكن وانت بتحس " بدوبامين الانتصار " افتكر ان فيه مواطن أمريكي أسمر قرر يمشي مسافات طويلة ورجلة توجعه ولا إنه يركب الأوتوبيس  ، و كمان فيه دكتور جامعة في أمريكا خسر أبحاثه لأنه رفض إن الناس تموت في فيتنام ، و فيه واحد ألماني متكلف ١٢٠٠ يورو في السنة ولا إنه يرضى بموت الناس في أوكرانيا.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: _getTextFontSize(constraints)),
              ),
            ],
          );
        },
      ),
    );
  }

  double _getTextFontSize(BoxConstraints constraints) {
    if (constraints.maxWidth > 600) {
      return 16.0;
    } else {
      return 14.0;
    }
  }
}
