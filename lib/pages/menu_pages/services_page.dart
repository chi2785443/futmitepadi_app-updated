// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:futmitepadi/basic_widgets.dart';
// // import 'package:google_mobile_ads/google_mobile_ads.dart';
// import 'package:url_launcher/url_launcher.dart';
//
// import '../../ad_mob_services.dart';
//
// class ServicesPage extends StatefulWidget {
//   const ServicesPage({Key? key}) : super(key: key);
//
//   @override
//   State<ServicesPage> createState() => _ServicesPageState();
// }
//
// class _ServicesPageState extends State<ServicesPage> {
//   // late BannerAd bannerAd;
//
//   void initState() {
//     // _createBannerAd();
//     super.initState();
//   }
//
//   // _createBannerAd() {
//   //   bannerAd = BannerAd(
//   //       size: AdSize.fullBanner,
//   //       adUnitId: AdMobServices.bannerAdUnitId!,
//   //       listener: AdMobServices.bannerListener,
//   //       request: const AdRequest());
//   //   bannerAd.load();
//   // }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.deepPurple.shade50,
//         appBar: AppBar(
//           backgroundColor: Colors.purple,
//           actions: [
//             IconButton(
//               onPressed: () {
//                 Navigator.pushNamed(context, 'notification_page');
//               },
//               icon: const Icon(Icons.notifications),
//             ),
//           ],
//           title: const Text(
//             'Services',
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: 17,
//               letterSpacing: 1.0,
//             ),
//           ),
//         ),
//         body: FutureBuilder<QuerySnapshot>(
//           future: FirebaseFirestore.instance
//               .collection('services')
//               .snapshots()
//               .first,
//           builder:
//               (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
//             if (snapshot.hasError) {
//               return const Center(child: Text('Something went wrong'));
//             }
//
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               return const Center(
//                   child: CircularProgressIndicator(
//                 color: Colors.purple,
//                 value: 3,
//               ));
//             }
//             return ListView(
//               children: snapshot.data!.docs
//                   .map((DocumentSnapshot document) {
//                     Map<String, dynamic> data =
//                         document.data()! as Map<String, dynamic>;
//
//                     final Uri _url = Uri.parse(data['link']);
//                     Future<void> _launchUrl() async {
//                       if (!await launchUrl(_url)) {
//                         throw Exception('Could not launch $_url');
//                       }
//                     }
//
//                     return Servicestiles(
//                       title: Text(
//                         data['title'],
//                         style: const TextStyle(
//                             fontWeight: FontWeight.bold,
//                             color: Colors.purple,
//                             fontSize: 16),
//                       ),
//                       subtext: Text(
//                         data['subtext'],
//                         style: const TextStyle(
//                             color: Colors.purple,
//                             fontFamily: 'sourcesanspro',
//                             fontSize: 14),
//                       ),
//                       prices: Text(
//                         data['price'],
//                         style: const TextStyle(
//                             color: Colors.purple,
//                             fontFamily: 'sourcesanspro',
//                             fontSize: 13),
//                       ),
//                       ontap: () {
//                         _launchUrl();
//                       },
//                     );
//                   })
//                   .toList()
//                   .cast(),
//             );
//           },
//         ),
//         // bottomNavigationBar: bannerAd == null
//         //     ? const SizedBox()
//         //     : Container(
//         //         margin: const EdgeInsets.only(bottom: 12),
//         //         height: 52,
//         //         child: AdWidget(ad: bannerAd),
//         //       )
//     );
//   }
// }
