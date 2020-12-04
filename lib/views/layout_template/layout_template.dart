import 'package:flutter/material.dart';
import 'package:my_website/widgets/centered_view/centered_view.dart';
import 'package:my_website/widgets/navigation_bar/navigation_bar.dart';
import 'package:my_website/widgets/navigation_drawer/navigation_drawer.dart';
import 'package:my_website/services/navigation_service.dart';
import 'package:my_website/router/route_names.dart';
import 'package:my_website/router/router.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../locator.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? NavigationDrawer()
            : null,
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
            children: <Widget>[
              NavigationBar(),
              Expanded(
                child: Navigator(
                  key: locator<NavigationService>().navigatorKey,
                  onGenerateRoute: generateRoute,
                  initialRoute: HomeRoute,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
