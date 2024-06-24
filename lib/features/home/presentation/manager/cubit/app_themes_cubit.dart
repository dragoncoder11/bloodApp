import 'package:bloc/bloc.dart';
import 'package:bloody/core/utils/cache.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'app_themes_state.dart';

class AppThemesCubit extends Cubit<ThemeData> {
  AppThemesCubit() : super(ThemeData.light()){
    loadThemeFromPreferences();
  }
 

 
 Future<void> loadThemeFromPreferences() async {
  final theme = await CacheNetwork.getCacheData(key: 'theme');
  if (theme == 'd') {
    emit(ThemeData.dark());
  } else {
    emit(ThemeData.light());
  }
}

 void changeTheme()async {
  if (state == ThemeData.light()) {
    
    emit(ThemeData.dark());
    await CacheNetwork.insertToCache(key: 'theme', value: 'd');
  } else {
    emit(ThemeData.light());
    await CacheNetwork.insertToCache(key: 'theme', value: 'l');
  }
}
} 



