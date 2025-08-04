import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gdg_core/api/api_service.dart';
import 'package:gdg_core/ui/api_service_provider.dart';
import 'package:gdg_core/ui/news_item.dart';
import 'package:gdg_core/ui/news_state.dart';

class NewsPage extends ConsumerWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final newsState = ref.watch(newsNotifierProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('News')),
      body: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(newsNotifierProvider);
        },
        child: newsState.when(
          initial: () => const Center(child: Text('Welcome to News Page')),
          loaded:
              (articles) => ListView.builder(
                itemCount: articles.length,
                itemBuilder: (context, index) {
                  final article = articles[index];
                  return NewsItem(article: article);
                },
              ),
          error: (error) => Center(child: Text(error.toString())),
          loading: () => const Center(child: CircularProgressIndicator()),
        ),
      ),
    );
  }
}

final newsNotifierProvider = StateNotifierProvider<NewsNotifier, NewsState>((
  ref,
) {
  final apiService = ref.read(apiServiceProvider);
  return NewsNotifier(apiService)..fetchDataEverything();
});

class NewsNotifier extends StateNotifier<NewsState> {
  NewsNotifier(this.apiService) : super(NewsInitial());
  final ApiService apiService;
  Future<void> fetchDataTopHeadlines() async {
    state = NewsLoading();
    try {
      final data = await apiService.fetchNewsTopHeadlines();
      state = NewsLoaded(data);
    } catch (e) {
      state = NewsError(e.toString());
    }
  }

  //fetchNewsArticleEverything
  Future<void> fetchDataEverything() async {
    state = NewsLoading();
    try {
      final data = await apiService.fetchNewsArticleEverything();
      state = NewsLoaded(data);
    } catch (e) {
      state = NewsError(e.toString());
    }
  }
}
