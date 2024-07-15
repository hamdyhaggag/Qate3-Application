import 'package:flutter/material.dart';
import 'package:qate3_app/constants/custom_appbar.dart';

class AppInfo extends StatelessWidget {
  const AppInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.white,
        appBar: CustomAppBar(title: 'معلومات عن التطبيق'),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: SingleChildScrollView(
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Text(
                'حول تطبيق قاطع :\nقاطع هو تطبيق رائد يهدف إلى نصرة القضية الفلسطينية من خلال دعم وتشجيع المقاطعة المستدامة للمنتجات الخاصة بالشركات التي تدعم الاحتلال.\n\nمزايا تطبيق قاطع :\n يُقدم التطبيق معلومات دقيقة حول المنتجات التي يجب تجنبها ويوفر بدائل لا تعترف بالإحتلال. \n\nمعرفة المنتجات المقاطعة:\n يقدم التطبيق قاعدة بيانات شاملة تحتوي على قائمة المنتجات التي يجب مقاطعتها من الشركات المدعمة للاحتلال.\n\nالبحث عن بدائل: \nيساعد التطبيق المستخدمين على البحث عن منتجات بديلة عالية الجودة مصنوعة من شركات تعتز بالعدالة وتحترم حقوق الإنسان.\n\nمعلومات مُحدثة:\n يتم تحديث التطبيق بإنتظام لضمان توفير معلومات دقيقة ومحدثة حول المنتجات والشركات.\n\nمشاركة المعرفة:\n يمكن للمستخدمين مشاركة معلومات حول المقاطعة والبدائل مع الآخرين لنشر الوعي.\n\nنضال من أجل العدالة :\n تطبيق قاطع يعكس النضال من أجل العدالة ودعم القضية الفلسطينية.\n\n نحن ندعو جميع المستخدمين إلى الانضمام إلى هذه الحملة السلمية والمساهمة في تحقيق التغيير.\n\nشارك التطبيق\n ساهم في نصرة القضية الفلسطينية وشارك تطبيق قاطع مع الآخرين لكي تساعدنا في بناء حركة التضامن وجعل صوت العدالة مسموعًا.\n\nاجعل قاطع شريكًا في مساهمتك لنصرة القضية الفلسطينية.',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
        ));
  }
}
