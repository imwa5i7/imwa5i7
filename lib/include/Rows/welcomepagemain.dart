import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../configure/navigation_service.dart';
import '../../configure/routing.dart';
import '../../configure/strings.dart';

class WelcomePageDesk extends StatelessWidget {
  const WelcomePageDesk({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            "Hi ! I'm ${Strings.devName}",
            style: TextStyle(
                fontWeight: FontWeight.w800, height: 1.3, fontSize: 50),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            Strings.shortIntro,
            style: TextStyle(
              fontSize: 21,
              height: 1.7,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                    width: 60,
                    height: 60,
                    child: IconButton(
                      icon: const Icon(
                        FontAwesomeIcons.facebook,
                        color: Colors.blue,
                        size: 40,
                      ),
                      onPressed: () {
                        js.context
                            .callMethod("open", [Strings.facebookProfile]);
                      },
                    )),
              ),
              Expanded(
                child: Container(
                    width: 60,
                    height: 60,
                    child: IconButton(
                      icon: const Icon(
                        FontAwesomeIcons.instagram,
                        color: Colors.blue,
                        size: 40,
                      ),
                      onPressed: () {
                        js.context
                            .callMethod("open", [Strings.instagramProfile]);
                      },
                    )),
              ),
              Expanded(
                child: Container(
                  width: 60,
                  height: 60,
                  child: GestureDetector(
                    child: const Icon(
                      FontAwesomeIcons.twitter,
                      color: Colors.lightBlue,
                      size: 40,
                    ),
                    onTap: () {
                      js.context.callMethod("open", [Strings.twitterProfile]);
                    },
                  ),
                ),
              ),
              Expanded(
                child: Container(
                    width: 60,
                    height: 60,
                    child: IconButton(
                      icon: const Icon(
                        FontAwesomeIcons.linkedin,
                        color: Color.fromRGBO(40, 103, 178, 1),
                        size: 40,
                      ),
                      onPressed: () {
                        js.context
                            .callMethod("open", [Strings.linkedInProfile]);
                      },
                    )),
              ),
              // Expanded(
              //   child: Container(
              //       width: 60,
              //       height: 60,
              //       child: IconButton(
              //         icon: const Icon(
              //           FontAwesomeIcons.bloggerB,
              //           color: Colors.red,
              //           size: 40,
              //         ),
              //         onPressed: () {
              //           js.context.callMethod(
              //               "open", ["https://naveenjujaray.js.org"]);
              //         },
              //       )),
              // ),
              Expanded(
                child: Container(
                    width: 60,
                    height: 60,
                    child: IconButton(
                      icon: const Icon(
                        FontAwesomeIcons.github,
                        size: 40,
                      ),
                      onPressed: () {
                        js.context.callMethod("open", [Strings.githubProfile]);
                      },
                    )),
              ),
              Expanded(
                child: Container(
                    width: 60,
                    height: 60,
                    child: IconButton(
                      icon: const Icon(
                        FontAwesomeIcons.gitlab,
                        color: Colors.orange,
                        size: 40,
                      ),
                      onPressed: () {
                        js.context.callMethod("open", [Strings.gitlabProfile]);
                      },
                    )),
              ),
              // Expanded(
              //   child: Container(
              //       width: 60,
              //       height: 60,
              //       child: IconButton(
              //         icon: const Icon(
              //           FontAwesomeIcons.medium,
              //           size: 40,
              //         ),
              //         onPressed: () {
              //           js.context.callMethod(
              //               "open", ["https://medium.com/@naveenjujaray"]);
              //         },
              //       )),
              // ),
              // Expanded(
              //   child: Container(
              //       width: 60,
              //       height: 60,
              //       child: IconButton(
              //         icon: const Icon(
              //           FontAwesomeIcons.dev,
              //           size: 40,
              //         ),
              //         onPressed: () {
              //           js.context.callMethod(
              //               "open", ["https://dev.to/naveenjujaray"]);
              //         },
              //       )),
              // ),
              // Expanded(
              //   child: Container(
              //       width: 60,
              //       height: 60,
              //       child: IconButton(
              //         icon: const Icon(
              //           FontAwesomeIcons.reddit,
              //           color: Colors.deepOrangeAccent,
              //           size: 40,
              //         ),
              //         onPressed: () {
              //           js.context.callMethod("open",
              //               ["https://www.reddit.com/user/jujaraynaveen"]);
              //         },
              //       )),
              // ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () =>
                      locator<NavigationService>().navigateTo(ContactRoute),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    child: const Text(
                      'CONTACT ME',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 50,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    js.context.callMethod("open", [
                      "https://drive.google.com/file/d/1PZYWMJEQMLIh5g5mXnENQcOL1vlunq6_/view?usp=sharing"
                    ]);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 15),
                    child: const Text(
                      'SEE MY RESUME',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class WelcomePageTab extends StatelessWidget {
  const WelcomePageTab({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 40,
            ),
            const Center(
              child: Text(
                "Hi ! I'm ${Strings.devName}",
                style: TextStyle(
                    fontWeight: FontWeight.w800, height: 1.3, fontSize: 50),
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Center(
              child: Text(
                Strings.shortIntro,
                style: TextStyle(
                  fontSize: 20,
                  height: 1.7,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                      width: 60,
                      height: 60,
                      child: IconButton(
                        icon: const Icon(
                          FontAwesomeIcons.facebook,
                          color: Colors.blue,
                          size: 40,
                        ),
                        onPressed: () {
                          js.context
                              .callMethod("open", [Strings.facebookProfile]);
                        },
                      )),
                ),
                Expanded(
                  child: Container(
                      width: 60,
                      height: 60,
                      child: IconButton(
                        icon: const Icon(
                          FontAwesomeIcons.instagram,
                          color: Colors.blue,
                          size: 40,
                        ),
                        onPressed: () {
                          js.context
                              .callMethod("open", [Strings.instagramProfile]);
                        },
                      )),
                ),
                Expanded(
                  child: Container(
                      width: 60,
                      height: 60,
                      child: IconButton(
                        icon: const Icon(
                          FontAwesomeIcons.twitter,
                          color: Colors.lightBlue,
                          size: 40,
                        ),
                        onPressed: () {
                          js.context
                              .callMethod("open", [Strings.twitterProfile]);
                        },
                      )),
                ),
                Expanded(
                  child: Container(
                      width: 60,
                      height: 60,
                      child: IconButton(
                        icon: const Icon(
                          FontAwesomeIcons.linkedin,
                          color: Color.fromRGBO(40, 103, 178, 1),
                          size: 40,
                        ),
                        onPressed: () {
                          js.context
                              .callMethod("open", [Strings.linkedInProfile]);
                        },
                      )),
                ),
                // Expanded(
                //   child: Container(
                //       width: 60,
                //       height: 60,
                //       child: IconButton(
                //         icon: const Icon(
                //           FontAwesomeIcons.bloggerB,
                //           color: Colors.red,
                //           size: 40,
                //         ),
                //         onPressed: () {
                //           js.context.callMethod(
                //               "open", ["https://naveenjujaray.js.org"]);
                //         },
                //       )),
                // ),
                Expanded(
                  child: Container(
                      width: 60,
                      height: 60,
                      child: IconButton(
                        icon: const Icon(
                          FontAwesomeIcons.github,
                          size: 40,
                        ),
                        onPressed: () {
                          js.context
                              .callMethod("open", [Strings.githubProfile]);
                        },
                      )),
                ),
                Expanded(
                  child: Container(
                      width: 60,
                      height: 60,
                      child: IconButton(
                        icon: const Icon(
                          FontAwesomeIcons.gitlab,
                          color: Colors.orange,
                          size: 40,
                        ),
                        onPressed: () {
                          js.context
                              .callMethod("open", [Strings.gitlabProfile]);
                        },
                      )),
                ),
                // Expanded(
                //   child: Container(
                //       width: 60,
                //       height: 60,
                //       child: IconButton(
                //         icon: const Icon(
                //           FontAwesomeIcons.medium,
                //           size: 40,
                //         ),
                //         onPressed: () {
                //           js.context.callMethod(
                //               "open", ["https://medium.com/@naveenjujaray"]);
                //         },
                //       )),
                // ),
                // Expanded(
                //   child: Container(
                //       width: 60,
                //       height: 60,
                //       child: IconButton(
                //         icon: const Icon(
                //           FontAwesomeIcons.dev,
                //           size: 40,
                //         ),
                //         onPressed: () {
                //           js.context.callMethod(
                //               "open", ["https://dev.to/naveenjujaray"]);
                //         },
                //       )),
                // ),
                // Expanded(
                //   child: Container(
                //       width: 60,
                //       height: 60,
                //       child: IconButton(
                //         icon: const Icon(
                //           FontAwesomeIcons.reddit,
                //           color: Colors.deepOrangeAccent,
                //           size: 40,
                //         ),
                //         onPressed: () {
                //           js.context.callMethod("open",
                //               ["https://www.reddit.com/user/jujaraynaveen"]);
                //         },
                //       )),
                // ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () =>
                      locator<NavigationService>().navigateTo(ContactRoute),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    child: const Text(
                      'CONTACT ME',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {
                    js.context.callMethod("open", [
                      "https://drive.google.com/file/d/1PZYWMJEQMLIh5g5mXnENQcOL1vlunq6_/view?usp=sharing"
                    ]);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    child: const Text(
                      'SEE MY RESUME',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class WelcomePageMob extends StatelessWidget {
  const WelcomePageMob({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 40,
            ),
            const Center(
              child: Text(
                "Hi ! I'm ${Strings.devName}",
                style: TextStyle(
                    fontWeight: FontWeight.w800, height: 1.3, fontSize: 32),
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Center(
              child: Text(
                Strings.shortIntro,
                style: TextStyle(
                  fontSize: 16,
                  height: 1.7,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 55,
                    height: 55,
                    child: IconButton(
                      icon: const Icon(
                        FontAwesomeIcons.facebook,
                        color: Colors.blue,
                        size: 40,
                      ),
                      onPressed: () {
                        js.context
                            .callMethod("open", [Strings.facebookProfile]);
                      },
                    )),
                Container(
                    width: 55,
                    height: 55,
                    child: IconButton(
                      icon: const Icon(
                        FontAwesomeIcons.instagram,
                        color: Colors.blue,
                        size: 40,
                      ),
                      onPressed: () {
                        js.context
                            .callMethod("open", [Strings.instagramProfile]);
                      },
                    )),
                Container(
                    width: 55,
                    height: 55,
                    child: IconButton(
                      icon: const Icon(
                        FontAwesomeIcons.twitter,
                        color: Colors.lightBlue,
                        size: 40,
                      ),
                      onPressed: () {
                        js.context.callMethod("open", [Strings.twitterProfile]);
                      },
                    )),
                Container(
                    width: 55,
                    height: 55,
                    child: IconButton(
                      icon: const Icon(
                        FontAwesomeIcons.linkedin,
                        color: Color.fromRGBO(40, 103, 178, 1),
                        size: 40,
                      ),
                      onPressed: () {
                        js.context
                            .callMethod("open", [Strings.linkedInProfile]);
                      },
                    )),
                // Container(
                //     width: 55,
                //     height: 55,
                //     child: IconButton(
                //       icon: const Icon(
                //         FontAwesomeIcons.bloggerB,
                //         color: Colors.red,
                //         size: 40,
                //       ),
                //       onPressed: () {
                //         js.context.callMethod(
                //             "open", ["https://naveenjujaray.js.org"]);
                //       },
                //     )),
                Container(
                    width: 55,
                    height: 55,
                    child: IconButton(
                      icon: const Icon(
                        FontAwesomeIcons.github,
                        size: 40,
                      ),
                      onPressed: () {
                        js.context.callMethod("open", [Strings.githubProfile]);
                      },
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 55,
                    height: 55,
                    child: IconButton(
                      icon: const Icon(
                        FontAwesomeIcons.gitlab,
                        color: Colors.orange,
                        size: 40,
                      ),
                      onPressed: () {
                        js.context.callMethod("open", [Strings.gitlabProfile]);
                      },
                    )),
                // Container(
                //     width: 55,
                //     height: 55,
                //     child: IconButton(
                //       icon: const Icon(
                //         FontAwesomeIcons.medium,
                //         size: 40,
                //       ),
                //       onPressed: () {
                //         js.context.callMethod(
                //             "open", ["https://medium.com/@naveenjujaray"]);
                //       },
                //     )),
                // Container(
                //     width: 55,
                //     height: 55,
                //     child: IconButton(
                //       icon: const Icon(
                //         FontAwesomeIcons.dev,
                //         size: 40,
                //       ),
                //       onPressed: () {
                //         js.context.callMethod(
                //             "open", ["https://dev.to/naveenjujaray"]);
                //       },
                //     )),
                // Container(
                //     width: 55,
                //     height: 55,
                //     child: IconButton(
                //       icon: const Icon(
                //         FontAwesomeIcons.reddit,
                //         color: Colors.deepOrangeAccent,
                //         size: 40,
                //       ),
                //       onPressed: () {
                //         js.context.callMethod("open",
                //             ["https://www.reddit.com/user/jujaraynaveen"]);
                //       },
                //     )),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () =>
                        locator<NavigationService>().navigateTo(ContactRoute),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Text(
                        'CONTACT ME',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      js.context.callMethod("open", [
                        "https://drive.google.com/file/d/1PZYWMJEQMLIh5g5mXnENQcOL1vlunq6_/view?usp=sharing"
                      ]);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Text(
                        'SEE MY RESUME',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
