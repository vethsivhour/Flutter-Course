# Class Manager - Flutter Application

A comprehensive Flutter application for managing student information and tracking attendance. Built with modern Flutter practices and SQLite database integration.

## 🚀 Features

- **Student Management**: Add, edit, delete, and view student information
- **Attendance Tracking**: Toggle student attendance status with checkboxes
- **Data Validation**: Comprehensive form validation for all fields
- **Local Database**: Persistent storage using SQLite
- **Responsive UI**: Clean Material Design interface
- **Search & Filter**: Students categorized as Present/Absent

## 📋 Prerequisites

- Flutter SDK (version 3.8.1 or higher)
- Dart SDK
- Android Studio / VS Code
- Android Emulator or Physical Device

## 🔧 Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/class_manager.git
   cd class_manager
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the application**
   ```bash
   flutter run
   ```

## 📁 Project Structure

```
lib/
├── main.dart                 # Application entry point
├── models/
│   └── student.dart          # Student data model
├── screens/
│   ├── home_page.dart        # Main dashboard screen
│   └── form_page.dart        # Add/Edit student form
├── services/
│   └── db_helper.dart        # Database operations
└── utils/
    └── validators.dart       # Form validation utilities
```

## 🗄️ Database Schema

The application uses a single `students` table:

| Column | Type | Description |
|--------|------|-------------|
| id | INTEGER | Primary key (auto-increment) |
| name | TEXT | Student's full name |
| email | TEXT | Student's email address |
| phone | TEXT | Student's phone number |
| className | TEXT | Student's class name |
| department | TEXT | Student's department |
| gender | TEXT | Student's gender |
| dateRegistered | TEXT | Registration date |
| present | INTEGER | Attendance status (0/1) |

## 🧪 Testing

To run tests:
```bash
flutter test
```

## 📦 Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.8
  sqflite: ^2.3.0
  path: ^1.8.3
```

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👨‍💻 Author

**vethsivhour**
- GitHub: [@yourusername](https://github.com/vethsivhour)

## 🙏 Acknowledgments

- Flutter team for the amazing framework
- SQLite community for database support
- Material Design team for UI guidelines



