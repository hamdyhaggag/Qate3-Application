import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:qate3_app/constants/carousel_slider.dart';
import 'package:qate3_app/constants/custom_category_item.dart';
import '../../constants/custom_appbar.dart';
import '../widgets.dart';
import 'Home/Banks/bank.dart';
import 'Home/Benzen/benzen.dart';
import 'Home/Children/children.dart';
import 'Home/Cosmetic/cosmetics.dart';
import 'Home/Devices/devices.dart';
import 'Home/Drinks/drinks.dart';
import 'Home/Medicine/medicine.dart';
import 'Home/Snacks/snack.dart';
import 'Home/cars/cars.dart';
import 'Home/clean/clean.dart';
import 'Home/clothes/clothes.dart';
import 'Home/flight/flight.dart';
import 'Home/kitchen/kitchen.dart';
import 'Home/personal cleanliness/personal.dart';
import 'Home/restaurent/restaurent.dart';
import 'brand.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  final bool isDarkTheme = false;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    requestPermission();
  }

  var logger = Logger();

  void requestPermission() async {
    FirebaseMessaging messaging = FirebaseMessaging.instance;
    NotificationSettings settings = await messaging.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      logger.i('User Granted Permission');
    }

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      navigateTo(context, const HomeScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<CategoryItemData> categoryItems = [
      CategoryItemData(
        imageUrl: 'assets/home/1.png',
        title: 'المشروبات',
        subtitle: 'قسم المياة الغازية',
        onTap: () => navigateTo(context, const DrinksScreen()),
      ),
      CategoryItemData(
        imageUrl: 'assets/home/2.png',
        title: 'سناكس',
        subtitle: ' قسم السناكس',
        onTap: () => navigateTo(context, const SnacksScreeen()),
      ),
      CategoryItemData(
        imageUrl: 'assets/home/3.png',
        title: 'المطاعم',
        subtitle: 'قسم الوجبات السريعة',
        onTap: () => navigateTo(context, const RestaurentScreeen()),
      ),
      CategoryItemData(
        imageUrl: 'assets/home/4.png',
        title: ' مستلزمات المطبخ',
        subtitle: 'قسم المطبخ',
        onTap: () => navigateTo(context, const KitchenScreen()),
      ),
      CategoryItemData(
        imageUrl: 'assets/home/5.png',
        title: ' المنظفات',
        subtitle: 'قسم مسحوق الغسيل ',
        onTap: () => navigateTo(context, const CleanScreen()),
      ),
      CategoryItemData(
        imageUrl: 'assets/home/54.png',
        title: '  مستلزمات الأطفال',
        subtitle: 'قسم الأطفال',
        onTap: () => navigateTo(context, const ChildrenScreen()),
      ),
      CategoryItemData(
        imageUrl: 'assets/home/52.png',
        title: '  شركات الأدوية',
        subtitle: 'قسم الأدوية',
        onTap: () => navigateTo(context, const MedicineScreen()),
      ),
      CategoryItemData(
        imageUrl: 'assets/home/6.png',
        title: ' مستحضرات التجميل',
        subtitle: 'قسم الكوزماتيكس',
        onTap: () => navigateTo(context, const CosmeticsScreen()),
      ),
      CategoryItemData(
        imageUrl: 'assets/home/7.png',
        title: 'العناية الشخصية',
        subtitle: 'قسم مزيل العرق ',
        onTap: () => navigateTo(context, const PersonalScreen()),
      ),
      CategoryItemData(
        imageUrl: 'assets/home/8.png',
        title: ' الملابس',
        subtitle: 'قسم محلات الملابس',
        onTap: () => navigateTo(context, const ClothesScreen()),
      ),
      CategoryItemData(
        imageUrl: 'assets/home/32.png',
        title: ' علامات تجارية',
        subtitle: ' مقاطعة براندات ',
        onTap: () => navigateTo(context, const BrandsScreen()),
      ),
      CategoryItemData(
        imageUrl: 'assets/home/47.png',
        title: ' السيارات ',
        subtitle: ' مقاطعة السيارات ',
        onTap: () => navigateTo(context, const CarsScreen()),
      ),
      CategoryItemData(
        imageUrl: 'assets/home/48.png',
        title: ' محطات البنزين ',
        subtitle: ' مقاطعة محطات البنزين ',
        onTap: () => navigateTo(context, const BenzenScreen()),
      ),
      CategoryItemData(
        imageUrl: 'assets/home/49.png',
        title: ' الأجهزة الكهربائية ',
        subtitle: ' مقاطعة الأجهزة ',
        onTap: () => navigateTo(context, const DevicesScreen()),
      ),
      CategoryItemData(
        imageUrl: 'assets/home/50.png',
        title: ' البنوك  ',
        subtitle: ' مقاطعة البنوك ',
        onTap: () => navigateTo(context, const BankScreen()),
      ),
      CategoryItemData(
        imageUrl: 'assets/home/51.png',
        title: ' رحلات الطيران  ',
        subtitle: ' مقاطعة الطيران ',
        onTap: () => navigateTo(context, const FlightScreen()),
      ),
    ];

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: const CustomAppBar(
        title: 'أهلاً بك في تطبيق قاطع',
        isHome: true,
        showSwitch: true,
      ),
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
                  imageUrl4: 'assets/images/4.png',
                  imageUrl5: 'assets/images/5.jpg',
                ),
                Padding(
                  padding: EdgeInsets.all(screenWidth > 600 ? 24.0 : 12.0),
                  child: Center(
                    child: Text(
                      'المنتجات على حسب الأقسام',
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black,
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
                    childAspectRatio: 0.66,
                  ),
                  itemCount: categoryItems.length,
                  itemBuilder: (BuildContext context, int index) {
                    final item = categoryItems[index];
                    return Padding(
                      padding: EdgeInsets.all(screenWidth > 600 ? 14.0 : 12.0),
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
                ),
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
