import 'package:cloud_firestore/cloud_firestore.dart';

class DBFirestoreHelper {
  DBFirestoreHelper._();
  static final DBFirestoreHelper _instance = DBFirestoreHelper._();
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  static FirebaseFirestore get() {
    return DBFirestoreHelper._instance._firestore;
  }
}
