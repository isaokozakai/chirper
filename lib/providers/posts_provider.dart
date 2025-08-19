import 'package:flutter/foundation.dart';
import '../models/post.dart';

class PostsProvider with ChangeNotifier {
  List<Post> _posts = [];

  List<Post> get posts => _posts;

  PostsProvider() {
    _loadSamplePosts();
  }

  void _loadSamplePosts() {
    _posts = [
      Post(
        id: '1',
        username: 'flutter_dev',
        avatarUrl: 'https://picsum.photos/200/200?random=1',
        content: 'Just launched my new Flutter app! 🚀 The development experience is amazing. #Flutter #MobileDev',
        timestamp: DateTime.now().subtract(const Duration(minutes: 5)),
        likes: 42,
        retweets: 12,
        replies: 8,
      ),
      Post(
        id: '2',
        username: 'dart_lang',
        avatarUrl: 'https://picsum.photos/200/200?random=2',
        content: 'Dart 3.0 brings amazing new features to make your code more expressive and efficient. Check out the latest updates!',
        timestamp: DateTime.now().subtract(const Duration(hours: 2)),
        likes: 128,
        retweets: 45,
        replies: 23,
      ),
      Post(
        id: '3',
        username: 'mobile_developer',
        avatarUrl: 'https://picsum.photos/200/200?random=3',
        content: 'Working on a new social media app called Chirper. It\'s going to be awesome! 📱✨',
        timestamp: DateTime.now().subtract(const Duration(hours: 4)),
        likes: 89,
        retweets: 34,
        replies: 15,
      ),
      Post(
        id: '4',
        username: 'tech_enthusiast',
        avatarUrl: 'https://picsum.photos/200/200?random=4',
        content: 'The future of cross-platform development is here. Flutter makes it so easy to build beautiful apps for multiple platforms.',
        timestamp: DateTime.now().subtract(const Duration(days: 1)),
        likes: 256,
        retweets: 78,
        replies: 32,
      ),
      Post(
        id: '5',
        username: 'app_designer',
        avatarUrl: 'https://picsum.photos/200/200?random=5',
        content: 'Designing user interfaces with Flutter is a joy. The widget system is incredibly flexible and powerful.',
        timestamp: DateTime.now().subtract(const Duration(days: 2)),
        likes: 167,
        retweets: 56,
        replies: 19,
      ),
    ];
  }

  void addPost(String content) {
    final newPost = Post(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      username: 'current_user',
      avatarUrl: 'https://picsum.photos/200/200?random=6',
      content: content,
      timestamp: DateTime.now(),
    );
    
    _posts.insert(0, newPost);
    notifyListeners();
  }

  void likePost(String postId) {
    final postIndex = _posts.indexWhere((post) => post.id == postId);
    if (postIndex != -1) {
      final post = _posts[postIndex];
      final updatedPost = Post(
        id: post.id,
        username: post.username,
        avatarUrl: post.avatarUrl,
        content: post.content,
        timestamp: post.timestamp,
        likes: post.likes + 1,
        retweets: post.retweets,
        replies: post.replies,
      );
      _posts[postIndex] = updatedPost;
      notifyListeners();
    }
  }
}

