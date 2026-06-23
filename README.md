# flutter_automation

Flutter Login Automation Demo

Overview

This project demonstrates basic Flutter UI automation testing using Flutter’s built-in testing framework.

The application contains a simple login page with username and password fields and validation logic. Automated tests verify both positive and negative login scenarios.

⸻

Technologies Used

* Flutter
* Dart
* Flutter Test Framework
* Visual Studio Code

⸻

Application Features

* Username field
* Password field
* Login button
* Success message validation
* Failure message validation
* Empty field validation

⸻

Test Scenarios Covered

Positive Test

* Valid username and password

Negative Tests

* Invalid username
* Invalid password
* Invalid username and password

Validation Tests

* Empty username
* Empty password
* Empty username and password

⸻

Project Structure

flutter_automation_demo
│
├── lib
│   └── main.dart
│
├── test
│   ├── valid_login_test.dart
│   ├── invalid_username_test.dart
│   ├── invalid_password_test.dart
│   ├── both_invalid_test.dart
│   ├── empty_fields_test.dart
│   ├── empty_username_test.dart
│   └── empty_password_test.dart
│
└── pubspec.yaml

⸻

Installation

Clone the repository:

git clone <repository-url>

Navigate to the project:

cd flutter_automation_demo

Install dependencies:

flutter pub get

⸻

Running the Application

Run the application in Chrome:

flutter run -d chrome

⸻

Running Tests

Execute the complete test suite:

flutter test

Run tests with detailed output:

flutter test --reporter expanded

Run a specific test file:

flutter test test/invalid_password_test.dart

⸻

Expected Results

Successful execution should display:

All tests passed!

⸻

Learning Objectives

This project was created to learn:

* Dart fundamentals
* Flutter widget testing
* UI automation concepts
* Test assertions
* Negative testing
* Validation testing
* Flutter project structure

⸻

Author

John Joseph Padinjakkara
QA Engineer | Test Automation Enthusiast
