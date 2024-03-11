import 'package:firebase_auth/firebase_auth.dart';
import 'package:unipool/models/user_models.dart';

final FirebaseAuth auth = FirebaseAuth.instance;
User? currentUser;

UserModel? userModelCurrentInfo;
String name = "", email_id = "", phoneNumber = "";
