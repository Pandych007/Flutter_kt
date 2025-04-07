import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../models/post_model.dart';

class PostProvider extends ChangeNotifier {
  List<Post> _posts = [];
  bool _isLoading = true;

  List<Post> get posts => _posts;
  bool get isLoading => _isLoading;

  Future<void> fetchPosts() async {
    _isLoading = true;
    notifyListeners();

    try {
      final response = await Dio().get(
        'https://jsonplaceholder.typicode.com/posts',
      );
      _posts =
          (response.data as List).map((json) => Post.fromJson(json)).toList();
    } catch (e) {
      print('Error fetching posts: $e');
    }

    _isLoading = false;
    notifyListeners();
  }
}
