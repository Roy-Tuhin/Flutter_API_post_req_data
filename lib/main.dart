// import 'dart:convert';

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'get_prod.dart';
// import 'servicewrapper.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   _HomePage createState() => _HomePage();
// }

// class _HomePage extends State<MyApp> {
//   Future<get_prod> get_prodModellist;

//   void initState() {
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'GET POST',
//       home: SafeArea(
//         child: Scaffold(
//           body: Builder(
//             builder: (context) => Container(
//               padding: EdgeInsets.all(15.0),
//               color: Colors.orange,
//               child: Center(
//                 child: new Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     new Container(
//                         child: FutureBuilder<get_prod>(
//                       future:
//                           get_prodModellist, // here get_datacall()  can be call directly

//                       builder: (context, snapshot) {
//                         if (snapshot.hasData) {
//                           print(" show data on screen " +
//                               snapshot.data.information[1].doctorName);
//                           return Text(snapshot.data.information[1].doctorName);
//                         } else if (snapshot.hasError) {
//                           return Text("${snapshot.error}");
//                         }
//                         return CircularProgressIndicator();
//                       },
//                     )),
//                     new Container(
//                       child: new RaisedButton(
//                         child: new Text('Call'),
//                         onPressed: () {
//                           // get data and assign to model class
//                           get_prodModellist = _getDatacall();
//                           // update the UI
//                           setState(() {});
//                         },
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Future<get_prod> _getDatacall() {
//     print(" get data using http");
//     servicewrapper wrapper =
//         new servicewrapper(); // calling servicewrapper function
//     return wrapper.getProdCall();
//   }
// }

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'get_prod.dart';
import 'servicewrapper.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<MyApp> {
  Future<get_prod> get_prodModellist;

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GET POST',
      home: SafeArea(
        child: Scaffold(
          body: Builder(
            builder: (context) => Container(
              padding: EdgeInsets.all(15.0),
              color: Colors.orange,
              child: Center(
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Container(
                        child: FutureBuilder<get_prod>(
                      future:
                          get_prodModellist, // here get_datacall()  can be call directly

                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          print(" show data on screen " +
                              snapshot.data.information[1].doctorName);
                          return Column(
                            children: [
                              Text("DocName:" +
                                  snapshot.data.information[0].doctorName),
                              Text("EncDoctorId:" +
                                  snapshot.data.information[0].encDoctorId),
                              Text("DoctorId:" +
                                  snapshot.data.information[0].doctorId),
                              Text("DoctorImage:" +
                                  snapshot.data.information[0].doctorImage),
                              Image.network(
                                  snapshot.data.information[0].doctorImage),
                            ],
                          );
                        } else if (snapshot.hasError) {
                          return Text("${snapshot.error}");
                        }
                        return CircularProgressIndicator();
                      },
                    )),
                    new Container(
                      child: new RaisedButton(
                        child: new Text('Call'),
                        onPressed: () {
                          // get data and assign to model class
                          get_prodModellist = _getDatacall();
                          // update the UI
                          setState(() {});
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<get_prod> _getDatacall() {
    print(" get data using http");
    servicewrapper wrapper =
        new servicewrapper(); // calling servicewrapper function
    return wrapper.getProdCall();
  }
}
