import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gdg_core/api/api_service.dart';
import 'package:gdg_core/ui/news_state.dart';

class UsersPage extends ConsumerWidget {
  const UsersPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userAsyncValue = ref.watch(numbersProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Users')),
      body: RefreshIndicator(
        onRefresh: () async {
          return await ref.refresh(numbersProvider);
        },
        child: userAsyncValue.when(
          skipLoadingOnRefresh: false,
          data:
              (numbers) => ListView.builder(
                itemCount: numbers.length,
                itemBuilder: (context, index) {
                  final number = numbers[index];
                  return Text(
                    number.toString(),
                    style: TextStyle(fontSize: 50, color: Colors.blue),
                  );
                },
              ),
          error: (error, stackTrace) => Text(error.toString()),
          loading: () => CircularProgressIndicator(),
        ),
      ),
    );
  }
}

final numbersProvider = FutureProvider<List<int>>((ref) async {
  final apiService = ref.read(apiServiceProvider);
  return await apiService.fetchRandomNumbers();
});
//di
final dioProvider = Provider<Dio>((ref) {
  return Dio();
});
final apiServiceProvider = Provider<ApiService>((ref) {
  final dio = ref.read(dioProvider);
  return ApiService(dio);
});

