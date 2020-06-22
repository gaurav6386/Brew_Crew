import 'package:firebase_auth/firebase_auth.dart';

/* This is where we're going to define all of the different method that are gonna interact with firebase auth for us
 */


class AuthService{
  /*
  Before we get started first what we wanna do is create an instance of firebase authentication and this instance/object is going to allow us to
  communicate with 'firebase auth' on back-end.
   */

  final FirebaseAuth _auth = FirebaseAuth.instance;   //here we have Firebase object '_auth' that is an instance of 'FirebaseAuth' class that give
                                                      // us access to all the properties and method on this class so we could thing anonymously or using email-password


  //sign in anon
  Future signInAnon() async {
    try{
      /*
      '_auth.signInAnonymously()' will try to sign in anonymously  to our firebase project and it knows which backend in our project to sync up with and we set all
      that up by adding 'google.services.json' in android folder.
      On calling '_auth.signInAnonymously()', it will return some kind of result. On that result object we have access to user object which represents that user.
      So we could say then that 'FirebaseUser' type object as user and we'll return the user.
      Now we're not using this 'user' object anywhere at the moment. But when anyone tries to login from sign-in page anonymously and if it succeed it will call
      'signInAnon()' which will then return 'user' object. And if there is error it will catch that error and returns print it in console.
       */
      AuthResult result =   await _auth.signInAnonymously();  //Once '_auth.signInAnonymously()' is done its gonna return 'AuthResult'  much like any other return types above eg. 'FirebaseAuth' , 'Future'.
      FirebaseUser user = result.user;
      return user;
    }
    catch(e){
      print(e.toString());
      return null;
    }
  }

  //sign in with email and password


  //register with email and password


  //sign out


}