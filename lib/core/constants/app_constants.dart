// lib/core/constants/app_constants.dart
// You should only keep compile-time constants here.

class AppConstants {
  // To prevent anyone from instantiating this class
  AppConstants._();

  // For your AI summary feature
  static const String openAiApiKey = 'sk-xxxxxxxxxxxxxxxxxxxx';

  // For UI
  static const double defaultPadding = 16.0;
  static const double cardBorderRadius = 12.0;

  // For your RSS feeds
  static const int defaultFeedLimit = 25;
}
