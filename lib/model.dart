//Example of model that loads or updates the counter state using an HTTP client
import 'package:http/http.dart' as http;

/// A class representing the data model for the counter.
class CounterData {
  CounterData(this.count);

  final int count;
}

/// A model class to handle server interactions for the counter.
class CounterModel {
  /// Loads the count value from the server.
  Future<CounterData> loadCountFromServer() async {
    final uri = Uri.parse('http://localhost:3000/count');//https://myfluttercounterapp.net/count
    final response = await http.get(uri);

    if (response.statusCode != 200) {
      throw Exception('Failed to fetch the count from the server.');
    }

    return CounterData(int.parse(response.body));
  }

  /// Updates the count value on the server.
  Future<CounterData> updateCountOnServer(int newCount) async {
    final uri = Uri.parse('http://localhost:3000/count');//before uri https://myfluttercounterapp.net/count
    final response = await http.post(
      uri,
      body: {'count': newCount.toString()},
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to update the count on the server.');
    }

    return CounterData(newCount);
  }
}


/// Main function to test the CounterModel functionality.
void main() async {
  final model = CounterModel();

  try {
    // Test fetching the count from the server.
    print('Fetching count from server...');
    final counterData = await model.loadCountFromServer();
    print('Current count: ${counterData.count}');

    // Test updating the count on the server.
    print('Updating count on server...');
    final newCount = counterData.count + 1;
    final updatedCounterData = await model.updateCountOnServer(newCount);
    print('Updated count: ${updatedCounterData.count}');
  } catch (e) {
    print('Error: $e');
  }
}