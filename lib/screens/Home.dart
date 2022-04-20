// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:provider_shopper/screens/Search.dart';

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(80.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("images/SEEHOS_Logo.png"),
              ElevatedButton(
                 child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text('Search nearby')),
                onPressed: () {
                  // Navigator.pushReplacementNamed(context, '/search');
                  MapUtils.openMap(13.7941365,100.317738);
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                ),
              ),
              SizedBox(
                height: 3.0,
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
              ),
              SizedBox(
                height: 3.0,
              ),
              ElevatedButton(
                child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text('Register')),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/register');
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey,
                ),
              ),
              SizedBox(
                height: 3.0,
              ),
              ElevatedButton(
                child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text('Login')),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/login');
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
