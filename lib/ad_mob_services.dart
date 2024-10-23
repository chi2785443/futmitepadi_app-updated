import 'package:flutter/material.dart';
// import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdMobServices {
  //real Id  ca-app-pub-5129286667406693/9623850093
  static String? get bannerAdUnitId {
    return 'ca-app-pub-3940256099942544/6300978111';
  }

  static String? get interstitialAdUnitId {
    return 'ca-app-pub-3940256099942544/1033173712';
  }

  static String? get rewardedAdUnitId {
    return 'ca-app-pub-3940256099942544/5224354917';
  }

  // static final BannerAdListener bannerListener = BannerAdListener(
  //   onAdLoaded: (ad) {
  //     debugPrint('Ad loaded');
  //   },
  //   onAdFailedToLoad: (ad, error) {
  //     ad.dispose();
  //     debugPrint('ad failed to load: $error');
  //   },
  //   onAdOpened: (ad) => debugPrint('ad opened'),
  //   onAdClosed: (ad) => debugPrint('ad opened'),
  // );
}
