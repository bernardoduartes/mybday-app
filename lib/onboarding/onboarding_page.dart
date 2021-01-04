import 'package:flutter/material.dart';
import 'package:mybday_app/constants/app_assets.dart';

import 'onboarding_container.dart';
import 'slide_dots.dart';

class OnboardingPage extends StatefulWidget {
  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  static const _kCurve = Curves.ease;
  static const int _firstPageValue = 0;
  static const _kDuration = const Duration(milliseconds: 300);

  int _currentPage = 0;
  String buttonText = 'SKIP';

  PageController pageController;

  final List<OnboardingContainer> _paginas = [
    OnboardingContainer(
      title: 'Comemore seu aniversário',
      subTitle:
          'Descubra os melhores lugares para comemorar essa data pra lá de especial.',
      imagePath: AppAssets.onboarding1,
    ),
    OnboardingContainer(
      title: 'Convide a sua turma inteira',
      subTitle:
          'Convide toda a sua turma para celebrar essa data juntinho de você!',
      imagePath: AppAssets.onboarding2,
    ),
    OnboardingContainer(
      title: 'E aproveite essa data especial',
      subTitle:
          'Divirta-se muito e aproveite as melhores promoções dos seus restaurantes e bares favoritos',
      imagePath: AppAssets.onboarding3,
    ),
  ];

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void _getChangedPageAndMoveBar(int page) {
    setState(() {
      if (page > 0)
        buttonText = 'Voltar';
      else
        buttonText = 'pular';
      _currentPage = page;
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
                controller: pageController,
                itemCount: _paginas.length,
                physics: BouncingScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  print('_paginas $index');
                  return _paginas[index % _paginas.length];
                },
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
                  for (int i = 0; i < _paginas.length; i++)
                    if (i == _currentPage)
                      SlideDots(true)
                    else
                      SlideDots(false),
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
                    child: RaisedButton(
                      color: Colors.pink[400],
                      textColor: Colors.white,
                      child: new Text(
                        'Continuar',
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(
                          16.0,
                        ),
                      ),
                      onPressed: () {
                        if (_currentPage + 1 < _paginas.length) {
                          pageController.nextPage(
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
                        if (_currentPage > _firstPageValue) {
                          pageController.previousPage(
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

Widget mainView(imagePath, title) {
  return OnboardingContainer(
    title: title,
    imagePath: imagePath,
  );
}

void _callHomePage(BuildContext context) {
  Navigator.of(context).pushReplacementNamed('/home');
}
