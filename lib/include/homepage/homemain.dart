import 'package:flutter/material.dart';

import '../../pages/footer.dart';
import '../../pages/progresspage.dart';
import '../../pages/welcome.dart';
import '../CenteringOfPages/Achievement.dart';
import '../CenteringOfPages/Blogcenter.dart';
import '../CenteringOfPages/ContactCenter.dart';
import '../CenteringOfPages/Education.dart';
import '../CenteringOfPages/skills_desk.dart';
import '../Rows/progressbarmain.dart';
import '../Rows/skillslogosmain.dart';
import '../Rows/welcomepagemain.dart';
import '../imagesmain/images.dart';

class HomeDesktop extends StatefulWidget {
  const HomeDesktop({Key? key}) : super(key: key);

  @override
  _HomeDesktopState createState() => _HomeDesktopState();
}

class _HomeDesktopState extends State<HomeDesktop> {
  final _controller = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scrollbar(
        controller: _controller,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    Row(
                      children: <Widget>[
                        Expanded(child: WelcomePage()),
                        Expanded(child: OneDesk()),
                      ],
                    ),
                    const SizedBox(
                      height: 75,
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(child: TwoDesk()),
                        Expanded(child: SkillsLogoDesk()),
                      ],
                    ),
                    const SizedBox(
                      height: 75,
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(child: SkillBarDesk()),
                        Expanded(child: ThreeDesk()),
                      ],
                    ),
                    const SizedBox(
                      height: 75,
                    ),
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Expanded(child: EducationDesk()),
                      ],
                    ),
                    const SizedBox(
                      height: 75,
                    ),
                    Row(
                      children: const [
                        Expanded(child: AchievementDesk()),
                      ],
                    ),
                    const SizedBox(
                      height: 75,
                    ),
                    Row(
                      children: const [
                        Expanded(child: BlogCenterDesk()),
                      ],
                    ),
                    const SizedBox(
                      height: 75,
                    ),
                    Row(
                      children: [
                        const Expanded(child: ContactCenterDesk()),
                        Expanded(
                          child: FourDesk(),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    Row(
                      children: [
                        Expanded(child: FooterPage()),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: <Widget>[
                const WelcomePageMob(),
                OneMob(),
                const SkillsMob(),
                ProgressPage(),
                const EducationMob(),
                const AchievementMob(),
                const BlogCenterMob(),
                const ContactCenterMob(),
                const SizedBox(
                  height: 50,
                ),
                FooterPage()
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: <Widget>[
                const WelcomePageTab(),
                OneTab(),
                const SkillsTab(),
                ProgressPage(),
                const EducationTab(),
                const AchievementTab(),
                const BlogCenterTab(),
                const ContactCenterTab(),
                const SizedBox(
                  height: 50,
                ),
                FooterMob(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
