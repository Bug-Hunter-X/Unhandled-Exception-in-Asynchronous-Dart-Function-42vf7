```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Handle successful response
      final data = jsonDecode(response.body);
      // Use the data
    } else {
      // Handle error response
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions
    print('Error: $e');
    // In this catch block, rethrow the exception to be caught by a higher-level error handler
    rethrow;
  }
}

void main() async {
  try {
    await fetchData();
    print('Data fetched successfully!');
  } catch (e) {
    print('An error occurred: $e');
  }
}
```