import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:magic_rewards/core/constants/app_constants.dart';
import 'package:magic_rewards/core/extensions/language_extensions/app_languages_extenstion.dart';
import 'package:magic_rewards/core/routes/app_routes.dart';
import 'package:magic_rewards/core/services/cache_storage_services.dart';
import 'package:magic_rewards/core/services/service_locator.dart';
import 'package:magic_rewards/core/themes/app_theme.dart';
import 'package:magic_rewards/core/translations/app_local.dart';
import 'package:magic_rewards/modules/home/presentation/blocs/app_config_bloc/app_config_bloc.dart';

import 'generated/l10n.dart';

Future<void> main() async {
  ///todo: reject bad certificate
  WidgetsFlutterBinding.ensureInitialized();
  await CacheStorageServices.init();
  await ScreenUtil.ensureScreenSize();
  ServicesLocator().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<AppConfigBloc>(),
      child: ScreenUtilInit(
          designSize: const Size(428, 926),
          builder: (_, child) {
            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              localizationsDelegates: const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: S.delegate.supportedLocales,
              locale: AppLocale().currentLanguage().locale,
              title: AppConstants.applicationName,
              theme: AppTheme().lightTheme,
              darkTheme: AppTheme().lightTheme,
              routerConfig: AppRoutes.router,
            );
          }),
    );
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
