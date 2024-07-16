import 'package:flutter_bloc/flutter_bloc.dart';
import 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(const ThemeState(ThemeModeType.light));

  void toggleTheme() {
    emit(ThemeState(
      state.themeModeType == ThemeModeType.light
          ? ThemeModeType.dark
          : ThemeModeType.light,
    ));
  }
}
