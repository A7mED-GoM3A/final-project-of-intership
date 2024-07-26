import 'package:flutter/material.dart';

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}
void main() => runApp(MaterialApp(home: OnBoarding()));

class _OnBoardingState extends State<OnBoarding> {
  // PageController here for on tap click to other colm
  final PageController _pageController = PageController();
  int pagenumber = 0;
// for 3 parts in the end of page to show what page u in 
  Widget dotPageView() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 5),
          width: index == pagenumber ? 50 : 40,
          height: 12,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: index == pagenumber ? Color(0xff26243C) : Color(0xff857885),
          ),
        );
      }),
    );
  }

  void _skipToEnd() {
    _pageController.jumpToPage(2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 247, 246, 247),
      appBar: AppBar(),
      body: Stack(
        children: [
          PageView(
            onPageChanged: (value) {
              setState(() {
                pagenumber = value;
              });
            },
            controller: _pageController,
            children: [
              // Onboarding 1
              Column(
                children: [
                  Container(
                    width: 379,
                    height: 132,
                    margin: EdgeInsets.only(top: 279, left: 11),
                    child: Text(
                      "Welcome to SWIFTERS",
                      style: TextStyle(
                        color: Color(0xff57C8E1),
                        fontSize: 48,
                        fontFamily: 'K2D',
                        fontWeight: FontWeight.w600,
                        height: 62.4 / 48,
                      ),
                    ),
                  ),
                  Container(
                    width: 307,
                    height: 189,
                    margin: EdgeInsets.only(top: 79, left: 12),
                    child: Text(
                      "Get real-time updates on your favorite teams and players. Never miss a moment with live scores, stats, and highlights.",
                      style: TextStyle(
                        color: Color(0xff26243C),
                        fontSize: 20,
                        fontFamily: 'K2D',
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  // click skip to other col
                  SizedBox(height: 30),
                  InkWell(
                    onTap: () {
                      _pageController.animateToPage(1, duration: Duration(milliseconds: 700), curve: Curves.easeIn);
                    },
                    child: Container(
                      width: 50,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Skip",
                        style: TextStyle(
                          fontFamily: 'K2D',
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.03,
                          color: Color(0xff26243C),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
                  dotPageView(),
                ],
              ),
              // Onboarding 2
              Column(
                children: [
                  Container(
                    width: 379,
                    height: 132,
                    margin: EdgeInsets.only(top: 279, left: 11),
                    child: Text(
                      "Customize Your Feed",
                      style: TextStyle(
                        color: Color(0xff57C8E1),
                        fontSize: 48,
                        fontFamily: 'K2D',
                        fontWeight: FontWeight.w600,
                        height: 62.4 / 48,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                    width: 287,
                    height: 130,
                    margin: EdgeInsets.only(top: 69, left: 12),
                    child: Text(
                      "Follow your teams and leagues to personalize your sports experience. Tailor your notifications and stay informed effortlessly.",
                      style: TextStyle(
                        color: Color(0xff26243C),
                        fontSize: 18,
                        fontFamily: 'K2D',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(height: 100),
                  InkWell(
                    onTap: () {
                      _pageController.animateToPage(2, duration: Duration(milliseconds: 700), curve: Curves.easeIn);
                    },
                    child: Container(
                      width: 50,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Skip",
                        style: TextStyle(
                          fontFamily: 'K2D',
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.03,
                          color: Color(0xff26243C),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
                  dotPageView(),
                ],
              ),
              // Onboarding 3
              Column(
                children: [
                  Container(
                    width: 379,
                    height: 132,
                    margin: EdgeInsets.only(top: 279, left: 11),
                    child: Text(
                      "Discover More",
                      style: TextStyle(
                        color: Color(0xff57C8E1),
                        fontSize: 48,
                        fontFamily: 'K2D',
                        fontWeight: FontWeight.w600,
                        height: 62.4 / 48,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                    width: 287,
                    height: 130,
                    margin: EdgeInsets.only(top: 69, left: 12),
                    child: Text(
                      "Explore trending games, upcoming matches, and breaking news. Dive into the world of sports like never before with SWIFTERS.",
                      style: TextStyle(
                        color: Color(0xff26243C),
                        fontSize: 18,
                        fontFamily: 'K2D',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(height: 100),
                  InkWell(
                    onTap: () {
                      // Navigate to the login screen put it in num 2 after animatetopage(2 > here)
                      _pageController.animateToPage(2, duration: Duration(milliseconds: 700), curve: Curves.easeIn);
                    },
                    child: Container(
                      width: 236,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff57C8E1),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Become a SWIFTER",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          height: 1.5,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
                  dotPageView(),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}


