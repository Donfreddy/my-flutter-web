import 'package:flutter/material.dart';
import 'package:my_website/views/about/about_view.dart';
import 'package:my_website/views/episodes/episodes_view.dart';
import 'package:my_website/views/home/home_view.dart';
import 'package:my_website/router/route_names.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  print('generateRoute: ${settings.name}');
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(HomeView());
    case EpisodesRoute:
      return _getPageRoute(EpisodesView());
    case AboutRoute:
      return _getPageRoute(AboutView());
    default:
      return _getPageRoute(HomeView());
  }
}

// PageRoute _getPageRoute(Widget child) {
//   return MaterialPageRoute(
//     builder: (context) => child,
//   );
// }

PageRoute _getPageRoute(Widget child) {
  return _FadeRoute(
    child: child,
  );
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;

  _FadeRoute({this.child})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              child,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}
