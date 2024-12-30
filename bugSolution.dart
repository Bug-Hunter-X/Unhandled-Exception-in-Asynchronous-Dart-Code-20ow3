```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      print(data);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error fetching data: $e');
    rethrow; // Re-throw to be caught by main()
  }
}

void main() async {
  try {
    await fetchData();
  } catch (e) {
    print('An error occurred: $e');
    // Add any additional error handling logic here.
  }
}
```