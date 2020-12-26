import 'package:flutter/material.dart';
import 'package:mybday_app/constants/app_assets.dart';
import 'package:mybday_app/constants/app_colors.dart';

class OnboardingPage extends StatefulWidget {
  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  static const _kCurve = Curves.ease;
  static const int _firstPageValue = 0;
  static const _kDuration = const Duration(milliseconds: 300);

  int currentPageValue = 0;
  String buttonText = 'SKIP';

  final _paginas = [
    mainView(
        AppAssets.onboarding_image_1,
        'It’s available in your favorite cities now'
        'and thy wait! go and order'
        'four favorite juices'),
    mainView(
        AppAssets.onboarding_image_1,
        'It’s available in your favorite cities now'
        'and thy wait! go and order'
        'four favorite juices'),
    mainView(
        AppAssets.onboarding_image_1,
        'It’s available in your favorite cities now'
        'and thy wait! go and order'
        'four favorite juices'),
  ];

  PageController pageController;

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
      currentPageValue = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Flex(
          direction: Axis.vertical,
          children: [
            Flexible(
              flex: 3,
              child: PageView.builder(
                controller: pageController,
                itemCount: _paginas.length,
                itemBuilder: (BuildContext context, int index) {
                  return _paginas[index % _paginas.length];
                },
                physics: BouncingScrollPhysics(),
                onPageChanged: (int page) {
                  _getChangedPageAndMoveBar(page);
                },
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      for (int i = 0; i < 3; i++)
                        if (i == currentPageValue) ...[pageIndicator(true)] else
                          pageIndicator(false),
                    ],
                  ),
                ),
              ],
            ),
            Flexible(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    textColor: Colors.white,
                    color: Colors.red,
                    padding: const EdgeInsets.all(8.0),
                    child: new Text(
                      'Próximo',
                    ),
                    onPressed: () {
                      if (currentPageValue + 1 < _paginas.length) {
                        pageController.nextPage(
                          duration: _kDuration,
                          curve: _kCurve,
                        );
                        _getChangedPageAndMoveBar(++currentPageValue);
                      } else {
                        _callHomePage(context);
                      }
                    },
                  ),
                  FlatButton(
                    textColor: Colors.purple,
                    padding: const EdgeInsets.all(8.0),
                    child: new Text(
                      buttonText,
                    ),
                    onPressed: () {
                      if (currentPageValue > _firstPageValue) {
                        pageController.previousPage(
                          duration: _kDuration,
                          curve: _kCurve,
                        );
                        _getChangedPageAndMoveBar(--currentPageValue);
                      } else {
                        _callHomePage(context);
                      }
                    },
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

Widget pageIndicator(bool isActive) {
  return Container(
    height: 10,
    width: 10,
    margin: EdgeInsets.only(left: 5, right: 5),
    child: DecoratedBox(
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: isActive ? colorActive : colorInactive,
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
        border: Border.all(
          color: Colors.black26,
          width: 1.0,
        ),
      ),
    ),
  );
}

Widget mainView(image, title) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          image,
          fit: BoxFit.scaleDown,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.purple,
            fontWeight: FontWeight.bold,
            fontSize: 14.0,
          ),
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 10.0,
          ),
        ),
      ],
    ),
  );
}

void _callHomePage(BuildContext context) {
  Navigator.of(context).pushReplacementNamed('/home');
}
