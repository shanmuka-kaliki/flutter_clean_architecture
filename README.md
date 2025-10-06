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
│   │   └── app\_constants.dart
│   ├── errors
│   │   ├── exceptions.dart
│   │   └── failures.dart
│   ├── providers
│   │   └── firebase\_providers.dart
│   └── routes
│       └── app\_router.dart
│
├── features
│   │
│   ├── authentication
│   │   ├── data
│   │   │   ├── datasource
│   │   │   │   └── auth\_remote\_data\_source.dart
│   │   │   └── repositories
│   │   │       └── auth\_repository\_impl.dart
│   │   ├── domain
│   │   │   ├── entities
│   │   │   │   └── user\_entity.dart
│   │   │   └── repositories
│   │   │       └── auth\_repository.dart
│   │   └── presentation
│   │       ├── providers
│   │       │   ├── auth\_state.dart
│   │       │   └── auth\_state\_notifier.dart
│   │       └── screens
│   │           └── login\_screen.dart
│   │
│   └── posts
│       ├── data
│       │   ├── datasource
│       │   │   └── posts\_remote\_data\_source.dart
│       │   └── repositories
│       │       └── posts\_repository\_impl.dart
│       ├── domain
│       │   ├── entities
│       │   │   └── post\_entity.dart
│       │   └── repositories
│       │       └── posts\_repository.dart
│       └── presentation
│           ├── providers
│           │   └── posts\_provider.dart
│           ├── screens
│           │   ├── post\_list\_screen.dart
│           │   └── post\_detail\_screen.dart
│           └── widgets
│               └── post\_card.dart
│
├── shared
│   ├── theme
│   │   ├── app\_colors.dart
│   │   └── app\_theme.dart
│   └── widgets
│       ├── app\_loading\_indicator.dart
│       └── app\_error\_message.dart
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