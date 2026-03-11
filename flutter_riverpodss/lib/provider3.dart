import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class UserInput extends AsyncNotifier<String> {
  @override
  Future<String> build()  async {
    return "";
  }

  Future<void> fetchData(int value) async {
    state = const AsyncLoading();

    try {
      final response = await http.get(
        Uri.parse('https://jsonplaceholder.typicode.com/albums/$value'),
      );

      final jsonData = json.decode(response.body);

      state = AsyncData(jsonData['title']);
    } catch (e, st) {
      state = AsyncError(e, st);
    }
  }

}

final userInputProvider = AsyncNotifierProvider<UserInput, String>(UserInput.new);