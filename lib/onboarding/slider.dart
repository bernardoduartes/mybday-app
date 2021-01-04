import 'package:flutter/cupertino.dart';
import 'package:mybday_app/constants/app_assets.dart';

class Slider {
  final String sliderImageUrl;
  final String sliderHeading;
  final String sliderSubHeading;

  Slider({
    @required this.sliderImageUrl,
    @required this.sliderHeading,
    @required this.sliderSubHeading,
  });
}

final sliderArrayList = [
  Slider(
      sliderImageUrl: AppAssets.onboarding1,
      sliderHeading: "Comemore seu aniversário!",
      sliderSubHeading:
          "Descubra os melhores lugares para comemorar essa data pra lá de especial."),
  Slider(
      sliderImageUrl: AppAssets.onboarding2,
      sliderHeading: "Convide a sua turma inteira",
      sliderSubHeading:
          "Convide toda a sua turma para celebrar essa data juntinho de você!"),
  Slider(
      sliderImageUrl: AppAssets.onboarding3,
      sliderHeading: "E aproveite essa data especial",
      sliderSubHeading:
          "Divirta-se muito e aproveite as melhores promoções dos seus restaurantes e bares favoritos"),
];
