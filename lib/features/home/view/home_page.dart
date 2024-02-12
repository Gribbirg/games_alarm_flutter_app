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
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: const Text("РазБудильник"),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: (index) => _openPage(tabsRouter, index),
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.alarm), label: "Будильники"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.emoji_events), label: "Рекорды"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Профиль"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: "Настройки"),
            ],
          ),
        );
      },
    );
  }

  void _openPage(TabsRouter tabsRouter, int index) {
    tabsRouter.setActiveIndex(index);
  }
}
