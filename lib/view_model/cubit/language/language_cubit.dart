import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'language_state.dart';

class LanguageCubit extends Cubit<LanguageState> {
  LanguageCubit() : super(LanguageInitial());

  LanguageCubit get(context) => BlocProvider.of(context);

  String local = 'en';

  setEnglishLanguage(){
    local = 'en';
    emit(EnglishLanguage());
  }

  setArabicLanguage(){
    local = 'ar';
    emit(ArabicLanguage());
  }
}
