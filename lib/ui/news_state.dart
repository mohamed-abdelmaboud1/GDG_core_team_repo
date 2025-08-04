import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gdg_core/models/news_article_model.dart';
part 'news_state.freezed.dart';

@freezed
sealed class NewsState with _$NewsState {
  const factory NewsState.initial() = NewsInitial;
  const factory NewsState.error(String message) = NewsError;
  const factory NewsState.loading() = NewsLoading;
  const factory NewsState.loaded(List<NewsArticleModel> articles) = NewsLoaded;
}
