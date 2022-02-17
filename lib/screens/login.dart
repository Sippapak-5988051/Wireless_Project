// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class MyLogin extends StatelessWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(80.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("SEEHOS_Logo.png",),
              ElevatedButton(
                 child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text('Search nearby')),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/search');
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                ),
              ),
              ElevatedButton(
                child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text('Hospital List')),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/lists');
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
