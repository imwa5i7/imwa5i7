import 'package:flutter/material.dart';

import '../Rows/blogcardmain.dart';

class BlogCenterDesk extends StatelessWidget {
  const BlogCenterDesk({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        children: <Widget>[
          Expanded(child: BlogCardDesk()),
        ],
      ),
    );
  }
}

class BlogCenterMob extends StatelessWidget {
  const BlogCenterMob({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[BlogCardMob()],
      ),
    );
  }
}

class BlogCenterTab extends StatelessWidget {
  const BlogCenterTab({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          BlogCardTab(),
        ],
      ),
    );
  }
}
