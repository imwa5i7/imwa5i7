import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavbarLogo extends StatelessWidget {
  const NavbarLogo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: ((context, sizingInformation) {
      if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
        return const NavbarLogoDesk();
      }

      if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
        return const NavbarLogoMob();
      }

      return const NavbarLogoMob();
    }));
    // return ScreenTypeLayout(
    //   mobile: NavbarLogoMob(),
    //   tablet: NavbarLogoMob(),
    //   desktop: NavbarLogoDesk(),
    // );
  }
}

class NavbarLogoMob extends StatelessWidget {
  const NavbarLogoMob({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 80,
        width: 200,
        child: Row(
          children: const [
            Text(
              '<',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Wasil Khan',
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 20,
                  fontFamily: 'Agustina'),
            ),
            Text(
              '/',
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
            Text(
              '>',
              style: TextStyle(fontSize: 20),
            )
          ],
        )
        //Image.asset('assets/images/logo.png'),
        );
  }
}

class NavbarLogoDesk extends StatelessWidget {
  const NavbarLogoDesk({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 80,
        width: 300,
        child: Row(
          children: const [
            Text(
              '<',
              style: TextStyle(fontSize: 30),
            ),
            Text(
              'Wasil Khan',
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 30,
                  fontFamily: 'Agustina'),
            ),
            Text(
              '/',
              style: TextStyle(color: Colors.grey, fontSize: 40),
            ),
            Text(
              '>',
              style: TextStyle(fontSize: 30),
            )
          ],
        )
        //Image.asset('assets/images/logo.png'),
        );
  }
}
