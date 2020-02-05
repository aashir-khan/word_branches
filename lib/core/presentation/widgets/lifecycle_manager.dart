import 'package:dr_words/core/services/navigation_service.dart';
import 'package:dr_words/core/services/stoppable_service.dart';
import 'package:dr_words/injection.iconfig.dart';
import 'package:flutter/material.dart';

/// Stop and start long running services
class LifeCycleManager extends StatefulWidget {
  final Widget child;
  LifeCycleManager({Key key, this.child}) : super(key: key);

  _LifeCycleManagerState createState() => _LifeCycleManagerState();
}

class _LifeCycleManagerState extends State<LifeCycleManager> with WidgetsBindingObserver {
  List<StoppableService> servicesToManage = [
    getIt<NavigationService>(),
  ];

  // Get all services

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) async {
    super.didChangeAppLifecycleState(state);
    servicesToManage.forEach((service) async {
      if (state == AppLifecycleState.resumed) {
        await service.start();
      } else {
        await service.stop();
      }
    });
  }
}
