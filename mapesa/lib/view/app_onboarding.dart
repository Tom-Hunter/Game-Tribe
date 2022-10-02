import 'package:flutter/material.dart';
import 'package:mapesa/constants.dart';
import 'package:mapesa/view/home_page.dart';
import 'package:relative_scale/relative_scale.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, width, height, sx, sy) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.white,
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 20, top: 20),
                child: InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const HomePage()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Skip',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: sx(12),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: sx(12),
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          body: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              PageView(
                onPageChanged: (int page) {
                  setState(() {
                    currentIndex = page;
                  });
                },
                controller: _pageController,
                children: [
                  CreatePage(
                    image: 'assets/images/onboard_1.png',
                    title: Constants.titleOne,
                    description: Constants.descriptionOne,
                  ),
                  CreatePage(
                    image: 'assets/images/onboard_2.png',
                    title: Constants.titleTwo,
                    description: Constants.descriptionTwo,
                  ),
                  CreatePage(
                    image: 'assets/images/onboard_3.png',
                    title: Constants.titleThree,
                    description: Constants.descriptionThree,
                  ),
                ],
              ),
              Positioned(
                bottom: sx(50),
                left: sx(25),
                child: Row(
                  children: _buildIndicator(),
                ),
              ),
              Positioned(
                bottom: sx(35),
                right: sx(25),
                child: Container(
                  padding: EdgeInsets.all(sx(4)),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Constants.primaryColor,
                  ),
                  child: Center(
                    child: IconButton(
                        onPressed: () {
                          setState(() {
                            if (currentIndex < 2) {
                              currentIndex++;
                              if (currentIndex < 3) {
                                _pageController.nextPage(
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.easeIn);
                              }
                            } else {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const HomePage()));
                            }
                          });
                        },
                        icon: WidgetAnimator(
                          atRestEffect: WidgetRestingEffects.pulse(
                              duration: const Duration(milliseconds: 2000),
                              effectStrength: 1,
                              curve: Curves.elasticInOut),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: sx(18),
                            color: Colors.white,
                          ),
                        )),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  //Extra Widgets

  //Create the indicator decorations widget
  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 10.0,
      width: isActive ? 20 : 8,
      margin: const EdgeInsets.only(right: 5.0),
      decoration: BoxDecoration(
        color: Constants.primaryColor,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }

//Create the indicator list
  List<Widget> _buildIndicator() {
    List<Widget> indicators = [];

    for (int i = 0; i < 3; i++) {
      if (currentIndex == i) {
        indicators.add(_indicator(true));
      } else {
        indicators.add(_indicator(false));
      }
    }

    return indicators;
  }
}

class CreatePage extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  const CreatePage({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 50, right: 50, bottom: 80),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 350,
            child: Image.asset(image),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Constants.primaryColor,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
