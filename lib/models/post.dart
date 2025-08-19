class Post {
  final String id;
  final String username;
  final String avatarUrl;
  final String content;
  final DateTime timestamp;
  final Set<String> userLikes;
  final int retweets;
  final int replies;

  Post({
    required this.id,
    required this.username,
    required this.avatarUrl,
    required this.content,
    required this.timestamp,
    Set<String>? userLikes,
    this.retweets = 0,
    this.replies = 0,
  }) : userLikes = userLikes ?? {};

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

  int get likes => userLikes.length;

  Post copyWith({Set<String>? userLikes}) {
    return Post(
      id: id,
      username: username,
      avatarUrl: avatarUrl,
      content: content,
      timestamp: timestamp,
      userLikes: userLikes ?? this.userLikes,
      retweets: retweets,
      replies: replies,
    );
  }
}
