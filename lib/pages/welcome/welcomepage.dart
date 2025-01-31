import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'widgets.dart';

final indexProvider = StateProvider<int>((ref) => 0);

class WelcomeScreen extends ConsumerWidget {
  WelcomeScreen({super.key});
  final PageController _controller = PageController();

  int dotsIndex = 0;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final indexs = ref.watch(indexProvider);
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            margin: const EdgeInsets.only(top: 20),
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                // show ing  webclome page
                PageView(
                  controller: _controller,
                  onPageChanged: (index) {
                    ref.read(indexProvider.notifier).state = index;

                    // setState(() {
                    //   dotsIndex = index;
                    // });
                  },
                  scrollDirection: Axis.horizontal,
                  children: [
                    appOnBoarding(_controller,
                        imagePath: 'assets/images/reading.png',
                        title: 'Learn To the Frist learn',
                        subtitle: 'Learn new things and improve your skills',
                        index: 1),
                    appOnBoarding(_controller,
                        imagePath: 'assets/images/man.png',
                        title: 'Learn To the Frist learn',
                        subtitle: 'Learn new things and improve your skills',
                        index: 2),
                    appOnBoarding(_controller,
                        imagePath: 'assets/images/boy.png',
                        title: 'Learn To the Frist learn',
                        subtitle: 'Learn new things and improve your skills',
                        index: 3),
                  ],
                ),

                Positioned(
                    bottom: 50,
                    child: DotsIndicator(
                      dotsCount: 3,
                      position: indexs,
                      mainAxisAlignment: MainAxisAlignment.center,
                      decorator: DotsDecorator(
                        size: const Size(10, 10),
                        color: Colors.grey,
                        activeColor: Colors.blue,
                        activeSize: const Size(22, 10),
                        activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
