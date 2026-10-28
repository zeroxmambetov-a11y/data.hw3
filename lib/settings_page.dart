import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'settings_cubit.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Настройки')),
      body: BlocBuilder<SettingsCubit, bool>(
        builder: (context, isDarkTheme) {
          return SwitchListTile(
            title: const Text('Тёмная тема'),
            value: isDarkTheme,
            onChanged: (_) {
              context.read<SettingsCubit>().toggleTheme();
            },
          );
        },
      ),
    );
  }
}
