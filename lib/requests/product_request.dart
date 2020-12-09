import 'dart:convert';
import 'dart:io';
import 'package:psawf/models/product.dart';
import 'package:psawf/requests/psawf_api_request.dart';
import 'package:http/http.dart' as http;

class ProductRequest extends PsawfAPIRequest {
  final _path = '/products';
  final int offset;
  final int limit;

  ProductRequest({
    http.Client client,
    this.offset = 0,
    this.limit = 20,
  }) : super(client: client);

  Future<List<Product>> fetch() async {
    final path = prefix + _path;
    final params = {
      'offset': offset.toString(),
      'limit': limit.toString(),
    };
    final uri = Uri.https(authority, path, params);
    final response = await client
        .get(uri, headers: {HttpHeaders.authorizationHeader: authorization});
    if (response.statusCode == 200) {
      final decoded = json.decode(response.body);
      return decoded['products']
          .map<Product>((product) => Product.fromJson(product))
          .toList();
    } else {
      throw Exception('Request failed');
    }
  }
}
