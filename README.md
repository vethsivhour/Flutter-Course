# Class Manager - Flutter Application

A comprehensive Flutter application for managing student information and tracking attendance. Built with modern Flutter practices and SQLite database integration.

## 🚀 Features

- **Student Management**: Add, edit, delete, and view student information
- **Attendance Tracking**: Toggle student attendance status with checkboxes
- **Data Validation**: Comprehensive form validation for all fields
- **Local Database**: Persistent storage using SQLite
- **Responsive UI**: Clean Material Design interface
- **Search & Filter**: Students categorized as Present/Absent

## 📱 Screenshots

### Home Page
![Home Page](screenshots/home_page.png)

### Add Student Form
![Add Student Form](screenshots/add_student_form.png)

### Edit Student Form
![Edit Student Form](screenshots/edit_student_form.png)

## 🛠️ Technologies Used

- **Flutter**: Cross-platform mobile development framework
- **Dart**: Programming language
- **SQLite**: Local database storage
- **Material Design**: UI components

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

## 🎯 Key Features Explained

### Student Management
- **Add Students**: Fill out a comprehensive form with validation
- **Edit Students**: Modify existing student information
- **Delete Students**: Remove students from the database
- **View Students**: Browse all students with detailed information

### Attendance Tracking
- **Toggle Attendance**: Use checkboxes to mark students present/absent
- **Visual Organization**: Students are automatically categorized
- **Real-time Updates**: Changes are immediately reflected in the UI

### Data Validation
- **Email Validation**: Ensures proper email format
- **Phone Validation**: Validates phone number format
- **Required Fields**: All essential fields are mandatory
- **User Feedback**: Clear error messages for invalid input

## 🔄 State Management

The application uses Flutter's built-in `setState()` method for state management:
- Database operations are handled asynchronously
- UI updates automatically when data changes
- Proper error handling with user feedback

## 🎨 UI/UX Design

- **Material Design**: Follows Google's Material Design guidelines
- **Responsive Layout**: Adapts to different screen sizes
- **Intuitive Navigation**: Easy-to-use interface
- **Visual Feedback**: SnackBars and loading indicators

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

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👨‍💻 Author

**Your Name**
- GitHub: [@yourusername](https://github.com/yourusername)

## 🙏 Acknowledgments

- Flutter team for the amazing framework
- SQLite community for database support
- Material Design team for UI guidelines

---

⭐ If you find this project helpful, please give it a star!
