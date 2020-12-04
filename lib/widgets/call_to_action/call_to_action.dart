import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_website/widgets/call_to_action/call_to_action_mobile.dart';
import 'package:my_website/widgets/call_to_action/call_to_action_tablet_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:my_website/extensions/hover_extensions.dart';

class CallToAction extends StatelessWidget {
  final String title;
  const CallToAction(this.title);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: ScreenTypeLayout(
        mobile: CallToActionMobile(title),
        tablet: CallToActionTabletDesktop(title),
      ).moveUpOnHover,
    );
  }
}
