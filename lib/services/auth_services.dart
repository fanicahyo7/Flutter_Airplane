import 'package:bwa_airplane/models/user_model.dart';
import 'package:bwa_airplane/services/user_services.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserModel> signUp(
      {required String email,
      required String password,
      required String name,
      String hobby = ''}) async {
    try {
      //simpan ke firebase auth
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);

      UserModel user = UserModel(
          id: userCredential.user!.uid,
          email: email,
          name: name,
          hobby: hobby,
          balance: 24800000);

      //simpan ke firebase firestore
      await UserServices().setUser(user);

      return user;
    } catch (e) {
      throw e;
    }
  }
}
