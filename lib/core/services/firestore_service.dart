import 'package:cloud_firestore/cloud_firestore.dart';

import 'database_service.dart';

class FirestoreService implements DatabaseService {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Future<void> addData({
    required String collection,
    required Map<String, dynamic> data,
  }) async {
    try {
      await firestore.collection(collection).add(data);
    } catch (e) {
      throw Exception(e);
    }
  }
}
