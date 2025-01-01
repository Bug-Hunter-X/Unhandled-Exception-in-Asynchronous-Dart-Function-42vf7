```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      // Use the data
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Log the error, do specific error handling, implement retry logic, etc.
    print('Error fetching data: $e');
    // Optionally: Retry logic or present alternative message to the user
    // ...
  }
}

void main() async {
  await fetchData(); //The exception from fetchData is handled in the fetchData function
  print('Data fetching completed.');
}
```