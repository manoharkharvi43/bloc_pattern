import 'dart:convert';

import 'package:bloc_pattern/data/model/joke_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class JokeRepository {
   final String _baseUrl = "https://v2.jokeapi.dev/joke/Any";

   Future<JokeModel> getJokes() async {
    final response = await http.get(Uri.parse(_baseUrl));
    final jsonBody = jsonDecode(response.body);
    // Map<String ,dynamic> errorData = {
    //   "message":"Something Went Wrong , click load joke for new onne",
    // };
    if (response.statusCode == 200) {
      return JokeModel.fromJson(jsonBody);
    } else {
      return JokeModel.fromJson(jsonBody);
    }
  }
}
