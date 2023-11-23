import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qate3_app/constants/custom_appbar.dart';
import 'package:qate3_app/presentation/s/widgets.dart';

class CustomChoice extends StatelessWidget {
  const CustomChoice({
    Key? key,
    required this.title,
    required this.screen1,
    required this.screen2,
  }) : super(key: key);

  final String title;
  final Widget screen1;
  final Widget screen2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: title, isHome: false),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.05,
          horizontal: MediaQuery.of(context).size.width * 0.04,
        ),
        child: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: [
            GestureDetector(
              onTap: () => navigateTo(context, screen1),
              child: buildChoiceItem(
                context,
                'assets/images/redcircle.svg',
                'قائمة المقاطعة',
                'الدخول إلى قائمة منتجات المقاطعة',
                Colors.red,
              ),
            ),
            const SizedBox(height: 20.0),
            GestureDetector(
              onTap: () => navigateTo(context, screen2),
              child: buildChoiceItem(
                context,
                'assets/images/greencircle.svg',
                'قائمة البدائل',
                'الدخول إلى قائمة المنتجات البديلة',
                Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildChoiceItem(
    BuildContext context,
    String imagePath,
    String title,
    String description,
    Color borderColor,
  ) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18.0),
        border: Border.all(color: borderColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          AspectRatio(
            aspectRatio: 2.0,
            child: SvgPicture.asset(
              imagePath,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.010),
          Text(
            title,
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.05,
              fontWeight: FontWeight.bold,
              fontFamily: 'Cairo',
            ),
          ),
          Text(
            description,
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.04,
              fontFamily: 'Cairo',
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.05),
        ],
      ),
    );
  }
}
