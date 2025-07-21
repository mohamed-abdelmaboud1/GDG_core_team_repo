import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:gdg_core/models/random_user_model.dart';
import 'package:gdg_core/models/user_model.dart';
import '../failure/failure.dart';

class ApiService {
  final Dio dio;
  static const String baseUrl = 'https://jsonplaceholder.typicode.com';

  ApiService(this.dio);

  Future<Either<Failure, List<UserModel>>> fetchUsers() async {
    try {
      final response = await dio.get('$baseUrl/users');
      if (response.statusCode == 200) {
        final List<dynamic> jsonData = response.data;
        final users = jsonData.map((json) => UserModel.fromJson(json)).toList();
        return Right(users);
      } else {
        return Left(Failure('Failed to load users'));
      }
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  Future<Either<Failure, List<int>>> fetchRandomNumbers({
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
        return Right(List<int>.from(response.data));
      } else {
        return Left(Failure('Failed to load random numbers'));
      }
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  Future<Either<Failure, RandomUserModel>> fetchRandomUser() async {
    try {
      final response = await dio.get(
        'https://api.api-ninjas.com/v1/randomuser',
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
}
