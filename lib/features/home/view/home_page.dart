import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:games_alarm_flutter_app/router/router.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: [
        AlarmsListRoute(title: 'AlarmsList'),
        RecordsRoute(title: 'Records'),
        ProfileRoute(title: 'Profile'),
        SettingsRoute(title: 'Settings'),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: child,
          bottomNavigationBar: NavigationBar(
            labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
            selectedIndex: tabsRouter.activeIndex,
            onDestinationSelected: (index) => tabsRouter.setActiveIndex(index),
            destinations: const [
              NavigationDestination(
                  icon: Icon(Icons.alarm), label: "Будильники"),
              NavigationDestination(
                  icon: Icon(Icons.emoji_events), label: "Рекорды"),
              NavigationDestination(
                  icon: Icon(Icons.person), label: "Профиль"),
              NavigationDestination(
                  icon: Icon(Icons.settings), label: "Настройки"),
            ],
          ),
        );
      },
    );
  }
}
