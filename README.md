# 🎬 Movie App

A Flutter app that allows users to search, view, and explore details about movies. The app fetches movie data from an API and provides users with an interactive interface for browsing movies.

## 📱 Features

- **Movie Search**: Search for movies by title.
- **Movie Details**: View detailed information about a selected movie.
- **Grid View Layout**: Movies displayed in a grid format.
- **Bottom Navigation**: Easily navigate between the home screen and search functionality.

## 🖼️ Demo

https://github.com/user-attachments/assets/2bc73a9e-0d53-48fb-8096-75e751425789


---

## 🚀 Getting Started

### Prerequisites

Ensure you have the following installed:

- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- [Dart SDK](https://dart.dev/get-dart)
- Android Studio or Visual Studio Code (with Flutter plugins installed)

### Installation

1. **Clone the repository**

   ```bash
   git clone https://github.com/Siddiqui145/movie_app.git
   cd movie_app
   ```

2. **Install dependencies**

   ```bash
   flutter pub get
   ```

3. **Run the app**

   Connect an Android/iOS device or start an emulator, then use the following command:

   ```bash
   flutter run
   ```

---

## 📂 Project Structure

```plaintext
lib/
├── models/
│   └── movie.dart              # Movie model for storing movie data
├── screens/
│   ├── home_screen.dart         # Home screen with movie grid
│   ├── search_screen.dart       # Search screen for querying movies
│   └── details_screen.dart      # Details screen displaying movie information
├── services/
│   └── api_service.dart         # API service for fetching movie data
└── main.dart                    # App entry point
```

---

## 🔧 Configuration

### API Service

The app uses an `ApiService` class in `services/api_service.dart` to fetch movies from a movie API. Update the API endpoint and API key if required.

---

## 📋 Usage

1. **Home Screen**: Displays a grid of movies fetched from the API. Tap on a movie card to view its details.
2. **Search Functionality**: Tap the search icon to go to the Search screen, where you can search for movies by title.
3. **Details Screen**: Shows detailed information about a selected movie, including a summary and image.

---

## 🛠️ Bottom Navigation

The app includes a bottom navigation bar to switch between the home screen and the search screen.

---

## 🖼️ Assets

- **Default Images**: Default images for movies without posters are located in the `assets/` folder.
- Ensure your `pubspec.yaml` includes:
  
   ```yaml
   assets:
     - assets/failed.jpeg
   ```

---

## 💡 Customization

- **Design**: Customize colors, typography, and UI components as desired in the `theme` section or by editing widget styles.
- **Add New Features**: Add more screens, features, or API integrations to enhance functionality.

---

## 📜 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## 🤝 Contributing

Contributions are welcome! Please submit a pull request or open an issue for improvements or new features.

---

## 📞 Contact

For any questions or issues, please contact [your.email@example.com](mailto:your.email@example.com).

---

Happy coding! 🚀
