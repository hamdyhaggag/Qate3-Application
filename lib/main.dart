import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qate3_app/presentation/screens/splash_screen.dart';
import 'package:qate3_app/presentation/theme.dart';
import 'bussiness_logic/cubit/theme_cubit.dart';
import 'bussiness_logic/cubit/theme_state.dart';
import 'firebase_options.dart';

Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  if (kDebugMode) {
    print(message.messageId);
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);

  runApp(BlocProvider(
    create: (context) => ThemeCubit(),
    child: const Qate3(),
  ));
}

class Qate3 extends StatelessWidget {
  const Qate3({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(builder: (context, themeState) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: themeState.themeModeType == ThemeModeType.dark
            ? ThemeMode.dark
            : ThemeMode.light,
        home: Builder(builder: (context) {
          return const SplashScreen();
        }),
      );
    });
  }
}
