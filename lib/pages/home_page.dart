import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:routing_app/router/app_route.gr.dart';

@RoutePage()
class HomePage extends StatelessWidget {

  const HomePage({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context) => AutoTabsScaffold(
    routes: [
      ContentRoute(content: 'A'),
      ContentRoute(content: 'B'),
      ContentRoute(content: 'C'),
    ],
    bottomNavigationBuilder: (context, tabsRouter) => BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.circle),
              label: 'A'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.circle),
              label: 'B'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.circle),
              label: 'C'
          )
        ],
      currentIndex: tabsRouter.activeIndex,
      onTap: tabsRouter.setActiveIndex,
    ),
    transitionBuilder: (context, child, animation) => child,
  );

}