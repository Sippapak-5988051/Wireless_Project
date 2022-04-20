import 'package:url_launcher/url_launcher.dart';

class MapUtils{
  MapUtils._();

  static Future<void> openMap(
      double Latitude,
      double Longitude,
      ) async{
    String googleMapUrl = "https://google.com/maps/search/?api=1&query=$Latitude,$Longitude}";

    if(await canLaunch(googleMapUrl)) {
      await launch(googleMapUrl);
    }else {
      throw 'could not open the map';
    }
  }
}

// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
//
// class Mysearch extends StatefulWidget {
//   const Mysearch({ Key? key }) : super(key: key);
//
//   @override
//   State<Mysearch> createState() => _MysearchState();
// }
//
// class _MysearchState extends State<Mysearch> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Google Map'),
//     ),
//     body: GoogleMap(
//         initialCameraPosition: CameraPosition(
//           target: LatLng(13.7941365,100.317738),
//       zoom: 15,
//       ),
//       ),
//     );
//   }
// }
//
// // class Mysearch extends StatelessWidget {
// //   const Mysearch({Key? key}) : super(key: key);
//
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Search', style: Theme.of(context).textTheme.headline1),
// //         backgroundColor: Colors.white,
// //       ),
// //       body: Container(
// //         color: Colors.grey,
// //         child: Column(
// //           children: [
// //             Image.asset("GPS.png",
// //             width: 740,
// //             height:540,
// //             fit:BoxFit.fill,),
// //             Expanded(
// //               child: Padding(
// //                 padding: const EdgeInsets.all(32),
// //               ),
// //             ),
// //             const Divider(height: 4, color: Colors.black),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }