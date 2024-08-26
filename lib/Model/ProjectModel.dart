class ProjectModel {
  final String imgURL;
  final String projectName;
  final String? description;

  ProjectModel({
    required this.imgURL,
    required this.projectName,
    this.description,
  });
}

List<ProjectModel> projects = [
  ProjectModel(
      description:
          "Welcome to 'Your Friend' chat app! Enhance your communication with dynamic features like Flutter Gemini API for seamless chat, Dash Chat 2 for a modern interface, and Animated Text Kit for vibrant text effects. Enjoy customizable fonts, smooth transitions, Lottie animations, and efficient theme management. Dive into interactive chats about daily routines, medications, and workout tips. Get started by cloning the repository, installing dependencies, and running the app. For more information, check the documentation or contact us via email.",
      imgURL: 'assets/images/YFpj.png',
      projectName: 'Ai Chat App'),
  ProjectModel(
      description:
          "Libass Bazar is an innovative e-commerce platform designed to enhance your buying and selling experience. It allows users to upload products with high-definition images, create dynamic ads, and place orders based on their current location. The app integrates various essential packages such as Firebase for authentication and data storage, Image Picker for uploading and cropping images, Geolocator for location-based services, and more. Users can seamlessly browse, manage ads, and order products, all within a user-friendly and responsive interface.",
      imgURL: 'assets/images/LBpj.png',
      projectName: 'Ecommerce App'),
  ProjectModel(
      description:
          "The Habit Tracker app is a Flutter-based mobile application designed to help users track their daily habits efficiently. It uses the Hive database for local storage and HashMaps for optimized habit data management. Users can create customizable habits, track daily progress, and visualize their achievements over time. The app's structure includes a well-organized codebase, efficient data handling, and a user-friendly interface, making it an effective tool for habit tracking and personal growth.",
      imgURL: 'assets/images/HBpj.png',
      projectName: 'Habit Tracker App'),
  ProjectModel(
      description:
          "The ChatGPT Flutter Integration project demonstrates how to seamlessly incorporate the ChatGPT API into a Flutter mobile application, enabling AI-powered conversations directly within the app interface. Through REST API integration, users can engage in intelligent and intuitive interactions, enhancing the overall user experience with cutting-edge AI capabilities. The project is easy to set up locally, and contributions are encouraged to further improve its features and functionality. Special thanks to OpenAI for providing the ChatGPT API, which makes these innovative experiences possible.",
      imgURL: 'assets/images/CGTpj.png',
      projectName: 'Chatgpt Clone App'),
  ProjectModel(
      description:
          "The Portfolio Web App project is designed to create a personal or professional portfolio website using modern web development technologies. This app allows users to showcase their work, skills, and experiences in a visually appealing and responsive interface. It features sections for projects, about me, contact information, and more, all easily customizable to reflect the user's unique style and achievements. The project is structured for easy deployment and is ideal for developers looking to create an online presence or showcase their portfolio to potential clients or employers.",
      imgURL: 'assets/images/PFpj.png',
      projectName: 'Portfolio Web-App'),
  ProjectModel(
      description:
          "The To-Do App is a Flutter-based application created for practice, utilizing Sqflite for local data storage. This app allows users to manage their tasks efficiently by adding, editing, and deleting to-do items. With a focus on simplicity and functionality, the app provides a user-friendly interface for organizing daily activities, ensuring that tasks are easily accessible and well-managed. It serves as a practical project to explore Flutter's capabilities in handling local databases using Sqflite.",
      imgURL: 'assets/images/Todopj.png',
      projectName: 'To-Do App'),
];
