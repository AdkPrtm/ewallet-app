import 'package:dartz/dartz.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:template_clean_architecture/core/error/error.dart';

class AuthLocalService {
  Future<bool> setCredentialToLocal(String token) async {
    try {
      const storage = FlutterSecureStorage();
      await storage.write(key: 'token', value: 'Bearer $token');
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<String> getCredentialToLocal() async {
    const storage = FlutterSecureStorage();
    String? token = await storage.read(key: 'token');
    if (token != null) {
      return token;
    }
    return '';
  }
}
