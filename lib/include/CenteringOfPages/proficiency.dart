import 'package:flutter/material.dart';

import '../Rows/progressbarmain.dart';
import '../imagesmain/images.dart';

class ProgressBarDesk extends StatelessWidget {
  const ProgressBarDesk({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        children: <Widget>[
          SkillBarDesk(),
          ThreeDesk(),
        ],
      ),
    );
  }
}

class ProgressBarTab extends StatelessWidget {
  const ProgressBarTab({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SkillBarTab(),
          ThreeTab(),
        ],
      ),
    );
  }
}

class ProgressBarMob extends StatelessWidget {
  const ProgressBarMob({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SkillBarMob(),
          ThreeMob(),
        ],
      ),
    );
  }
}
