import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

class PsawfAPIRequest {
  @protected
  final http.Client client;

  @protected
  final String token;

  @protected
  final authority = 'suzuri.jp';

  @protected
  final prefix = '/api/v1';

  String get authorization => "Bearer $token";

  PsawfAPIRequest({
    @required this.client,
  }) : token = DotEnv().env['TOKEN'];
}