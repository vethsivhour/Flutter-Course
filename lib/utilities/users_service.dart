import 'package:http/http.dart' as http;
import 'dart:convert';

class UsersService {
  static final UsersService _singleton = UsersService._internal();
  UsersService._internal();
  static UsersService get instance => _singleton;

  final String baseUrl = 'https://6574db93b2fbb8f6509cbae5.mockapi.io';

  Future<List<dynamic>> getUsers() async {
    try {
      final response = await http.get(Uri.parse('$baseUrl/users'));
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      }
      throw Exception('Unable to retrieve users');
    } catch (e) {
      throw Exception('Failed to fetch users: $e');
    }
  }

  Future<dynamic> updateUser(String id, Map<String, dynamic> data) async {
    try {
      final response = await http.patch(
        Uri.parse('$baseUrl/users/$id'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(data),
      );
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      }
      throw Exception('Unable to update user');
    } catch (e) {
      throw Exception('Failed to update user: $e');
    }
  }

  Future<dynamic> createUser(Map<String, dynamic> data) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/users'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(data),
      );
      if (response.statusCode == 201) {
        return jsonDecode(response.body);
      }
      throw Exception('Unable to create user');
    } catch (e) {
      throw Exception('Failed to create user: $e');
    }
  }

  Future<dynamic> deleteUser(String id) async {
    try {
      final response = await http.delete(Uri.parse('$baseUrl/users/$id'));
      if (response.statusCode == 200) {
        return true;
      }
      throw Exception('Unable to delete user');
    } catch (e) {
      throw Exception('Failed to delete user: $e');
    }
  }
}
