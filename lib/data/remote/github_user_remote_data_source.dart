import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_api_sample/domain/model/user.dart';

class GitHubUserRemoteDataSource {
  GitHubUserRemoteDataSource._();

  static final instance = GitHubUserRemoteDataSource._();

  final _baseUrl = 'https://api.github.com';
  final _dio = Dio();

  /// ユーザーリストを取得する
  Future<List<User>> users(int since) async {
    final _url = '$_baseUrl/users?since=$since&per_page=100';

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
        final List jsonList = _response.data;
        return jsonList.map((json) => User.fromJson(json)).toList();
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
