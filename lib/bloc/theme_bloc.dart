import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:change_app_theme_using_bloc/theme/app_theme.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  @override
  ThemeState get initialState =>
      ThemeState(themeData: appThemesData[AppTheme.greenLight]);

  @override
  Stream<ThemeState> mapEventToState(
    ThemeEvent event,
  ) async* {
    if (event is ChangeAppTheme) {
      print('Theme Changed');
      yield ThemeState(themeData: appThemesData[event.theme]);
    }
  }
}
