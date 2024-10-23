//
// import 'package:flutter/material.dart';
// import 'package:futmitepadi/basic_widgets.dart';
//
// class PreTestSelectionPage extends StatefulWidget {
//   const PreTestSelectionPage({Key? key}) : super(key: key);
//
//   @override
//   State<PreTestSelectionPage> createState() => _PreTestSelectionPageState();
// }
//
// class _PreTestSelectionPageState extends State<PreTestSelectionPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.deepPurple.shade50,
//       appBar: AppBar(
//         backgroundColor: Colors.purple,
//         actions: [
//           IconButton(
//             onPressed: () {
//               Navigator.pushNamed(context, 'notification_page');
//             },
//             icon: const Icon(Icons.notifications),
//           ),
//         ],
//         title: const Text(
//           'Pre Test',
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 17,
//             letterSpacing: 1.0,
//           ),
//         ),
//       ),
//       body: FutureBuilder<QuerySnapshot>(
//         future: FirebaseFirestore.instance
//             .collection('pretestintopage')
//             .snapshots()
//             .first,
//         builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
//           if (snapshot.hasError) {
//             return const Center(child: Text('Something went wrong'));
//           }
//
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return const Center(
//                 child: CircularProgressIndicator(
//               color: Colors.purple,
//               value: 3,
//             ));
//           }
//           return Column(
//             children: snapshot.data!.docs
//                 .map((DocumentSnapshot document) {
//                   Map<String, dynamic> data =
//                       document.data()! as Map<String, dynamic>;
//                   return Expanded(
//                     child: Container(
//                       decoration: BoxDecoration(
//                         boxShadow: [
//                           BoxShadow(
//                               color: Colors.purple.shade300, blurRadius: 2)
//                         ],
//                         color: Colors.purple.shade100,
//                         borderRadius: BorderRadius.circular(30),
//                       ),
//                       margin: const EdgeInsets.symmetric(
//                         vertical: 20,
//                         horizontal: 20,
//                       ),
//                       height: 200,
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           crossAxisAlignment: CrossAxisAlignment.stretch,
//                           children: [
//                             Center(
//                               child: Text(
//                                 data['title'],
//                                 style: const TextStyle(
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.purple,
//                                     fontSize: 18),
//                               ),
//                             ),
//                             Center(
//                               child: Text(
//                                 data['breifing'],
//                                 style: const TextStyle(
//                                     color: Colors.purple,
//                                     fontFamily: 'sourcesanspro',
//                                     fontSize: 16),
//                               ),
//                             ),
//                             Center(
//                               child: Text(
//                                 data['time'],
//                                 style: const TextStyle(
//                                     color: Colors.purple,
//                                     fontWeight: FontWeight.bold,
//                                     fontFamily: 'sourcesanspro',
//                                     fontSize: 16),
//                               ),
//                             ),
//                             Center(
//                               child: Text(
//                                 data['more'],
//                                 style: const TextStyle(
//                                     color: Colors.purple,
//                                     fontFamily: 'sourcesanspro',
//                                     fontSize: 16),
//                               ),
//                             ),
//                             Purpleflatbutton(
//                               title: 'Start',
//                               onpressed: () {
//                                 Navigator.pushNamed(context, 'pretest_page');
//                               },
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   );
//
//                   // PretestSelectioncard();
//                 })
//                 .toList()
//                 .cast(),
//           );
//         },
//       ),
//     );
//   }
// }
