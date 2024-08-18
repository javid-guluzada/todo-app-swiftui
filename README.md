# SwiftUI To-Do List App

This is a simple to-do list app built using SwiftUI and the MVVM (Model-View-ViewModel) architecture. The app allows users to manage their to-do tasks with features such as adding, deleting, moving, and updating items. It supports dark mode and has a custom launch view and icon.

## Features

- **Add, Delete, and Update To-Do Items**: Easily manage your tasks with the ability to add new items, delete existing ones, and update their status.
- **Reorder Tasks**: Use the built-in reordering functionality to prioritize your tasks by moving them around.
- **Dark Mode Support**: The app is fully responsive and adapts to both light and dark modes based on the system settings.
- **Custom Launch View and Icon**: The app has a unique launch screen and custom app icon for a polished look.

## Architecture

The app follows the MVVM architecture to keep the code modular and maintainable:
- **Model**: Represents the to-do items and their properties.
- **View**: SwiftUI views that define the user interface.
- **ViewModel**: Handles the business logic and communication between the model and views.

## Persistence

### UserDefaults (Note)
To persist the to-do list data, this app uses `UserDefaults`. However, `UserDefaults` is generally not recommended for storing complex data or large datasets as it is meant for storing small amounts of simple data, like user preferences. The reason for using `UserDefaults` in this app is because it’s a test project meant for demonstration purposes. For a production-level app, consider using a more robust solution like Core Data, Realm, or a database such as SQLite.

## Getting Started

### Prerequisites
- Xcode 12 or later
- Swift 5 or later

### Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/javid-guluzada/todo-app-swiftui.git
   ```

2. Open the project in Xcode.

3. Build and run the app on the simulator or a physical device.

## Screenshots

<img src="https://github.com/javid-guluzada/todo-app-swiftui/blob/675f69a5cdc85f5a36fc0b73782f114ea3b24ea8/screenshots/screenshot_1.png?raw=true" width="300">  <img src="https://github.com/javid-guluzada/todo-app-swiftui/blob/675f69a5cdc85f5a36fc0b73782f114ea3b24ea8/screenshots/screenshot_2.png?raw=true" width="300">  <img src="https://github.com/javid-guluzada/todo-app-swiftui/blob/675f69a5cdc85f5a36fc0b73782f114ea3b24ea8/screenshots/screenshot_3.png?raw=true" width="300">

### Gif

<img src="https://github.com/javid-guluzada/todo-app-swiftui/blob/675f69a5cdc85f5a36fc0b73782f114ea3b24ea8/screenshots/todo-app-swiftui.gif?raw=true" width="300">
