class CustomException implements Exception {
  final String message;
  final String? errorCode;
  CustomException({required this.message, this.errorCode});
  @override
  String toString() => message;
}
