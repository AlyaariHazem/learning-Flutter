import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl;
  String? _token;

  ApiService({required this.baseUrl});

  void setToken(String? newToken) {
    _token = newToken;
  }

  // Utility method to build the full URL
  String _buildUrl(String endpoint) {
    return '${baseUrl.endsWith("/") ? baseUrl : "$baseUrl/"}$endpoint';
  }

  Future<dynamic> get(String endpoint) async {
    final Uri url = Uri.parse(_buildUrl(endpoint));
    final response = await http.get(url, headers: _getHeaders());
    return _processResponse(response);
  }

  Future<dynamic> post(String endpoint, Map<String, dynamic> data) async {
    final Uri url = Uri.parse(_buildUrl(endpoint));
    final response = await http.post(url, headers: _getHeaders(), body: json.encode(data));
    return _processResponse(response);
  }

  Map<String, String> _getHeaders() {
    return {
      'Content-Type': 'application/json',
      if (_token != null) 'Authorization': 'Bearer $_token',
    };
  }

  dynamic _processResponse(http.Response response) {
    print("Response (${response.statusCode}): ${response.body}");
    try {
      final decodedBody = json.decode(response.body);
      switch (response.statusCode) {
        case 200:
          return decodedBody;
        case 400:
          throw Exception('Bad request: ${decodedBody['message'] ?? "Invalid request"}');
        case 401:
          throw Exception('Unauthorized: ${decodedBody['message'] ?? "Unauthorized access"}');
        case 500:
          throw Exception('Internal server error: ${decodedBody['message'] ?? "Server error occurred"}');
        default:
          throw Exception('Unexpected error: ${response.statusCode} - ${response.body}');
      }
    } catch (e) {
      print("Error processing response: $e");
      throw Exception('Error processing response: $e');
    }
  }
}