import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:qate3_app/constants/custom_appbar.dart';
import 'package:url_launcher/url_launcher.dart';

class ContributeScreen extends StatelessWidget {
  const ContributeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'المساهمون في التطبيق', isHome: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: SingleChildScrollView(
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: RichText(
              text: TextSpan(
                text: '''
يسر فريق تطوير [ قاطع ] أن يعبر عن خالص الشكر والتقدير للمساهمين المتطوعين في تطوير وتحسين تجربة المستخدم لدينا ، إنّ إسمهم أصبح جزءًا لا يتجزأ من نجاح وتميز التطبيق ، ونود توجيه الشكر الخاص لكل من :

أيهم عثمان :
كل الشكر للمصمم أيهم عثمان على السماح لنا بإقتباس الشعار الرائع الذي أضفى على التطبيق هوية فريدة وجذابة ، مما جعل تجربة المستخدم بصريًا جذابة .
''',
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.w400,
                ),
                children: [
                  TextSpan(
                    text: 'behance',
                    style: const TextStyle(
                      color: Colors.red,
                      decoration: TextDecoration.underline,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        _launchURL('https://www.behance.net/aihamgd');
                      },
                  ),
                  const TextSpan(
                    text: '''
                
                    
وسام مصطفى :
كل الشكر للمصممة وسام مصطفى على السماح لنا بإقتباس تصميماتها وإضافتها في الشاشة الرئيسية للتطبيق ، إبداعها ومهاراتها في التصميم تعزز من جاذبية التطبيق وتعزز تجربة المستخدم .
''',
                  ),
                  TextSpan(
                    text: 'behance',
                    style: const TextStyle(
                      color: Colors.red,
                      decoration: TextDecoration.underline,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        _launchURL('https://www.behance.net/wesam9292');
                      },
                  ),
                  const TextSpan(
                    text: '''
               
                    
سلمى محمد :
كل الشكر للمصممة سلمى محمد على سماحها لنا بإقتباس تصميماتها واستخدامها في اسكرين التوعية ، إضافتها قيّمة وتسهم في تعزيز فهم المستخدمين حول قضايا المقاطعة .
''',
                  ),
                  TextSpan(
                    text: 'behance',
                    style: const TextStyle(
                      color: Colors.red,
                      decoration: TextDecoration.underline,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        _launchURL('https://www.behance.net/selmamuhamme');
                      },
                  ),
                  const TextSpan(
                    text: '''
                    
                    
فإننا نقدر بشدة التزامكم بالتميز والجودة ، ونتطلع إلى مزيد من التعاون لتحقيق أهدافنا المشتركة ، فريق [ قاطع ] يعد بالاستمرار في تحسين التطبيق وتلبية توقعات المستخدمين .

شكرًا لكم مرة أخرى على تفانيكم وجهودكم اللافتة .

مع فائق الاحترام،
فريق التطوير
[ قاطع ] 
  ''',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _launchURL(String url) async {
    try {
      Uri uri = Uri.parse(url);
      if (await canLaunch(uri.toString())) {
        await launch(uri.toString());
      } else {
        print('Could not launch $url. No suitable handler found.');
      }
    } catch (e) {
      print('Error launching URL: $e');
    }
  }
}
