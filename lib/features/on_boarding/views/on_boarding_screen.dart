import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:todo_app/features/on_boarding/views/widgets/widget.dart';

import '../../../core/common/widgets/fading_text.dart';
import '../../../core/res/colours.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final pageController = PageController();

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colours.darkBackground,
      body: SafeArea(
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            PageView(
              controller: pageController,
              children: const [FirstPage(), SecondPage()],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        iconSize: 30,
                        color: Colours.light,
                        onPressed: () {},
                        icon: const Icon(
                          Ionicons.chevron_forward_circle,
                        ),
                      ),
                      const FadingText('Skip', fontWeight: FontWeight.w500)
                    ],
                  ),
                  SmoothPageIndicator(
                    controller: pageController,
                    count: 2,
                    effect: WormEffect(
                        dotHeight: 12,
                        spacing: 10,
                        dotColor: Colours.yellow.withOpacity(.5),
                        activeDotColor: Colours.light,),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
