# Portfolio Web App 🌐

## Overview 📝

This is a web app portfolio showcasing my work and skills. It includes various modules and features designed to highlight my projects, skills, and contact information. The app is built using Flutter and focuses on responsive design to ensure compatibility across different devices.

## Modules 🛠️

1. **Colors File (`colors.dart`):** 🎨
   - Defines the color scheme for the app.
   - Controls colors for the drawer, text, and dashboard.

2. **Responsive (`responsive.dart`):** 📱
   - Ensures the app adjusts to different screen sizes.
   - Uses `BuildContext` and `MediaQuery` to determine screen dimensions and adapt layout.

3. **Components (`components/`):** 🧩
   - **Profile & Intro (`profile_intro.dart`):** 👤
     - Displays introductory animations and text.
   - **About Me (`about_me.dart`):** 👋
     - Displays information about the developer.
   - **My Top Skills (`my_top_skills.dart`):** 💪
     - Showcases key skills with responsive cards.
   - **Recent Projects (`recent_projects.dart`):** 📂
     - Lists recent projects with descriptions and links.

4. **Home Page (`home_page.dart`):** 🏠
   - Main screen with a responsive layout.
   - Includes a drawer for navigation and a top bar for larger screens.

5. **Splash Screen (`splash_screen.dart`):** ✨
   - Displays a splash screen with animations.
   - Uses a timer to transition to the main screen.

6. **Main (`main.dart`):** 🚀
   - Entry point of the app.
   - Sets the theme and initial route to the splash screen.

## Installation and Setup 🛠️

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/portfolio-web-app.git
   ```

2. Navigate to the project directory:
   ```bash
   cd portfolio-web-app
   ```

3. Install dependencies:
   ```bash
   flutter pub get
   ```

4. Run the app:
   ```bash
   flutter run
   ```

## Usage 🔧

- **Colors File:** 🎨 Modify color values to update the app's color scheme.
- **Responsive:** 📱 Adjust functions in `responsive.dart` for different screen sizes.
- **Components:** 🧩 Update content in the components directory as needed.
- **Home Page:** 🏠 Customize the layout and functionality for navigation and content display.
- **Splash Screen:** ✨ Edit the splash screen animations and transition logic in `splash_screen.dart`.
- **Main:** 🚀 Set the initial route and theme in `main.dart`.

## Contributing 🤝

Feel free to contribute to the project by submitting pull requests or opening issues. Your feedback and improvements are welcome!

## License 📜

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
