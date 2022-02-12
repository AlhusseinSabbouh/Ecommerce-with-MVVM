import 'package:ecommerce_with_mvvm/view/auth/second_page.dart';
import 'package:ecommerce_with_mvvm/view/home_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LogInViewModel extends GetxController {
  User? _use;
  Rxn<User> _user = Rxn<User>();
  GetStorage token = GetStorage();
  String email = "", password = "", name = "";
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  String? get user => _user.value?.email;

  @override
  void onInit() {
    super.onInit();
    print("hereee");
    print(_user.value?.email);
    _user.bindStream(_firebaseAuth.authStateChanges());
  }

  googleSignInMethod() async {
    try {
      GoogleSignInAccount? _googleUser = await _googleSignIn.signIn();
      print(_googleUser);
      GoogleSignInAuthentication googleAuth = await _googleUser!.authentication;
      OAuthCredential credential = GoogleAuthProvider.credential(
          idToken: googleAuth.idToken, accessToken: googleAuth.accessToken);
      UserCredential user =
          await _firebaseAuth.signInWithCredential(credential);
    } catch (e) {
      print(e);
    }
  }

  SignInWithEmailAndPasswordMethod() async {
    try {
      print("password is " + password);
      print("email is " + email);

      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);

      token.write("email", "true");
      Get.offAll(HomeView());
    } catch (e) {
      print(e.toString());
      print(e);
      // Get.snackbar("Error Login Accoun", msg,
      //     snackPosition: SnackPosition.BOTTOM);
    }
  }
}
