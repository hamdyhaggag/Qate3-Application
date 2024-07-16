import 'package:flutter/material.dart';
import 'package:qate3_app/constants/custom_appbar.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: CustomAppBar(title: 'سياسة الخصوصية'),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: SingleChildScrollView(
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Text(
                '''
  1. مقدمة:
  تطبيق "قاطع" يعتبر رائدًا في مجال دعم القضية الفلسطينية من خلال تعزيز المقاطعة المستدامة للمنتجات المرتبطة بالشركات المناصرة للاحتلال.

  2. المعلومات التي نقوم بجمعها:
  تطبيق "قاطع" يسعى لجمع معلومات دقيقة حول المنتجات المستحسن تجنبها، مع توفير بدائل خالية من الدعم الإحتلالي.

  3. مشاركة المعلومات:
  يُمكّن التطبيق مستخدميه من مشاركة معلومات حول استراتيجيات المقاطعة والبدائل المستدامة، بهدف زيادة الوعي الجماهيري.

  4. الأمان:
  نلتزم بتوفير بيئة آمنة للمستخدمين، ونتخذ إجراءات أمان متقدمة لحماية خصوصية بياناتهم.

  5. تحديثات سياسة الخصوصية:
  نقوم بتحديث سياسة الخصوصية بانتظام لضمان توافقها مع أحدث المعايير والتشريعات. سنقوم بإشعار المستخدمين بأي تغييرات كبيرة.

  6. اتصل بنا:
  نرحب بأي استفسارات أو مخاوف تتعلق بسياسة الخصوصية، ويمكن للمستخدمين الاتصال بنا للحصول على دعم فوري.

  7. الإمتثال القانوني:
  نلتزم بالامتثال للقوانين والتشريعات ذات الصلة لضمان حقوق المستخدمين وحماية خصوصيتهم.

  8. التحالف للقضية:
  ندعو المستخدمين للإنضمام إلى حملتنا السلمية والمشاركة في نشر الوعي حول القضية الفلسطينية، لنبني معًا حركة تضامن فاعلة.
  ''',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ));
  }
}
