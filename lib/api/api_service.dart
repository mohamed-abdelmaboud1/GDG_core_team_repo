import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:gdg_core/models/news_article_model.dart';
import 'package:gdg_core/models/random_user_model.dart';
import 'package:gdg_core/models/user_model.dart';

import '../failure/failure.dart';

class ApiService {
  final Dio dio;
  static const String baseUrl = 'https://dummyjson.com/users';

  ApiService(this.dio);

  Future<List<UserModel>> fetchUsers() async {
    try {
      final response = await dio.get(baseUrl);
      if (response.statusCode == 200) {
        final List<dynamic> jsonData = response.data["users"];
        final users = jsonData.map((json) => UserModel.fromJson(json)).toList();
        return users;
      } else {
        throw Exception('Failed to load users');
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<List<int>> fetchRandomNumbers({
    int min = 100,
    int max = 100,
    int count = 5,
  }) async {
    try {
      final response = await dio.get(
        'https://www.randomnumberapi.com/api/v1.0/random',
        queryParameters: {'min': min, 'max': max, 'count': count},
      );
      if (response.statusCode == 200) {
        return List<int>.from(response.data);
      } else {
        throw Exception('Failed to load random numbers');
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<Either<Failure, RandomUserModel>> fetchRandomUser() async {
    try {
      final response = await dio.get(
        'https://api.api-ninjas.com/v1/randomuser',
        options: Options(
          headers: {'X-Api-Key': '3Ay+GTaemlgY/8ST9kIZBQ==SQsO6N5ch6q2atk8'},
        ),
      );
      if (response.statusCode == 200) {
        return Right(RandomUserModel.fromJson(response.data));
      } else {
        return Left(Failure('Failed to load random user'));
      }
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  //https://newsapi.org/v2/top-headlines
  Future<List<NewsArticleModel>> fetchNewsTopHeadlines() async {
    try {
      final response = await dio.get(
        'https://newsapi.org/v2/top-headlines',
        queryParameters: {
          'country': 'us',
          'apiKey': '2a2c2c360d2d45e8b80f3baa9f39793e',
        },
      );
      if (response.statusCode == 200) {
        final List<dynamic> jsonData = response.data['articles'];
        return jsonData.map((json) => NewsArticleModel.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load news articles');
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<List<NewsArticleModel>> fetchNewsArticleEverything() async {
    try {
      final response = await dio.get(
        'https://newsapi.org/v2/everything',
        queryParameters: {
          'q': 'flutter',
          'apiKey': '2a2c2c360d2d45e8b80f3baa9f39793e',
        },
      );
      if (response.statusCode == 200) {
        final List<dynamic> jsonData = response.data['articles'];
        return jsonData.map((article) => NewsArticleModel.fromJson(article)).toList();
      } else {
        throw Exception('Failed to load news article');
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
