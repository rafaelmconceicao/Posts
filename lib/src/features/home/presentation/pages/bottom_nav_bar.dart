import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:posts/src/features/home/presentation/controllers/home_controller.dart';
import 'package:posts/src/features/home/presentation/pages/home.dart';
import 'package:posts/src/features/news/presentation/pages/news.dart';
import 'package:posts/src/features/posts/presentation/pages/new_post.dart';
import 'package:posts/src/presentation/mobx/base_page.dart';
import 'package:posts/src/utils/helper/colors_helper.dart';
import 'package:posts/src/utils/helper/text_styles.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends BaseState<BottomNavBar, HomeController> {
  final pages = [
    const HomePage(),
    const NewsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return Scaffold(
        backgroundColor: ThemeApp.background,
        body: Stack(
          alignment: Alignment.bottomCenter,
          fit: StackFit.expand,
          children: [
            pages[controller!.selectedIndex],
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                height: 80,
                color: Colors.transparent,
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 0,
                      right: 0,
                      left: 0,
                      child: Container(
                        height: 60,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20)),
                            color: ThemeApp.primary),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              onTap: () => controller!.setSelectedIndex(0),
                              child: Column(
                                children: [
                                  Container(
                                    height: 7,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: controller!.selectedIndex == 0
                                          ? ThemeApp.light
                                          : Colors.transparent,
                                    ),
                                  ),
                                  const Spacer(),
                                  Text(
                                    "Home",
                                    style: controller!.selectedIndex == 0
                                        ? BotTextStyles.navBarActive
                                        : BotTextStyles.navBar,
                                  ),
                                  const Spacer(),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () => controller!.setSelectedIndex(1),
                              child: Column(
                                children: [
                                  Container(
                                    height: 7,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: controller!.selectedIndex == 1
                                          ? ThemeApp.light
                                          : Colors.transparent,
                                    ),
                                  ),
                                  const Spacer(),
                                  Text(
                                    "Novidades",
                                    style: controller!.selectedIndex == 1
                                        ? BotTextStyles.navBarActive
                                        : BotTextStyles.navBar,
                                  ),
                                  const Spacer(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      left: 0,
                      child: Center(
                        child: GestureDetector(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (builder) => const NewPost());
                          },
                          child: Transform.rotate(
                            angle: 0.84,
                            child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: ThemeApp.light,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.white,
                                        blurRadius: 2,
                                        offset: Offset(0, 0),
                                      )
                                    ]),
                                child: Transform.rotate(
                                  angle: 0.75,
                                  child: const Center(
                                    child: Icon(Icons.add,
                                        color: ThemeApp.primary,
                                        shadows: [
                                          Shadow(
                                              color: ThemeApp.primary,
                                              blurRadius: 2)
                                        ]),
                                  ),
                                )),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      );
    });
  }
}
