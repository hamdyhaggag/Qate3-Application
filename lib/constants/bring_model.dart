import 'package:flutter/material.dart';
import 'package:qate3_app/constants/custom_appbar.dart';

class BringModel extends StatelessWidget {
  const BringModel({
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
    this.isCertified1 = false,
    this.isCertified2 = false,
    this.isCertified3 = false,
    this.isCertified4 = false,
    this.isCertified5 = false,
    this.isCertified6 = false,
    this.isCertified7 = false,
    this.isCertified8 = false,
    this.isCertified9 = false,
    this.isCertified10 = false,
    this.isCertified11 = false,
    this.isCertified12 = false,
    this.isCertified13 = false,
    this.isCertified14 = false,
    this.isCertified15 = false,
    this.isCertified16 = false,
    this.isCertified17 = false,
    this.isCertified18 = false,
    this.isCertified19 = false,
    this.isCertified20 = false,
    this.isCertified21 = false,
    this.isCertified22 = false,
    this.isCertified23 = false,
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
  final bool isCertified1;
  final bool isCertified2;
  final bool isCertified3;
  final bool isCertified4;
  final bool isCertified5;
  final bool isCertified6;
  final bool isCertified7;
  final bool isCertified8;
  final bool isCertified9;
  final bool isCertified10;
  final bool isCertified11;
  final bool isCertified12;
  final bool isCertified13;
  final bool isCertified14;
  final bool isCertified15;
  final bool isCertified16;
  final bool isCertified17;
  final bool isCertified18;
  final bool isCertified19;
  final bool isCertified20;
  final bool isCertified21;
  final bool isCertified22;
  final bool isCertified23;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
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
        return ChoiceModel(imagePath1, title1, isCertified1);
      case 1:
        return ChoiceModel(imagePath2, title2, isCertified2);
      case 2:
        return ChoiceModel(imagePath3, title3, isCertified3);
      case 3:
        return ChoiceModel(imagePath4, title4, isCertified4);
      case 4:
        return ChoiceModel(imagePath5, title5, isCertified5);
      case 5:
        return ChoiceModel(imagePath6, title6, isCertified6);
      case 6:
        return ChoiceModel(imagePath7, title7, isCertified7);
      case 7:
        return ChoiceModel(imagePath8, title8, isCertified8);
      case 8:
        return ChoiceModel(imagePath9, title9, isCertified9);
      case 9:
        return ChoiceModel(imagePath10, title10, isCertified10);
      case 10:
        return ChoiceModel(imagePath11, title11, isCertified11);
      case 11:
        return ChoiceModel(imagePath12, title12, isCertified12);
      case 12:
        return ChoiceModel(imagePath13, title13, isCertified13);
      case 13:
        return ChoiceModel(imagePath14, title14, isCertified14);
      case 14:
        return ChoiceModel(imagePath15, title15, isCertified15);
      case 15:
        return ChoiceModel(imagePath16, title16, isCertified16);
      case 16:
        return ChoiceModel(imagePath17, title17, isCertified17);
      case 17:
        return ChoiceModel(imagePath18, title18, isCertified18);
      case 18:
        return ChoiceModel(imagePath19, title19, isCertified19);
      case 19:
        return ChoiceModel(imagePath20, title20, isCertified20);
      case 20:
        return ChoiceModel(imagePath21, title21, isCertified21);
      case 21:
        return ChoiceModel(imagePath22, title22, isCertified22);
      case 22:
        return ChoiceModel(imagePath23, title23, isCertified23);
      default:
        return ChoiceModel('assets/images/greencircle.svg', 'Default', false);
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
            child: Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    choice.imagePath,
                    fit: BoxFit.contain,
                  ),
                ),
                if (choice.isCertified)
                  Positioned(
                    top: MediaQuery.of(context).size.height *
                        0.0001, // Adjust top position based on screen height
                    right: MediaQuery.of(context).size.width *
                        0.07, // Adjust right position based on screen width
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width *
                            0.03, // Horizontal padding
                        vertical: MediaQuery.of(context).size.height *
                            0.005, // Vertical padding
                      ),
                      decoration: BoxDecoration(
                        color: Colors.green.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize
                            .min, // Adjust Row to only take necessary space
                        children: [
                          Icon(
                            Icons.check_circle, // Verification icon
                            color: Colors.white,
                            size: MediaQuery.of(context).size.width *
                                0.035, // Adjust icon size
                          ),
                          const SizedBox(
                              width: 5.0), // Space between text and icon

                          Text(
                            'شريك معتمد',
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.03,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontFamily: 'Cairo',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.007),
          Text(
            choice.title,
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.04,
              fontWeight: FontWeight.bold,
              fontFamily: 'Cairo',
              color: Colors.green,
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
  final bool isCertified;
  final Color borderColor = Colors.green;

  ChoiceModel(this.imagePath, this.title, [this.isCertified = false]);
}
