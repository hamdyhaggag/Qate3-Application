import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:qate3_app/constants/carousel_slider.dart';
import 'package:qate3_app/constants/colors.dart';
import 'package:qate3_app/constants/custom_category_item.dart';
import 'package:qate3_app/presentation/s/screens/Home/Cosmetic/cosmetics.dart';
import 'package:qate3_app/presentation/s/screens/Home/Drinks/drinks.dart';
import 'package:qate3_app/presentation/s/screens/Home/Snacks/snack.dart';
import 'package:qate3_app/presentation/s/screens/Home/clean/clean.dart';
import 'package:qate3_app/presentation/s/screens/Home/kitchen/kitchen.dart';
import 'package:qate3_app/presentation/s/screens/Home/personal%20cleanliness/personal.dart';
import 'package:qate3_app/presentation/s/screens/Home/restaurent/restaurent.dart';
import 'package:qate3_app/presentation/s/screens/scanner.dart';
import 'package:qate3_app/presentation/s/widgets.dart';
import '../../../constants/custom_appbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void requestPermission() async {
    FirebaseMessaging messaging = FirebaseMessaging.instance;
    NotificationSettings settings = await messaging.requestPermission(
        alert: true,
        announcement: false,
        badge: true,
        carPlay: false,
        criticalAlert: false,
        provisional: false,
        sound: true);
    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      print('User Granted Permission');
    }
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      navigateTo(context, const HomeScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<CategoryItemData> categoryItems = [
      CategoryItemData(
        imageUrl: 'assets/home/1.jpg',
        title: 'المشروبات',
        subtitle: 'قسم المياة الغازية',
        onTap: () => navigateTo(context, const DrinksScreen()),
      ),
      CategoryItemData(
        imageUrl: 'assets/home/2.jpg',
        title: 'السناكس',
        subtitle: 'شيبسي و شيكولاته',
        onTap: () => navigateTo(context, const SnacksScreeen()),
      ),
      CategoryItemData(
        imageUrl: 'assets/home/3.jpg',
        title: 'المطاعم',
        subtitle: 'قسم الوجبات السريعة',
        onTap: () => navigateTo(context, const RestaurentScreeen()),
      ),
      CategoryItemData(
        imageUrl: 'assets/home/4.jpg',
        title: ' مستلزمات المطبخ',
        subtitle: 'جبن و ألبان',
        onTap: () => navigateTo(context, const KitchenScreen()),
      ),
      CategoryItemData(
        imageUrl: 'assets/home/5.jpg',
        title: ' المنظفات',
        subtitle: 'قسم مسحوق الغسيل ',
        onTap: () => navigateTo(context, const CleanScreen()),
      ),
      CategoryItemData(
        imageUrl: 'assets/home/6.jpg',
        title: ' منتجات التجميل',
        subtitle: 'قسم الكوزماتيكس',
        onTap: () => navigateTo(context, const CosmeticsScreen()),
      ),
      CategoryItemData(
        imageUrl: 'assets/home/7.jpg',
        title: 'العناية الشخصية',
        subtitle: 'قسم مزيل العرق ',
        onTap: () => navigateTo(context, const PersonalScreen()),
      ),
      // CategoryItemData(
      //   imageUrl: 'assets/home/8.jpg',
      //   title: ' الملابس',
      //   subtitle: 'قسم محلات الملابس',
      //   onTap: () => navigateTo(context, const ClothesScreen()),
      // ),
      CategoryItemData(
        imageUrl: 'assets/home/30.jpg',
        title: ' سكانر',
        subtitle: 'ماسح ضوئي للمنتجات ',
        onTap: () => navigateTo(context, const ScannerPage()),
      ),
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(title: 'أهلاً بك في تطبيق قاطع', isHome: true),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          double screenWidth = MediaQuery.of(context).size.width;

          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const CarSlider(
                  imageUrl1: 'assets/images/1.jpg',
                  imageUrl2: 'assets/images/2.jpg',
                  imageUrl3: 'assets/images/3.jpg',
                  imageUrl4: 'assets/images/4.jpg',
                  imageUrl5: 'assets/images/5.jpg',
                ),
                Padding(
                  padding: EdgeInsets.all(screenWidth > 600 ? 24.0 : 12.0),
                  child: Center(
                    child: Text(
                      'المنتجات على حسب الأقسام',
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.bold,
                        fontSize: screenWidth > 600 ? 30 : 19,
                      ),
                    ),
                  ),
                ),
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: screenWidth > 600 ? 4 : 2,
                    childAspectRatio: 0.71,
                  ),
                  itemCount: categoryItems.length,
                  itemBuilder: (BuildContext context, int index) {
                    final item = categoryItems[index];
                    return Padding(
                      padding: EdgeInsets.all(screenWidth > 600 ? 16.0 : 7.0),
                      child: GestureDetector(
                        onTap: item.onTap,
                        child: CustomCategoryItem(
                          imageUrl1: item.imageUrl,
                          title1: item.title,
                          subtitle1: item.subtitle,
                        ),
                      ),
                    );
                  },
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

class CategoryItemData {
  final String imageUrl;
  final String title;
  final String subtitle;
  final Function()? onTap;

  CategoryItemData({
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });
}
