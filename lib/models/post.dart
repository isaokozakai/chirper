class Post {
  final String id;
  final String username;
  final String avatarUrl;
  final String content;
  final DateTime timestamp;
  final int likes;
  final int retweets;
  final int replies;

  Post({
    required this.id,
    required this.username,
    required this.avatarUrl,
    required this.content,
    required this.timestamp,
    this.likes = 0,
    this.retweets = 0,
    this.replies = 0,
  });

  String get timeAgo {
    final now = DateTime.now();
    final difference = now.difference(timestamp);

    if (difference.inDays > 0) {
      return '${difference.inDays}d';
    } else if (difference.inHours > 0) {
      return '${difference.inHours}h';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes}m';
    } else {
      return 'now';
    }
  }
}

