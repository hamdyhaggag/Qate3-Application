import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:day_night_switch/day_night_switch.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../bussiness_logic/cubit/theme_cubit.dart';
import '../bussiness_logic/cubit/theme_state.dart';
import 'colors.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    required this.title,
    this.isHome = false,
    this.showSwitch = false,
  }) : super(key: key);

  final String title;
  final bool isHome;
  final bool showSwitch;

  @override
  CustomAppBarState createState() => CustomAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class CustomAppBarState extends State<CustomAppBar> {
  bool switchValue = false;
  late SharedPreferences prefs;

  @override
  void initState() {
    super.initState();
    loadSwitchState();
  }

  Future<void> loadSwitchState() async {
    prefs = await SharedPreferences.getInstance();
    setState(() {
      switchValue = prefs.getBool('switchValue') ?? false;
    });
  }

  Future<void> saveSwitchState(bool value) async {
    setState(() {
      switchValue = value;
    });
    await prefs.setBool('switchValue', value);
  }

  @override
  Widget build(BuildContext context) {
    bool isSmallScreen = MediaQuery.of(context).size.width < 600;
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return SafeArea(
      child: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Align(
          alignment: widget.showSwitch
              ? AlignmentDirectional.topEnd
              : (widget.isHome
                  ? AlignmentDirectional.center
                  : AlignmentDirectional.topEnd),
          child: Text(
            widget.title,
            style: TextStyle(
              fontFamily: 'Cairo',
              color: isDarkMode ? Colors.white : AppColors.blackColor,
              fontWeight: FontWeight.bold,
              fontSize: isSmallScreen ? 16 : 20,
            ),
          ),
        ),
        leadingWidth: 0.0,
        leading: const SizedBox(),
        actions: !widget.isHome
            ? [
                IconButton(
                  onPressed: () {
                    Navigator.canPop(context) == true
                        ? Navigator.pop(context)
                        : () {};
                  },
                  icon: Icon(
                    FontAwesomeIcons.chevronRight,
                    color: isDarkMode ? Colors.white : Colors.black,
                  ),
                ),
                const SizedBox(width: 3),
              ]
            : [
                if (widget.showSwitch)
                  BlocBuilder<ThemeCubit, ThemeState>(
                    builder: (context, themeState) => Transform.scale(
                      scale: 0.4,
                      child: DayNightSwitch(
                        value: switchValue,
                        onChanged: (value) {
                          setState(() {
                            switchValue = value;
                          });
                          context.read<ThemeCubit>().toggleTheme();
                          saveSwitchState(
                              value); // Save state to SharedPreferences
                        },
                        nightColor: Colors.black87,
                        dayColor: const Color(0xFF770301),
                        moonImage: const AssetImage('assets/home/img_moon.png'),
                        sunImage: const AssetImage('assets/home/img_sun.png'),
                      ),
                    ),
                  ),
              ],
      ),
    );
  }
}
