## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# Basic Blog App

A simple, scalable Flutter blogging application built with a Clean Architecture approach, featuring social login with Google and Apple.

---

## 🏛️ Architecture

This project is built using **Clean Architecture** with a **feature-driven** approach. This design pattern separates the codebase into distinct, independent layers, making the application easy to test, maintain, and scale.

* **Layers**: The core layers are **Presentation** (UI), **Domain** (Business Logic & Entities), and **Data** (Data Sources & Repositories).
* **Feature-Driven**: Code is grouped by feature (e.g., `authentication`, `posts`), making each feature a self-contained module.

---

## 📁 Folder Structure

The project follows a logical and scalable structure to keep the codebase clean and organized.

```

lib
│
├── core
│   ├── constants
│   │   └── app_constants.dart
│   ├── errors
│   │   ├── exceptions.dart
│   │   └── failures.dart
│   ├── providers
│   │   └── firebase_providers.dart
│   └── routes
│       └── app_router.dart
│
├── features
│   │
│   ├── authentication
│   │   ├── data
│   │   │   ├── datasource
│   │   │   │   └── auth_remote_data_source.dart
│   │   │   └── repositories
│   │   │       └── auth_repository_impl.dart
│   │   ├── domain
│   │   │   ├── entities
│   │   │   │   └── user_entity.dart
│   │   │   └── repositories
│   │   │       └── auth_repository.dart
│   │   └── presentation
│   │       ├── providers
│   │       │   ├── auth_state.dart
│   │       │   └── auth_state_notifier.dart
│   │       └── screens
│   │           └── login_screen.dart
│   │
│   └── posts
│       ├── data
│       │   ├── datasource
│       │   │   └── posts_remote_data_source.dart
│       │   └── repositories
│       │       └── posts_repository_impl.dart
│       ├── domain
│       │   ├── entities
│       │   │   └── post_entity.dart
│       │   └── repositories
│       │       └── posts_repository.dart
│       └── presentation
│           ├── providers
│           │   └── posts_provider.dart
│           ├── screens
│           │   ├── post_list_screen.dart
│           │   └── post_detail_screen.dart
│           └── widgets
│               └── post_card.dart
│
├── shared
│   ├── theme
│   │   ├── app_colors.dart
│   │   └── app_theme.dart
│   └── widgets
│       ├── app_loading_indicator.dart
│       └── app_error_message.dart
│
├── main.dart
└── app.dart

````

---

## 🧐 Key Directories Explained

* **`features`**: Contains all the distinct features of the app.
    * **`authentication`**: Manages user sign-in (Google & Apple) and session state.
    * **`posts`**: Handles fetching, displaying, and managing blog posts.
* **`core`**: Holds foundational code essential for the app's operation. This includes routing, error handling, and core service providers (e.g., Firebase).
* **`shared`**: Contains code that is reusable across multiple features, such as common widgets, theme data, and constants.
* **`main.dart` / `app.dart`**: The entry point and root widget of the application. Responsible for initialization and setting up the overall app structure.

---

## 🚀 Getting Started

To get a local copy up and running, follow these simple steps.

### Prerequisites

* Flutter SDK (version 3.x.x or higher)
* An IDE like VS Code or Android Studio

### Installation

1.  **Clone the repository:**
    ```sh
    git clone [https://github.com/your_username/blog-app.git](https://github.com/your_username/blog-app.git)
    ```
2.  **Navigate to the project directory:**
    ```sh
    cd blog-app
    ```
3.  **Install dependencies:**
    ```sh
    flutter pub get
    ```
4.  **Set up Firebase:**
    * Create a new project on the [Firebase Console](https://console.firebase.google.com/).
    * Add an Android and/or iOS app to your Firebase project.
    * Follow the setup instructions to add `google-services.json` (for Android) and `GoogleService-Info.plist` (for iOS) to your project.
    * Enable **Authentication** (Google & Apple) and **Cloud Firestore**.

5.  **Run the app:**
    ```sh
    flutter run
    ```