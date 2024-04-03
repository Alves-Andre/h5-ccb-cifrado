import 'package:flutter/material.dart';

class CustomSnackBar {
  static void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  static void showFavoriteSnackBar(BuildContext context, bool isFavorite) {
    String message = isFavorite ? 'Hino adicionado aos favoritos!' : 'Hino removido dos favoritos!';
    showSnackBar(context, message);
  }
}