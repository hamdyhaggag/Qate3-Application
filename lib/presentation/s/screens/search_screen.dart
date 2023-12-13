import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:qate3_app/presentation/s/screens/Home/Cegar/Qate3/qate3_bank.dart';
import 'package:qate3_app/presentation/s/screens/Home/Devices/Qate3/qate3_devices.dart';
import 'package:qate3_app/presentation/s/screens/Home/Drinks/Qate3/qate3_coffee.dart';
import 'package:qate3_app/presentation/s/screens/Home/Drinks/Qate3/qate3_milk.dart';
import 'package:qate3_app/presentation/s/screens/Home/Drinks/Qate3/qate3_nescafe.dart';
import 'package:qate3_app/presentation/s/screens/Home/Drinks/Qate3/qate3_soda.dart';
import 'package:qate3_app/presentation/s/screens/Home/Drinks/Qate3/qate3_tea.dart';
import 'package:qate3_app/presentation/s/screens/Home/Drinks/Qate3/qate3_water.dart';
import 'package:qate3_app/presentation/s/screens/Home/Snacks/Qate3/qate3_bescauit.dart';
import 'package:qate3_app/presentation/s/screens/Home/Snacks/Qate3/qate3_chipsy.dart';
import 'package:qate3_app/presentation/s/screens/Home/Snacks/Qate3/qate3_chocolate.dart';
import 'package:qate3_app/presentation/s/screens/Home/Snacks/Qate3/qate3_icecream.dart';
import 'package:qate3_app/presentation/s/screens/Home/Snacks/Qate3/qate3_zbady.dart';
import 'package:qate3_app/presentation/s/screens/Home/cars/Qate3/qate3_cars.dart';
import 'package:qate3_app/presentation/s/screens/Home/clean/Qate3/qate3_clean.dart';
import 'package:qate3_app/presentation/s/screens/Home/clothes/Qate3/qate3_clothes.dart';
import 'package:qate3_app/presentation/s/screens/Home/kitchen/Qate3/qate3_boharat.dart';
import 'package:qate3_app/presentation/s/screens/Home/kitchen/Qate3/qate3_gebna.dart';
import 'package:qate3_app/presentation/s/screens/Home/personal%20cleanliness/Qate3/qate3_perfium.dart';
import 'package:qate3_app/presentation/s/screens/Home/personal%20cleanliness/Qate3/qate3_shampo.dart';
import 'package:qate3_app/presentation/s/screens/Home/personal%20cleanliness/Qate3/qate3_spray.dart';
import 'package:qate3_app/presentation/s/screens/Home/personal%20cleanliness/Qate3/qate3_toothpaste.dart';
import 'package:qate3_app/presentation/s/widgets.dart';

class ItemModel {
  final String name;
  final void Function(BuildContext) onTap;

  ItemModel(this.name, this.onTap);
}

class CustomSearchScreenItem extends StatelessWidget {
  final String name;
  final void Function(BuildContext) onTap;

  const CustomSearchScreenItem({
    Key? key,
    required this.name,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      margin: const EdgeInsets.symmetric(vertical: 2, horizontal: 6),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
        title: Text(
          name,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: const Icon(
          FontAwesomeIcons.magnifyingGlass,
          size: 18,
          color: Colors.red,
        ),
        onTap: () {
          onTap(context);
        },
      ),
    );
  }
}

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final List<ItemModel> items = [
    ItemModel('المياة', (context) => navigateTo(context, const Qate3Water())),
    ItemModel('المشروبات \nالغازية',
        (context) => navigateTo(context, const Qate3Soda())),
    ItemModel('الألبان', (context) => navigateTo(context, const Qate3Milk())),
    ItemModel('القهوة', (context) => navigateTo(context, const Qate3Coffee())),
    ItemModel(
        'النسكافية', (context) => navigateTo(context, const Qate3Nescafe())),
    ItemModel('الشيبسي', (context) => navigateTo(context, const Qate3Chipsy())),
    ItemModel(
        'الشيكولاته', (context) => navigateTo(context, const Qate3Chocolate())),
    ItemModel(
        'البسكويت', (context) => navigateTo(context, const Qate3Bescauit())),
    ItemModel('زبادي', (context) => navigateTo(context, const Qate3Zbady())),
    ItemModel(
        'أيس كريم', (context) => navigateTo(context, const Qate3Icecream())),
    ItemModel('الجبن', (context) => navigateTo(context, const Qate3Gebna())),
    ItemModel(
        'البهارات', (context) => navigateTo(context, const Qate3Boharat())),
    ItemModel(
        'مزيل العرق', (context) => navigateTo(context, const Qate3Spray())),
    ItemModel('الشامبو', (context) => navigateTo(context, const Qate3Shampo())),
    ItemModel(
        'البرفيوم', (context) => navigateTo(context, const Qate3Perfium())),
    ItemModel(
        'مسحوق\n الغسيل', (context) => navigateTo(context, const Qate3Clean())),
    ItemModel('معجون\n أسنان',
        (context) => navigateTo(context, const Qate3Toothpaste())),
    ItemModel('الشاي', (context) => navigateTo(context, const Qate3Tea())),
    ItemModel('السيارات', (context) => navigateTo(context, const Qate3Cars())),
    ItemModel('الأجهزة الكهربائية',
        (context) => navigateTo(context, const Qate3Devices())),
    ItemModel(
        'محطات البنزين', (context) => navigateTo(context, const Qate3Bank())),
    ItemModel(
        'الملابس', (context) => navigateTo(context, const Qate3Clothes())),
  ];

  List<ItemModel> filteredItems = [];

  @override
  void initState() {
    super.initState();
    filteredItems = List.from(items);
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: SizedBox(
            height: 38,
            child: TextField(
              onChanged: (value) => onSearch(value),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.all(0),
                prefixIcon: const Icon(
                  FontAwesomeIcons.magnifyingGlass,
                  color: Colors.red,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide.none,
                ),
                hintStyle: const TextStyle(fontSize: 19, color: Colors.grey),
                hintText: "بتبحث عن إيه ؟",
              ),
            ),
          ),
        ),
        body: Container(
          color: Colors.white,
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: _getGridCrossAxisCount(context),
              crossAxisSpacing: 1.0,
              mainAxisSpacing: 1.0,
              childAspectRatio: _getGridChildAspectRatio(context),
            ),
            itemCount: filteredItems.length,
            itemBuilder: (context, index) {
              return CustomSearchScreenItem(
                name: filteredItems[index].name,
                onTap: filteredItems[index].onTap,
              );
            },
          ),
        ),
      ),
    );
  }

  int _getGridCrossAxisCount(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth > 600 ? 3 : 2;
  }

  double _getGridChildAspectRatio(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth > 600 ? 3.5 : 2.7;
  }

  onSearch(String search) {
    setState(() {
      filteredItems = items
          .where(
            (item) => item.name.toLowerCase().contains(search.toLowerCase()),
          )
          .toList();
    });
  }
}
