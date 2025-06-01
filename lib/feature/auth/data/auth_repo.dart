import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trackcore/core/failure/failures.dart';


class AuthRepository {
  static const String _userEmailKey = 'user_email';
  static const String _isLoggedInKey = 'isLoggedIn';

  static const String _defaultEmail = 'test@gmail.com';
  static const String _defaultPassword = 'P@ss123';
  static const String _defaultFirstName = 'Test';
  static const String _defaultLastName = 'User';
  static const String _defaultCell = '0831234567';
  static const String _defaultUID = '1234567890123';

  Future<void> saveUserEmail(String email) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_userEmailKey, email);
    await prefs.setBool(_isLoggedInKey, true);

    final userData = jsonEncode({
      'firstName': _defaultFirstName,
      'lastName': _defaultLastName,
      'email': _defaultEmail,
      'cellNumber': _defaultCell,
      'idNumber': _defaultUID,
    });
    await prefs.setString('userData', userData);
  }

  Future<Map<String, String>?> loadUserData() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final userDataJson = prefs.getString('userData');

      if (userDataJson != null) {
        final userData = jsonDecode(userDataJson);

        return {
          'userName': '${userData['firstName']} ${userData['lastName']}',
          'accountNumber': userData['email'],
          'cellNumber': userData['cellNumber'],
          'idNumber': userData['idNumber']
        };
      }
      return null;
    } catch (e) {
      print("Error loading user data: $e");
      return null;
    }
  }

  Future<String?> getUserEmail() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_userEmailKey);
  }

  Future<Either<Failure, Unit>> logout() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.clear();
      return right(unit);
    } catch (e) {
      return left(Failure(message: "$e"));
    }
  }

  Future<bool> isLoggedIn() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_isLoggedInKey) ?? false;
  }

  String getUserAccount(String userName, String accountNumb) {
    return '$_defaultFirstName $_defaultLastName';
  }

  Future<bool> loginUser(String email, String password) async {
    if (email == _defaultEmail && password == _defaultPassword) {
      await saveUserEmail(email);
      return true;
    }
    return false;
  }
}
