import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:gdg_core/models/news_article_model.dart';

class NewsItem extends StatelessWidget {
  final NewsArticleModel article;

  const NewsItem({super.key, required this.article});

  String _formatTimeAgo(DateTime publishedAt) {
    final now = DateTime.now();
    final difference = now.difference(publishedAt);

    if (difference.inDays > 0) {
      return '${difference.inDays}d ago';
    } else if (difference.inHours > 0) {
      return '${difference.inHours}h ago';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes}m ago';
    } else {
      return 'Just now';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.white, Colors.white.withValues(alpha: 0.95)],
        ),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.withValues(alpha: 0.1), width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: 20,
            offset: const Offset(0, 8),
            spreadRadius: 0,
          ),
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.04),
            blurRadius: 8,
            offset: const Offset(0, 2),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header with source and actions
            _buildHeader(),
            const Gap(12),

            // Main content row
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Text content
                Expanded(flex: 2, child: _buildTextContent()),
                const Gap(16),

                // Image
                _buildArticleImage(),
              ],
            ),

            const Gap(16),

            // Footer with metadata and actions
            _buildFooter(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      children: [
        // Source info
        Expanded(
          child: Row(
            children: [
              // Source icon/avatar
              Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.blue.withValues(alpha: 0.2),
                      Colors.blue.withValues(alpha: 0.1),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: Colors.blue.withValues(alpha: 0.2),
                    width: 1,
                  ),
                ),
                child: Icon(
                  Icons.article_rounded,
                  color: Colors.blue.shade600,
                  size: 18,
                ),
              ),
              const Gap(8),

              // Source name and verified badge
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          article.sourceName,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        if (article.sourceName.isNotEmpty) ...[
                          const Gap(4),
                          Icon(
                            Icons.verified_rounded,
                            color: Colors.blue.shade400,
                            size: 16,
                          ),
                        ],
                      ],
                    ),
                    Text(
                      _formatTimeAgo(article.publishedAt),
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        // Action buttons
        Row(
          children: [
            // Bookmark button
            Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                color: Colors.grey.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(18),
              ),
              child: Icon(
                Icons.bookmark_outline_rounded,
                color: Colors.grey.shade600,
                size: 18,
              ),
            ),
            const Gap(8),

            // Share button
            Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                color: Colors.grey.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(18),
              ),
              child: Icon(
                Icons.share_rounded,
                color: Colors.grey.shade600,
                size: 18,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildTextContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Title
        Text(
          article.title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Colors.black87,
            height: 1.3,
          ),
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
        const Gap(8),

        // Description
        if (article.description.isNotEmpty)
          Text(
            article.description,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey.shade700,
              fontWeight: FontWeight.w400,
              height: 1.4,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
      ],
    );
  }

  Widget _buildArticleImage() {
    if (article.urlToImage.isEmpty) {
      return Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.grey.withValues(alpha: 0.2),
              Colors.grey.withValues(alpha: 0.1),
            ],
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Icon(
          Icons.image_outlined,
          color: Colors.grey.shade400,
          size: 32,
        ),
      );
    }

    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Stack(
          children: [
            // Image
            Image.network(
              article.urlToImage,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.grey.withValues(alpha: 0.2),
                        Colors.grey.withValues(alpha: 0.1),
                      ],
                    ),
                  ),
                  child: Icon(
                    Icons.broken_image_outlined,
                    color: Colors.grey.shade400,
                    size: 32,
                  ),
                );
              },
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.grey.withValues(alpha: 0.1),
                  ),
                  child: Center(
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation(Colors.blue.shade400),
                      strokeWidth: 2,
                    ),
                  ),
                );
              },
            ),

            // Gradient overlay for better contrast
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withValues(alpha: 0.1),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFooter() {
    return Row(
      children: [
        // Author info
        if (article.author.isNotEmpty) ...[
          Icon(
            Icons.person_outline_rounded,
            color: Colors.grey.shade500,
            size: 16,
          ),
          const Gap(4),
          Expanded(
            child: Text(
              'By ${article.author}',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey.shade600,
                fontWeight: FontWeight.w500,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ] else
          const Spacer(),

        // Read time estimate
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: Colors.blue.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.schedule_rounded,
                color: Colors.blue.shade600,
                size: 12,
              ),
              const Gap(4),
              Text(
                '3 min read',
                style: TextStyle(
                  fontSize: 11,
                  color: Colors.blue.shade600,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),

        const Gap(8),

        // Category badge
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.purple.withValues(alpha: 0.2),
                Colors.purple.withValues(alpha: 0.1),
              ],
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            'News',
            style: TextStyle(
              fontSize: 11,
              color: Colors.purple.shade600,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
