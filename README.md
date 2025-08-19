# Chirper - A Twitter-like Flutter App

A beautiful Twitter-like social media app built with Flutter, featuring a modern UI and smooth user experience.

## Features

### 🏠 Home Feed

- **ListView of Posts**: Scrollable feed showing all chirps
- **Post Cards**: Beautiful cards displaying username, avatar, content, and timestamp
- **Interactive Actions**: Like, retweet, reply, and share buttons
- **Pull to Refresh**: Refresh the feed by pulling down
- **Create New Posts**: Add button in app bar to create new chirps

### 🔍 Search Screen

- **Search Interface**: Clean search UI with placeholder functionality
- **Modern Design**: Consistent with the app's design language

### 👤 Profile Screen

- **User Profile**: Display user information, avatar, and stats
- **Activity Feed**: Show recent user activity
- **Settings Section**: Access to app settings and preferences

### 🧭 Navigation

- **Bottom Navigation Bar**: Easy navigation between Home, Search, and Profile
- **Smooth Transitions**: Seamless switching between screens

### 🎨 UI/UX Features

- **Material Design**: Modern Material widgets and styling
- **Responsive Layout**: Works on different screen sizes
- **Clean Typography**: Consistent text styling throughout
- **Card-based Design**: Posts displayed in elegant cards
- **Color Scheme**: Blue theme with clean white backgrounds

## State Management

The app uses **Provider** for state management:

- `PostsProvider`: Manages the list of posts and post-related actions
- Real-time updates when liking posts or adding new chirps
- Efficient state updates with `ChangeNotifier`

## Project Structure

```
lib/
├── main.dart                 # App entry point and main screen
├── models/
│   └── post.dart            # Post data model
├── providers/
│   └── posts_provider.dart  # State management for posts
├── screens/
│   ├── home_screen.dart     # Home feed screen
│   ├── search_screen.dart   # Search screen
│   └── profile_screen.dart  # Profile screen
└── widgets/
    └── post_card.dart       # Reusable post card widget
```

## Getting Started

### Prerequisites

- Flutter SDK (3.9.0 or higher)
- Dart SDK
- Android Studio / VS Code with Flutter extensions

### Installation

1. **Clone the repository**

   ```bash
   git clone <repository-url>
   cd chirper
   ```

2. **Install dependencies**

   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   flutter run
   ```

### Dependencies

- `flutter`: Flutter SDK
- `provider: ^6.1.1`: State management
- `cupertino_icons: ^1.0.8`: iOS-style icons

## Sample Data

The app comes with sample posts featuring:

- Flutter development content
- Tech community posts
- App development insights
- User interactions (likes, retweets, replies)

## Future Enhancements

- [ ] User authentication
- [ ] Backend integration
- [ ] Real-time notifications
- [ ] Image upload support
- [ ] Direct messaging
- [ ] Advanced search functionality
- [ ] Dark mode support
- [ ] Offline support

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests if applicable
5. Submit a pull request

## License

This project is licensed under the MIT License - see the LICENSE file for details.

---

Built with ❤️ using Flutter
