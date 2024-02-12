import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class AlarmsListPage extends StatefulWidget {
  const AlarmsListPage({super.key, required this.title});

  final String title;

  @override
  State<AlarmsListPage> createState() => _AlarmsListPageState();
}

class _AlarmsListPageState extends State<AlarmsListPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Alarms list page"),
      ),
    );
  }
}
