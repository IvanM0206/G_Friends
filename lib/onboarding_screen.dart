import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'intro_pages/intro_page_1.dart';
import 'intro_pages/intro_page_2.dart';
import 'intro_pages/intro_page_3.dart';
import 'intro_pages/home_page.dart';


class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController _controller = PageController();
  int lastIdx = 3;
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index){
              setState(() {
                onLastPage = (index == lastIdx-1);
              });
            },
            children: [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
          ],
          ),
          Container(
              alignment: Alignment(0, 0.75),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    child: Text("Skip"),
                    onTap: () {
                      _controller.jumpToPage(lastIdx);
                    },
                  ),
                  SmoothPageIndicator(controller: _controller, count: lastIdx),

                  onLastPage ?
                  GestureDetector(
                    child: Text("Done"),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context){
                              return HomePage();
                      }
                      ),
                      );
                    },
                  )

                  : GestureDetector(
                      child: Text("Next"),
                      onTap: () {
                        _controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeIn);
                    },
                  ),
                ],
              )
          ),
        ],
      ),
    );
  }
}
