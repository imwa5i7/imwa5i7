import 'package:flutter/material.dart';

import '../Rows/skillslogosmain.dart';
import '../imagesmain/images.dart';

class SkillsDesk extends StatelessWidget {
  const SkillsDesk({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        children: <Widget>[
          Expanded(child: TwoDesk()),
          Expanded(child: SkillsLogoDesk()),
        ],
      ),
    );
  }
}

class SkillsMob extends StatelessWidget {
  const SkillsMob({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SkillsLogoMob(),
          TwoMob(),
        ],
      ),
    );
  }
}

class SkillsTab extends StatelessWidget {
  const SkillsTab({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SkillsLogoTab(),
          TwoTab(),
        ],
      ),
    );
  }
}
