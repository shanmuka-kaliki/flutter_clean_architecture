// This file defines Failure classes. Think of these as simple, understandable error messages that your presentation (UI) layer can actually use. They are clean, high-level, and user-focused.

// The job of the Repository is to catch a technical Exception and convert it into a simple Failure.

// What to Keep There
// You create abstract and concrete failure classes that represent a problem in a user-friendly way.

// ServerFailure: A simple class that might hold a message like "Couldn't connect to our servers. Please try again."

// CacheFailure: Holds a message like "Could not load saved articles."

// NetworkFailure: Holds a message like "Please check your internet connection."

// Example for Your App
// Your PostsRepositoryImpl would catch the ServerException from the data source and return a ServerFailure to the UI.

// lib/core/errors/failures.dart

abstract class Failure {
  final String message;
  Failure(this.message);
}

class ServerFailure extends Failure {
  ServerFailure(String message) : super(message);
}

class NetworkFailure extends Failure {
  NetworkFailure(String message) : super(message);
}
