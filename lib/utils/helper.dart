import 'package:flutter/material.dart';

class Helper {
  /// Menampilkan snackbar pesan umum
  static void showSnackBar(BuildContext context, String message,
      {Color backgroundColor = Colors.black87}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: backgroundColor,
      ),
    );
  }

  /// Navigasi sederhana ke halaman lain
  static void navigateTo(BuildContext context, Widget destination) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => destination),
    );
  }

  /// Validasi email sederhana
  static bool isValidEmail(String email) {
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}$');
    return emailRegex.hasMatch(email);
  }

  /// Validasi password minimal 6 karakter
  static bool isValidPassword(String password) {
    return password.length >= 6;
  }
}
