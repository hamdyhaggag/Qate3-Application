import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:day_night_switch/day_night_switch.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../bussiness_logic/cubit/theme_cubit.dart';
import '../bussiness_logic/cubit/theme_state.dart'; // Ensure ThemeState and ThemeModeType are correctly defined
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
    _initializePreferences();
  }

  Future<void> _initializePreferences() async {
    prefs = await SharedPreferences.getInstance();
    bool? cachedSwitchValue = prefs.getBool('switchValue');
    if (cachedSwitchValue != null) {
      switchValue = cachedSwitchValue;
      if (switchValue !=
          (BlocProvider.of<ThemeCubit>(context).state.themeModeType ==
              ThemeModeType.dark)) {
        context.read<ThemeCubit>().toggleTheme();
      }
    } else {
      switchValue = (BlocProvider.of<ThemeCubit>(context).state.themeModeType ==
          ThemeModeType.dark);
    }
    setState(() {});
  }

  Future<void> _toggleSwitch(bool value) async {
    setState(() {
      switchValue = value;
    });
    await prefs.setBool('switchValue', value);
    context.read<ThemeCubit>().toggleTheme();
  }

  @override
  Widget build(BuildContext context) {
    bool isSmallScreen = MediaQuery.of(context).size.width < 600;
    bool isDarkMode =
        BlocProvider.of<ThemeCubit>(context).state.themeModeType ==
            ThemeModeType.dark;

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
                          _toggleSwitch(value);
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
