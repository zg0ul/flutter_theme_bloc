import 'package:flutter/material.dart';
import 'package:theme_bloc/core/app_theme.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: AppTheme.values.length,
        itemBuilder: (context, index) {
          final itemAppTheme = AppTheme.values[index];
          return Card(
            color: appThemeData[itemAppTheme]!.primaryColor,
            child: ListTile(
              title: Text(
                itemAppTheme.name,
                style: appThemeData[itemAppTheme]!.textTheme.titleMedium,
              ),
              onTap: () {},
            ),
          );
        },
      ),
    );
  }
}
