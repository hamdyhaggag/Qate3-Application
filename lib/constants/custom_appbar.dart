import 'package:day_night_switch/day_night_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../bussiness_logic/cubit/theme_cubit.dart';
import '../bussiness_logic/cubit/theme_state.dart';
import 'colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
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
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

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
          alignment: showSwitch
              ? AlignmentDirectional.topEnd
              : (isHome
                  ? AlignmentDirectional.center
                  : AlignmentDirectional.topEnd),
          child: Text(
            title,
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
        actions: !isHome
            ? [
                IconButton(
                  onPressed: () {
                    Navigator.canPop(context) == true
                        ? Navigator.pop(context)
                        : () {};
                  },
                  icon: Icon(
                    FontAwesomeIcons.chevronRight,
                    color: isDarkMode
                        ? Colors.white
                        : Theme.of(context).primaryColor,
                  ),
                ),
                const SizedBox(width: 3),
              ]
            : [
                if (showSwitch)
                  BlocBuilder<ThemeCubit, ThemeState>(
                    builder: (context, themeState) => Transform.scale(
                      scale: 0.4,
                      child: DayNightSwitch(
                        value: themeState.themeModeType == ThemeModeType.dark,
                        onChanged: (value) {
                          context.read<ThemeCubit>().toggleTheme();
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
