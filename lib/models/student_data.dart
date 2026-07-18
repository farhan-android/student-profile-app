/// Holds all the static profile data used across the app.
/// Edit the values below to personalize the app with your own details.
class StudentData {
  static const String name = "Farhan Ali";
  static const String title = "Flutter Developer Intern";
  static const String bio =
      "Passionate Information Technology student with a keen interest in mobile "
      "app development. Currently interning at Devixo Solutions, building "
      "clean and responsive Flutter applications.";
  static const String email = "farhanalifarhan57218140@gmail.com";
  static const String phone = "+92 312 2515646";
  static const String github = "https://github.com/farhan-android";
  static const String linkedin = "https://Linkedin.com/in/farhan-ali-296346328 ";
  static const String location = "Multan, Punjab, Pakistan";

  static const List<Map<String, dynamic>> skills = [
    {"name": "Flutter", "level": 0.85},
    {"name": "Dart", "level": 0.85},
    {"name": "Firebase", "level": 0.65},
    {"name": "Git & GitHub", "level": 0.75},
    {"name": "UI/UX Design", "level": 0.70},
    {"name": "REST APIs", "level": 0.60},
  ];

  static const List<Map<String, String>> education = [
    {
      "degree": "BS Information Technology",
      "institute": "University of Education Township Lahore",
      "duration": "2022 – 2026",
      "details": "CGPA: 3.7 / 4.0",
    },
    {
      "degree": "Intermediate (Pre-Engineering)",
      "institute": "Punjab college",
      "duration": "2020 – 2022",
      "details": "Grade: A",
    },
  ];

  static const List<Map<String, String>> projects = [
    {
      "title": "Student Profile App",
      "description":
          "A Flutter-based mobile app showcasing student profile with "
              "dark/light theme switching. Built during Devixo Solutions internship.",
      "tech": "Flutter, Dart",
    },
    {
      "title": "E-Commerce UI Clone",
      "description":
          "Pixel-perfect responsive UI clone of a popular shopping app with "
              "smooth navigation and animations.",
      "tech": "Flutter, Provider",
    },
    {
      "title": "Weather Forecast App",
      "description":
          "Real-time weather application consuming a public REST API with "
              "clean, minimal UI.",
      "tech": "Flutter, REST API",
    },
  ];
}
