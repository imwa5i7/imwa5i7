import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../include/Rows/educationmain.dart';

class EducationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: EduDesk(),
      tablet: EduTab(),
      mobile: EduMob(),
    );
  }
}
