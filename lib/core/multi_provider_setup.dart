import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:weather_space/core/get_it.dart';

import 'package:weather_space/core/themes.dart';

import 'package:weather_space/features/home/viewmodel/home_viewmodel.dart';
import '../features/home/view/screens/home_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MultiProviderSetup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => getIt<HomeViewModel>()),
      ],
      child: MaterialApp(
        // onGenerateTitle: (context) => AppLocalizations.of(context).language,
        theme: Themes.lightTheme,
        darkTheme: Themes.darkTheme,
        themeMode: ThemeMode.system,
        locale: AppLocalizations.supportedLocales.first,
        supportedLocales: AppLocalizations.supportedLocales,
        localizationsDelegates: [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        home: HomeScreen(),
      ),
    );
  }
}
