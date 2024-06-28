import 'package:bloody/core/utils/constants.dart';
import 'package:bloody/core/utils/styles.dart';
import 'package:bloody/features/on_boarding/presentation/widgets/on_boarding4.dart';
import 'package:bloody/features/register/presentation/views/login_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/custom_button.dart';
import '../widgets/on_boardind2.dart';
import '../widgets/on_boarding1.dart';
import '../widgets/on_boarding3.dart';

class OnBoarding extends StatelessWidget {
  OnBoarding({super.key});
  PageController controller = PageController();
  static String id = 'on boarding';
  final List onBoardinList = const [
    OnBoarding1(),
    OnBoarding2(),
    OnBoarding3(),
    OnBoarding4()
  ];
  final List titles = const [
    'STRESS LESS.',
    'SOCIAL ACTIVITY.',
    'MENTAL THERAPY.',
    'HEALTH'
  ];
  final List subTitles = const [
    'Reduce stress and anxiety',
    'Get rid of negative emotions and feelings of isolation',
    'Improve mental health in general ',
    'Improves overall physical health and renews blood activity'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView.builder(
            controller: controller,
            itemCount: onBoardinList.length,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  onBoardinList[index],
                  Positioned(
                      top: MediaQuery.of(context).size.height * .72,
                      left: 0,
                      right: 0,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 34),
                        child: Column(
                          children: [
                            Text(
                              titles[index],
                              //style: Styles.style16SemiBold.copyWith(color: Colors.black),
                              style: Theme.of(context).textTheme.headline2,
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Text(
                              subTitles[index],
                              style:Styles.style12.copyWith(color: Theme.of(context).primaryColor),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      )),
                ],
              );
            }),
        Positioned(
          bottom: MediaQuery.of(context).size.height * .18,
          left: 0,
          right: 0,
          child: Center(
            child: SmoothPageIndicator(
              controller: controller,
              count: 4,
              effect: const WormEffect(activeDotColor: kPrimaryColor,dotWidth: 14,dotHeight: 14),
            ),
          ),
        ),
        Positioned(
            bottom: MediaQuery.of(context).size.height * .05,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 34),
              child: CustomButton(
                title: 'Next',
                ontap: () {
                 controller.nextPage(duration:const Duration(microseconds: 200), curve: Curves.easeIn);
                 if(controller.page==3){
                  Navigator.of(context).pushReplacementNamed(LoginPage.id);
                 }
                },
              ),
            )),
      ],
    ));
  }
}
