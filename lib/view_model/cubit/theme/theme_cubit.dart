import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeInitial());

  ThemeCubit get(context) => BlocProvider.of(context, listen: true);

  bool isDark = false;

  switchThemeMode(){
    isDark = !isDark;
    emit(SwitchThemeMode());
  }
}
