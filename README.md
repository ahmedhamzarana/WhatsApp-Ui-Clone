WhatsApp UI Clone (Flutter)

A Flutter-based UI clone of WhatsApp, showcasing chats, contacts, status, and call screens. Designed for learning Flutter UI, cross-platform layouts, and responsive design.

Features

Chats Screen: Displays a list of conversations.

Status Screen: Shows status updates from contacts.

Calls Screen: Displays recent calls with call icons.

Contacts Screen: Shows a list of contacts to start chats with.

Responsive Design: Works on Android, iOS, and Web.

UI-Only: Focused on design; backend functionality not included.


Project Structure

lib/
├── main.dart             # App entry point
├── Dashboard/            # Main screens
│   ├── chat_screen.dart      # Chat page UI
│   ├── contacts_screen.dart  # Contacts list UI
│   ├── calls_screen.dart     # Call list UI
│   ├── status_screen.dart    # Status updates UI
│   └── utills/               # Custom widgets and helpers
│       ├── chat_box_view.dart
│       └── custom_widget.dart

Screens Overview

1. Chat Screen

Displays all messages with a search bar and chat bubbles.

Uses chat_box_view.dart for individual chat layout.


2. Contacts Screen

Lists all contacts.

Allows navigation to individual chat screens.


3. Calls Screen

Displays all recent calls.

Supports call icons (voice/video).


4. Status Screen

Shows status updates with timestamps.

Includes "My Status" at the top.


Setup Instructions

1. Clone the repository:



git clone https://github.com/ahmedhamzarana/WhatsApp-Ui-Clone.git

2. Navigate to project folder and get dependencies:



cd WhatsApp-Ui-Clone
flutter pub get

3. Run the app:



flutter run

Select your target platform (Android, iOS, Web).

Notes

This project is UI-only; messaging and backend features are not included.

Great starting point to learn Flutter UI and cross-platform design.
