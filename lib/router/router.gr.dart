// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AlarmsListRoute.name: (routeData) {
      final args = routeData.argsAs<AlarmsListRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AlarmsListPage(
          key: args.key,
          title: args.title,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    ProfileRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ProfilePage(
          key: args.key,
          title: args.title,
        ),
      );
    },
    RecordsRoute.name: (routeData) {
      final args = routeData.argsAs<RecordsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: RecordsPage(
          key: args.key,
          title: args.title,
        ),
      );
    },
    SettingsRoute.name: (routeData) {
      final args = routeData.argsAs<SettingsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SettingsPage(
          key: args.key,
          title: args.title,
        ),
      );
    },
  };
}

/// generated route for
/// [AlarmsListPage]
class AlarmsListRoute extends PageRouteInfo<AlarmsListRouteArgs> {
  AlarmsListRoute({
    Key? key,
    required String title,
    List<PageRouteInfo>? children,
  }) : super(
          AlarmsListRoute.name,
          args: AlarmsListRouteArgs(
            key: key,
            title: title,
          ),
          initialChildren: children,
        );

  static const String name = 'AlarmsListRoute';

  static const PageInfo<AlarmsListRouteArgs> page =
      PageInfo<AlarmsListRouteArgs>(name);
}

class AlarmsListRouteArgs {
  const AlarmsListRouteArgs({
    this.key,
    required this.title,
  });

  final Key? key;

  final String title;

  @override
  String toString() {
    return 'AlarmsListRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<ProfileRouteArgs> {
  ProfileRoute({
    Key? key,
    required String title,
    List<PageRouteInfo>? children,
  }) : super(
          ProfileRoute.name,
          args: ProfileRouteArgs(
            key: key,
            title: title,
          ),
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<ProfileRouteArgs> page =
      PageInfo<ProfileRouteArgs>(name);
}

class ProfileRouteArgs {
  const ProfileRouteArgs({
    this.key,
    required this.title,
  });

  final Key? key;

  final String title;

  @override
  String toString() {
    return 'ProfileRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [RecordsPage]
class RecordsRoute extends PageRouteInfo<RecordsRouteArgs> {
  RecordsRoute({
    Key? key,
    required String title,
    List<PageRouteInfo>? children,
  }) : super(
          RecordsRoute.name,
          args: RecordsRouteArgs(
            key: key,
            title: title,
          ),
          initialChildren: children,
        );

  static const String name = 'RecordsRoute';

  static const PageInfo<RecordsRouteArgs> page =
      PageInfo<RecordsRouteArgs>(name);
}

class RecordsRouteArgs {
  const RecordsRouteArgs({
    this.key,
    required this.title,
  });

  final Key? key;

  final String title;

  @override
  String toString() {
    return 'RecordsRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [SettingsPage]
class SettingsRoute extends PageRouteInfo<SettingsRouteArgs> {
  SettingsRoute({
    Key? key,
    required String title,
    List<PageRouteInfo>? children,
  }) : super(
          SettingsRoute.name,
          args: SettingsRouteArgs(
            key: key,
            title: title,
          ),
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const PageInfo<SettingsRouteArgs> page =
      PageInfo<SettingsRouteArgs>(name);
}

class SettingsRouteArgs {
  const SettingsRouteArgs({
    this.key,
    required this.title,
  });

  final Key? key;

  final String title;

  @override
  String toString() {
    return 'SettingsRouteArgs{key: $key, title: $title}';
  }
}
