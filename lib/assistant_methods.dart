import 'package:unipool/globalVariables/Firebase_Variables.dart';

class AssistantMethods {
  static void readCurrentOnlineUserInfo() async {
    currentUser = auth.currentUser;
    //   DatabaseReference userRef =
    //       FirebaseDatabase.instance.ref().child("users").child(currentUser!.uid);
  }
}
