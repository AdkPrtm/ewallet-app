import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthLocalService {
  final storage = const FlutterSecureStorage();
  Future<bool> setCredentialToLocal(String token) async {
    try {
      await storage.write(key: 'token', value: 'Bearer $token');
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<String> getCredentialToLocal() async {
    String? token = await storage.read(key: 'token');
    if (token != null) {
      return token;
    }
    return '';
  }

  Future<bool> removeCredential() async {
    try {
      await storage.delete(key: 'token');
      return true;
    } catch (e) {
      return false;
    }
  }
}
