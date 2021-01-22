import 'package:flutter/material.dart';
import 'package:mybday_app/onboarding/slide_dots.dart';
import 'package:mybday_app/onboarding/slide_item.dart';
import 'package:mybday_app/onboarding/slider.dart';

class OnboardingPage extends StatefulWidget {
  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  static const _kCurve = Curves.ease;
  static const int _firstPageValue = 0;
  static const _kDuration = const Duration(milliseconds: 300);

  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  String buttonText = 'pular';

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  void _getChangedPageAndMoveBar(int currentPage) {
    setState(() {
      if (currentPage > 0)
        buttonText = 'voltar   ';
      else
        buttonText = 'pular';
      _currentPage = currentPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    final availableHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        height: availableHeight,
        child: Column(
          children: [
            Container(
              height: availableHeight * 0.70,
              child: PageView.builder(
                scrollDirection: Axis.horizontal,
                controller: _pageController,
                itemCount: sliderArrayList.length,
                physics: BouncingScrollPhysics(),
                itemBuilder: (BuildContext ctx, int i) => SlideItem(i),
                onPageChanged: (int page) {
                  _getChangedPageAndMoveBar(page);
                },
              ),
            ),
            Container(
              height: availableHeight * 0.05,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  for (int i = 0; i < sliderArrayList.length; i++)
                    if (i == _currentPage) SlideDots(true) else SlideDots(false)
                ],
              ),
            ),
            Container(
              height: availableHeight * 0.25,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 200,
                    height: 48,
                    child: RaisedButton(
                      color: Colors.pink[400],
                      textColor: Colors.white,
                      child: new Text(
                        'próximo',
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(
                          22.0,
                        ),
                      ),
                      onPressed: () {
                        if (_currentPage + 1 < sliderArrayList.length) {
                          _pageController.nextPage(
                            duration: _kDuration,
                            curve: _kCurve,
                          );
                          _getChangedPageAndMoveBar(++_currentPage);
                        } else {
                          _callHomePage(context);
                        }
                      },
                    ),
                  ),
                  Container(
                    child: FlatButton(
                      textColor: Colors.purple,
                      child: new Text(
                        buttonText,
                      ),
                      onPressed: () {
                        //TODO melhorar
                        if (_currentPage > _firstPageValue) {
                          _pageController.previousPage(
                            duration: _kDuration,
                            curve: _kCurve,
                          );
                          _getChangedPageAndMoveBar(--_currentPage);
                        } else {
                          _callHomePage(context);
                        }
                      },
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

void _callHomePage(BuildContext context) {
  Navigator.of(context).pushReplacementNamed('/home');
}
