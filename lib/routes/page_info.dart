import 'package:flutter/material.dart';
import 'package:pickeat_dashboard/screens/layout/layout_screen.dart';

class PageInfo {
  final String routeName;
  final String title;
  final Widget Function(BuildContext, String) builder;

  const PageInfo({
    required this.routeName,
    required this.title,
    required this.builder,
  });

  Widget buildScreen(BuildContext context) => builder(context, title);
}

List<PageInfo> pages = [
  PageInfo(
    routeName: '/layout',
    title: '기본화면구조',
    builder: (context, title) => LayoutScreen(title: title),
  ),
];

Route<dynamic>? generateRoute(RouteSettings settings) {
  final page = pages.firstWhere(
        (p) => p.routeName == settings.name,
    orElse: () => PageInfo(
      routeName: '/',
      title: 'Not Found',
      builder: (context, title) => Scaffold(
        body: Center(child: Text('Page not found')),
      ),
    ),
  );
  return MaterialPageRoute(
    builder: (context) => page.buildScreen(context),
    settings: settings,
  );
}