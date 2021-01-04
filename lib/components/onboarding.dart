import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hotello/screens/signin_screen.dart';
import 'package:hotello/screens/signup_screen.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

// the page where we go after the screens
  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => SignUp()),
    );
  }

// image creating
  Widget _buildImage(String assetName) {
    return Align(
      child: Container(
        padding: EdgeInsets.all(10.0),
        height: 200.0,
        child: SvgPicture.asset('assets/svg/$assetName.svg'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 16.0, color: Colors.blueGrey);

    const pageDecoration = const PageDecoration(
      titlePadding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 30.0),
      titleTextStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
      bodyTextStyle: TextStyle(fontSize: 16.0, color: Colors.blueGrey),
      pageColor: Colors.white,
      contentPadding: EdgeInsets.fromLTRB(45.0, 10.0, 45.0, 30.0),
      imagePadding: EdgeInsets.only(top: 30.0),
    );

    return IntroductionScreen(
      key: introKey,
      // Pages
      pages: [
        PageViewModel(
          title: "Fabulous, Or Free",
          body: "Enjoy a fabulous hospitality, else we pay for you.",
          image: _buildImage('adventure'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Manage Bookings",
          body: "Bookings and cancellation anytime, anywhere you want to.",
          image: _buildImage('location_search'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Find Best Deals",
          body: "Stay with us and find best deals on every stay.",
          image: _buildImage('game_day'),
          footer: InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => SignIn(),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(top: 30.0),
              child: Container(
                height: 60.0,
                width: 250.0,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                ),
                child: Center(
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],

      // Skip
      onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      skip: const Text('Skip'),
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,

      // Next
      next: Text('Next'), // const Icon(Icons.arrow_forward),

      //Done
      onDone: () => _onIntroEnd(context),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),

      // The center Dots decoration
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(35.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}
