```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success, parse the JSON response
      final data = jsonDecode(response.body);
      // Use the data
      print(data);
    } else {
      // Handle error
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions
    print('Error fetching data: $e');
    // Rethrow the exception to allow the caller to handle it
    rethrow;
  }
}

void main() async {
  try {
    await fetchData();
  } catch (e) {
    print('An error occurred: $e');
  }
}
```