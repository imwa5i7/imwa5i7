import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../configure/centeredview.dart';
import '../include/homepage/homemain.dart';
import '../include/navbar/drawer/drawernav.dart' as dn;

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        endDrawer: const dn.NavigationDrawer(),
        endDrawerEnableOpenDragGesture: false,
        body: Column(
          children: <Widget>[
            Expanded(
              child: LayoutType(
                mobile: CenteredViewMob(child: HomeMobile()),
                desktop: CenteredViewDesk(child: HomeDesktop()),
                tablet: CenteredViewTab(child: HomeTab()),
                sizeInfo: sizingInformation,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LayoutType extends StatelessWidget {
  final SizingInformation sizeInfo;
  final Widget mobile, tablet, desktop;
  const LayoutType({
    Key? key,
    required this.sizeInfo,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (sizeInfo.deviceScreenType == DeviceScreenType.mobile) {
      return mobile;
    } else if (sizeInfo.deviceScreenType == DeviceScreenType.tablet) {
      return tablet;
    } else {
      return desktop;
    }
  }
}
