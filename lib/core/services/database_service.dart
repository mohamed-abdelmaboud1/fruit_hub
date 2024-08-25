abstract class DatabaseService {
  // Future<void> addUser();
  Future<void> addData({
    required String collection,
    required Map<String, dynamic> data,
  });
}
