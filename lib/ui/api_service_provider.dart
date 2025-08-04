import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gdg_core/api/api_service.dart';
import 'package:gdg_core/ui/users_page.dart';

final dioProvider = Provider<Dio>((ref) {
  return Dio();
});

final apiServiceProvider = Provider<ApiService>((ref) {
  final dio = ref.read(dioProvider);
  return ApiService(dio);
});
