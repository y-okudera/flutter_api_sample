import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_api_sample/domain/model/repositories.dart';

class RepositoryRemoteDataStore {
  RepositoryRemoteDataStore._();

  static final instance = RepositoryRemoteDataStore._();

  final _baseUrl = 'https://api.github.com';
  final _dio = Dio();

  /// リポジトリリストを取得する
  Future<Repositories> repositories(String searchKeyword, int page) async {
    final _url =
        '$_baseUrl/search/repositories?q=$searchKeyword+in:name&sort=stars&per_page=100&page=$page';

    try {
      final _response = await _dio.get(
        _url,
        options: Options(
          receiveDataWhenStatusError: true,
          sendTimeout: 30000, // 30 seconds
          receiveTimeout: 30000, // 30 seconds
          validateStatus: (status) {
            if (status == null) {
              return false;
            }
            return status >= 200 && status < 600;
          },
        ),
      );
      if (_response.statusCode == 200) {
        return Repositories.fromJson(_response.data);
      } else {
        debugPrint('Status code: ${_response.statusCode}');
        throw 'Status code: ${_response.statusCode}';
      }
    } on DioError catch (e) {
      debugPrint('Catch api error: $e');
      rethrow;
    } catch (e) {
      rethrow;
    }
  }
}
