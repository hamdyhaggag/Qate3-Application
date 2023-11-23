import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    required this.title,
    this.isHome = false,
  }) : super(key: key);

  final String title;
  final bool isHome;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    bool isSmallScreen = MediaQuery.of(context).size.width < 600;

    return SafeArea(
      child: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Align(
          alignment: isHome
              ? AlignmentDirectional.topCenter
              : AlignmentDirectional.topEnd,
          child: Text(
            title,
            style: TextStyle(
              fontFamily: 'Cairo',
              color: AppColors.blackColor,
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
                  icon: const Icon(
                    FontAwesomeIcons.chevronRight,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(width: 3),
              ]
            : [],
      ),
    );
  }
}
