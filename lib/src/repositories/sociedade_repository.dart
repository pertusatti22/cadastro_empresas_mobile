import 'package:dio/dio.dart';

import '../models/sociedade.dart';

class SociedadeRepository {
  late Dio dio;
  final String url = 'http://10.0.2.2:8080';

  SociedadeRepository([Dio? client]) : dio = client ?? Dio();

  Future<List<Sociedade>> fetchEmpresas() async {
    final response = await dio.get('$url/sociedades');
    final list = response.data as List;
    return list.map((json) => Sociedade.fromJson(json)).toList();
  }
}
