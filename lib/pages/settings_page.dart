import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/theme_bloc.dart';
import '../theme/app_theme.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: AppTheme.values.length,
        itemBuilder: (ctx, index) {
          final itemAppTheme = AppTheme.values[index];
          return Card(
            color: appThemesData[itemAppTheme].primaryColor,
            child: ListTile(
              title: Text(
                '$itemAppTheme',
                style: appThemesData[itemAppTheme].textTheme.body1,
              ),
              onTap: () {
                BlocProvider.of<ThemeBloc>(context).add(
                  ChangeAppTheme(theme: itemAppTheme),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
