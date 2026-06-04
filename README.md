# Employee Management App

A modern Flutter application powered by Firebase Firestore for managing employee records in real-time. This project demonstrates CRUD operations, Firebase integration, Firestore database management, and clean Flutter UI design.

## 🚀 Features

* ✅ Add Employee Records
* ✅ View Employee List
* ✅ Real-time Firestore Updates
* ✅ Firebase Firestore Integration
* ✅ Bottom Navigation Bar
* ✅ Clean Material Design UI
* ✅ Cloud-Based Data Storage

---

## 📱 Screens
<img width="800" height="1600" alt="emp" src="https://github.com/user-attachments/assets/8cbf0520-f0e7-47b0-984e-bd6198ffb669" />

<img width="959" height="539" alt="image" src="https://github.com/user-attachments/assets/f87c7be8-9fea-4815-a515-d0aa1ee430ed" />


### Add Employee Screen

Capture employee details including:

* Name
* Email
* Department
* Salary

Employee information is stored securely in Firebase Firestore.

### Employee List Screen

* Fetch employee records from Firestore
* Real-time updates using StreamBuilder
* Responsive and dynamic employee listing

---

## 🛠️ Technologies Used

* Flutter
* Dart
* Firebase Core
* Cloud Firestore
* Material Design

---

## 📂 Project Structure

```text
lib/
├── main.dart
├── firebase_options.dart
│
├── screens/
│   ├── home_page.dart
│   ├── add_employee_screen.dart
│   └── employee_list_screen.dart
│
├── services/
│   └── firestore_service.dart
│
├── models/
│   └── employee_model.dart
│
└── widgets/
    └── employee_tile.dart
```

---

## 🔥 Firebase Setup

### 1. Create Firebase Project

Create a new project in Firebase Console.

### 2. Register Android App

Add your Flutter Android application to Firebase.

### 3. Download Configuration File

Download:

```text
google-services.json
```

Place it inside:

```text
android/app/google-services.json
```

### 4. Configure FlutterFire

```bash
flutterfire configure
```

### 5. Enable Firestore Database

* Open Firebase Console
* Navigate to Firestore Database
* Create Database
* Start in Test Mode

### 6. Create Collection

Create collection:

```text
employees
```

---

## 📄 Firestore Document Example

```json
{
  "name": "Deepesh",
  "email": "deepeshsuthar@gmail.com",
  "department": "IT",
  "salary": 35000
}
```

---

## 🚀 Getting Started

### Clone Repository

```bash
git clone https://github.com/your-username/employee_management_app.git
```

### Navigate to Project

```bash
cd employee_management_app
```

### Install Dependencies

```bash
flutter pub get
```

### Run Application

```bash
flutter run
```

---

## 📦 Dependencies

```yaml
firebase_core: ^4.10.0
cloud_firestore: ^6.5.0
```

---

## 🎯 Learning Outcomes

This project demonstrates:

* Flutter Project Structure
* Firebase Integration
* Firestore CRUD Operations
* State Management Basics
* Form Handling
* StreamBuilder Usage
* Real-time Data Synchronization

---

## 🔮 Future Enhancements

* Update Employee Details
* Delete Employee Records
* Firebase Authentication
* Search Employees
* Department Filters
* Employee Profile Screen
* Attendance Management
* Leave Management System
* HR Dashboard Analytics

---

## 👨‍💻 Author

**Deepesh Suthar**

MCA Student | Flutter Developer | Firebase Learner

GitHub: https://github.com/your-github-username

---

⭐ If you found this project helpful, consider giving it a star.
