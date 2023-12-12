import 'package:flutter/material.dart';
import 'package:qate3_app/constants/custom_appbar.dart';

class Qate3Model extends StatelessWidget {
  const Qate3Model({
    Key? key,
    required this.barTitle,
    required this.itemCountCallback,
    this.title1 = '',
    this.imagePath1 = '',
    this.title2 = '',
    this.imagePath2 = '',
    this.title3 = '',
    this.imagePath3 = '',
    this.title4 = '',
    this.imagePath4 = '',
    this.title5 = '',
    this.imagePath5 = '',
    this.title6 = '',
    this.imagePath6 = '',
    this.title7 = '',
    this.imagePath7 = '',
    this.title8 = '',
    this.imagePath8 = '',
    this.title9 = '',
    this.imagePath9 = '',
    this.title10 = '',
    this.imagePath10 = '',
    this.title11 = '',
    this.imagePath11 = '',
    this.title12 = '',
    this.imagePath12 = '',
    this.title13 = '',
    this.imagePath13 = '',
    this.title14 = '',
    this.imagePath14 = '',
    this.title15 = '',
    this.imagePath15 = '',
    this.title16 = '',
    this.imagePath16 = '',
    this.title17 = '',
    this.imagePath17 = '',
    this.title18 = '',
    this.imagePath18 = '',
    this.title19 = '',
    this.imagePath19 = '',
    this.title20 = '',
    this.imagePath20 = '',
    this.title21 = '',
    this.imagePath21 = '',
    this.title22 = '',
    this.imagePath22 = '',
    this.title23 = '',
    this.imagePath23 = '',
    this.title24 = '',
    this.imagePath24 = '',
    this.title25 = '',
    this.imagePath25 = '',
    this.title26 = '',
    this.imagePath26 = '',
    this.title27 = '',
    this.imagePath27 = '',
    this.title28 = '',
    this.imagePath28 = '',
    this.title29 = '',
    this.imagePath29 = '',
    this.title30 = '',
    this.imagePath30 = '',
    this.title31 = '',
    this.imagePath31 = '',
    this.title32 = '',
    this.imagePath32 = '',
    this.title33 = '',
    this.imagePath33 = '',
    this.title34 = '',
    this.imagePath34 = '',
    this.title35 = '',
    this.imagePath35 = '',
  }) : super(key: key);

  final String barTitle;
  final Function(int) itemCountCallback;
  final String title1;
  final String imagePath1;
  final String title2;
  final String imagePath2;
  final String title3;
  final String imagePath3;
  final String title4;
  final String imagePath4;
  final String title5;
  final String imagePath5;
  final String title6;
  final String imagePath6;
  final String title7;
  final String imagePath7;
  final String title8;
  final String imagePath8;
  final String title9;
  final String imagePath9;
  final String title10;
  final String imagePath10;
  final String title11;
  final String imagePath11;
  final String title12;
  final String imagePath12;
  final String title13;
  final String imagePath13;
  final String title14;
  final String imagePath14;
  final String title15;
  final String imagePath15;
  final String title16;
  final String imagePath16;
  final String title17;
  final String imagePath17;
  final String title18;
  final String imagePath18;
  final String title19;
  final String imagePath19;
  final String title20;
  final String imagePath20;
  final String title21;
  final String imagePath21;
  final String title22;
  final String imagePath22;
  final String title23;
  final String imagePath23;
  final String title24;
  final String imagePath24;
  final String title25;
  final String imagePath25;
  final String title26;
  final String imagePath26;
  final String title27;
  final String imagePath27;
  final String title28;
  final String imagePath28;
  final String title29;
  final String imagePath29;
  final String title30;
  final String imagePath30;
  final String title31;
  final String imagePath31;
  final String title32;
  final String imagePath32;
  final String title33;
  final String imagePath33;
  final String title34;
  final String imagePath34;
  final String title35;
  final String imagePath35;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(title: barTitle, isHome: false),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.01,
          horizontal: MediaQuery.of(context).size.width * 0.04,
        ),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 25.0,
            mainAxisSpacing: 25.0,
          ),
          itemCount: itemCountCallback(0),
          itemBuilder: (BuildContext context, int index) {
            return buildChoiceItem(context, getChoiceModel(index));
          },
        ),
      ),
    );
  }

  ChoiceModel getChoiceModel(int index) {
    switch (index) {
      case 0:
        return ChoiceModel(imagePath1, title1);
      case 1:
        return ChoiceModel(imagePath2, title2);
      case 2:
        return ChoiceModel(imagePath3, title3);
      case 3:
        return ChoiceModel(imagePath4, title4);
      case 4:
        return ChoiceModel(imagePath5, title5);
      case 5:
        return ChoiceModel(imagePath6, title6);
      case 6:
        return ChoiceModel(imagePath7, title7);
      case 7:
        return ChoiceModel(imagePath8, title8);
      case 8:
        return ChoiceModel(imagePath9, title9);
      case 9:
        return ChoiceModel(imagePath10, title10);
      case 10:
        return ChoiceModel(imagePath11, title11);
      case 11:
        return ChoiceModel(imagePath12, title12);
      case 12:
        return ChoiceModel(imagePath13, title13);
      case 13:
        return ChoiceModel(imagePath14, title14);
      case 14:
        return ChoiceModel(imagePath15, title15);
      case 15:
        return ChoiceModel(imagePath16, title16);
      case 16:
        return ChoiceModel(imagePath17, title17);
      case 17:
        return ChoiceModel(imagePath18, title18);
      case 18:
        return ChoiceModel(imagePath19, title19);
      case 19:
        return ChoiceModel(imagePath20, title20);
      case 20:
        return ChoiceModel(imagePath21, title21);
      case 21:
        return ChoiceModel(imagePath22, title22);
      case 22:
        return ChoiceModel(imagePath23, title23);
      case 23:
        return ChoiceModel(imagePath24, title24);
      case 24:
        return ChoiceModel(imagePath25, title25);
      case 25:
        return ChoiceModel(imagePath26, title26);
      case 26:
        return ChoiceModel(imagePath27, title27);
      case 27:
        return ChoiceModel(imagePath28, title28);
      case 28:
        return ChoiceModel(imagePath29, title29);
      case 29:
        return ChoiceModel(imagePath30, title30);
      case 30:
        return ChoiceModel(imagePath31, title31);
      case 31:
        return ChoiceModel(imagePath32, title32);
      case 32:
        return ChoiceModel(imagePath33, title33);
      case 33:
        return ChoiceModel(imagePath34, title34);
      case 34:
        return ChoiceModel(imagePath35, title35);

      default:
        return ChoiceModel('assets/images/redcircle.svg', 'Default');
    }
  }

  Widget buildChoiceItem(BuildContext context, ChoiceModel choice) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18.0),
        border: Border.all(color: choice.borderColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          AspectRatio(
            aspectRatio: 1.52,
            child: Image.asset(
              choice.imagePath,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.007),
          Text(
            choice.title,
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.04,
              fontWeight: FontWeight.bold,
              fontFamily: 'Cairo',
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}

class ChoiceModel {
  final String imagePath;
  final String title;
  final Color borderColor = Colors.red;

  ChoiceModel(this.imagePath, this.title);
}
