import 'package:http/http.dart' as http;
import 'dart:convert';

class AuthenticationService {
  static const String apiUrl = 'http://127.0.0.1:5000';

  Future<void> signUp(String nom, String prenom, String dateNaiss,
      String telephone, String email, String password) async {
    try {
      final response = await http.post(
        Uri.parse('$apiUrl/signup'),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          'nom': nom,
          'prenom': prenom,
          'date_naiss': dateNaiss,
          'telephone': telephone,
          'email': email,
          'mdp': password,
        }),
      );

      if (response.statusCode == 201) {
        print('User created successfully');
      } else {
        print('Error: ${response.body}');
        throw Exception('Failed to create user');
      }
    } catch (e) {
      print('Exception during sign up: $e');
    }
  }

  Future<void> login(String email, String password) async {
    try {
      final response = await http.post(
        Uri.parse('$apiUrl/login'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({
          'email': email,
          'mdp': password,
        }),
      );

      if (response.statusCode == 200) {
        print('Login successful');
      } else if (response.statusCode == 401) {
        print('Invalid email or password');
        throw Exception('Invalid email or password');
      } else {
        print('Error: ${response.body}');
        throw Exception('Failed to login');
      }
    } catch (e) {
      print('Exception during login: $e');
    }
  }
}
