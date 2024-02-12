import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../features/alarms_list/view/alarms_list_page.dart';
import '../features/home/view/home_page.dart';
import '../features/profile/view/profile_page.dart';
import '../features/records/view/records_page.dart';
import '../features/settings/view/settings_page.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, path: '/', children: [
          AutoRoute(page: AlarmsListRoute.page, path: 'alarmslist'),
          AutoRoute(page: RecordsRoute.page, path: 'records'),
          AutoRoute(page: ProfileRoute.page, path: 'profile'),
          AutoRoute(page: SettingsRoute.page, path: 'settings'),
        ]),
      ];
}
