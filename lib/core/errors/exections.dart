// lib/core/errors/exceptions.dart

// This file defines custom Exception classes. Think of these as raw, low-level errors that happen in the data layer. They are meant for developers, not users.

// What to Keep There:
// You create specific exception classes for things that can go wrong when you're fetching data from an external source (like an API or database).

// ServerException: Thrown when you get an error from an API call (e.g., a 404 Not Found or 500 Internal Server Error).

// CacheException: Thrown when reading or writing to local device storage fails.

// NetworkException: Thrown when the device has no internet connection.

class ServerException implements Exception {}

class CacheException implements Exception {}

class NetworkException implements Exception {}
