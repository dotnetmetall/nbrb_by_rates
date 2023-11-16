import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import '../../features/rates/presentation/rates_page.dart';
import '../../features/settings/presentation/settings_page.dart';

part 'app_router.gr.dart';

@AdaptiveAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: RatesPage, initial: true),
    AutoRoute(page: SettingsPage),
  ],
)
class AppRouter extends _$AppRouter {}
