import 'package:flutter/material.dart';
// import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../ad_mob_services.dart';

class LivescoresIntroductionPage extends StatefulWidget {
  @override
  State<LivescoresIntroductionPage> createState() =>
      _LivescoresIntroductionPageState();
}

class _LivescoresIntroductionPageState
    extends State<LivescoresIntroductionPage> {
  // late RewardedAd rewardedAd;
  int rewardScore = 0;

  @override
  void initState() {
    // _createRewardedAd();
    super.initState();
  }

  // _createRewardedAd() {
  //   RewardedAd.load(
  //     adUnitId: AdMobServices.rewardedAdUnitId!,
  //     request: AdRequest(),
  //     rewardedAdLoadCallback: RewardedAdLoadCallback(onAdLoaded: (ad) {
  //       setState(() {
  //         rewardedAd = ad;
  //       });
  //     }, onAdFailedToLoad: (error) {
  //       setState(() {
  //         rewardedAd.dispose();
  //       });
  //     }),
  //   );
  // }

  // void showRewardedAd() {
  //   if (RewardedAd != null) {
  //     rewardedAd.fullScreenContentCallback =
  //         FullScreenContentCallback(onAdDismissedFullScreenContent: (ad) {
  //       ad.dispose();
  //       _createRewardedAd();
  //     }, onAdFailedToShowFullScreenContent: (ad, error) {
  //       ad.dispose();
  //       _createRewardedAd();
  //     });
  //   }
  //   rewardedAd.show(onUserEarnedReward: (AdWithoutView ad, RewardItem reward) {
  //     rewardScore++;
  //   });
  // }

  late Uri _url;

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade50,
      body: SafeArea(
        child: Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Futmitepadi  POSSIBLE QUESTIONS',
                      style: TextStyle(
                          color: Colors.purple.shade600,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'worksans',
                          fontSize: 13),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    'Points: $rewardScore',
                    overflow: TextOverflow.visible,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.purple,
                        fontFamily: 'worksans',
                        fontSize: 18),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.purple.shade100,
                      backgroundImage:
                          const AssetImage('images/livescores.png'),
                      radius: 100,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    'Get access to Futmitepadi  POSSIBLE questions by watching a video to earn point or join our paid Circle group aimed at helping you excel',
                    style: TextStyle(
                        color: Colors.purple,
                        fontWeight: FontWeight.normal,
                        fontFamily: 'sourcesanspro',
                        fontSize: 16),
                  ),
                ),
                const Material(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                    child: Text(
                      'what 2 videos to earn 2 points to access Futmitepadi Possible for free',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontFamily: 'sourcesanspro',
                          fontSize: 14),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          // showRewardedAd();
                        },
                        icon: const Icon(
                          Icons.videocam,
                          color: Colors.purple,
                        )),
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      color: Colors.purple,
                      onPressed: () {
                        _url =
                            Uri.parse('https://wa.me/message/YZKRCCBPQGXBJ1');
                        _launchUrl();
                      },
                      child: const Text(
                        'Join our group',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          if (rewardScore > 2) {
                            Navigator.pushReplacementNamed(
                                context, 'livescores_page');
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                  'You need more points or subscribe to get unlimited access',
                                ),
                                behavior: SnackBarBehavior.floating,
                                margin: EdgeInsets.symmetric(vertical: 20),
                                backgroundColor: Colors.redAccent,
                              ),
                            );
                          }
                        },
                        icon: const Icon(
                          Icons.skip_next,
                          color: Colors.purple,
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
