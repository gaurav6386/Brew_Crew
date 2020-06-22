/*Understanding the layout of app:
   We have the root component which is main.dart
   and sitting underneath that is a wrapper which listens for auth changes
   and that wrapper is either gonna show up the home or authenticate
   which are just beneath the wrapper.
   Now we give access to the home screen to only authenticated users which shows BrewList and Settings
   but to users who aren't logged in we direct them to Authenticate page which shows SignIn and Register options.
   To do this and keep the track of authentication status of the user we'll be using firebase auth which is a service by firebase which manages the
   authentication for us.
 */

import 'package:brew_crew/screens/wrapper.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Wrapper(),
    );
  }
}

