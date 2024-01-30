import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../assets/theme/icons.dart';
import '../assets/theme/images.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController pageController;
  int page = 0;

  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.fromLTRB(170, 70, 0, 0),
              child: Container(
                child: Row(
                  children: [
                    const Text("O‘tkazib yuborish"),
                    const SizedBox(
                      width: 5,
                    ),
                    SvgPicture.asset(AppIcons.next)
                  ],
                ),
                width: 160,
                height: 35,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey),
              ),
            ),
          ),
          const Gap(97),
          SizedBox(
            height: size.height * 0.625,
            child: PageView(
              onPageChanged: (index) {
                setState(() {
                  page = index;
                });
              },
              controller: pageController,
              children: [
                Column(
                  children: [
                    const Gap(150),
                    Image.asset(AppImages.location),
                  ],
                ),
                Column(
                  children: [
                    const Gap(85),
                    Image.asset(AppImages.gift),
                  ],
                ),
                Column(
                  children: [
                    const Gap(150),
                    Image.asset(AppImages.rocket),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (page != 0)
                  GestureDetector(
                    onTap: () {
                      pageController.previousPage(
                        duration: const Duration(milliseconds: 250),
                        curve: Curves.easeInOut,
                      );
                    },
                    child: Container(
                      width: 44,
                      height: 44,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: SvgPicture.asset(AppIcons.previous),
                    ),
                  )
                else if (page == 1)
                  GestureDetector(
                    onTap: () {
                      pageController.previousPage(
                        duration: const Duration(milliseconds: 250),
                        curve: Curves.easeInOut,
                      );
                    },
                    child: Container(
                      width: 44,
                      height: 44,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: SvgPicture.asset(AppIcons.next),
                    ),
                  )
                else
                  const Gap(50),
                SmoothPageIndicator(
                  controller: pageController,
                  count: 3,
                  effect: const ExpandingDotsEffect(
                    activeDotColor: Colors.grey,
                    dotWidth: 8,
                    dotHeight: 8,
                    dotColor: Colors.grey,
                    expansionFactor: 3,
                    spacing: 4,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if (page == 2) {
                    } else if (page == 1) {
                      pageController.nextPage(
                        duration: const Duration(milliseconds: 250),
                        curve: Curves.easeInOut,
                      );
                    } else {
                      pageController.nextPage(
                        duration: const Duration(milliseconds: 250),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                  child: Container(
                    width: 44,
                    height: 44,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: SvgPicture.asset(AppIcons.next),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
