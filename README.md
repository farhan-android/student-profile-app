**Student Profile App**

This is my Task 01 submission for the App Development Internship at Devixo Solutions. The goal was to build a Flutter app that shows off a student profile — basically a mini portfolio you could put on your phone, covering things like layouts, navigation, and general UI design.

I went with a fairly classic app structure: a splash screen when you open it, and then a single scrollable home screen broken into sections (profile info, skills, education, projects, and contact). I also added a dark/light theme switcher as the bonus feature, since the task mentioned it was optional but worth extra points.

_**What's inside**_


Splash screen – a short animated intro before the app loads the main content
Profile header – name, title, short bio, and location up top
Skills section – each skill shown with a progress bar so it's more visual than just a list of words
Education section – laid out like a timeline, degree by degree
Projects section – cards for a few sample projects, each with a short description and the tech used
Contact section – tappable rows for email, phone, GitHub, and LinkedIn (they actually open the relevant app when tapped)
Dark / Light mode toggle – sits in the top right corner of the header, and the choice is remembered even after you close the app


I used google_fonts for the Poppins font instead of bundling font files manually, and shared_preferences to save the theme choice locally. url_launcher handles opening email/phone/links from the contact section.

# Project structure

lib/
├── main.dart                  => entry point, wires up the theme
├── models/
│    └── student_data.dart     => all the profile content lives here
├── theme/
│    ├── app_theme.dart        => light + dark ThemeData
│    └── theme_controller.dart => handles toggling + saving theme
├── screens/
│    ├── splash_screen.dart
│    └── home_screen.dart
└── widgets/
├── profile_header.dart
├── section_title.dart
├── skills_section.dart
├── education_section.dart
├── projects_section.dart
└── contact_section.dart

Splitting it into widgets like this made it a lot easier to work on one section at a time without the whole home_screen.dart file turning into a mess.

**Setting it up**


Install Flutter if you haven't already — the official install guide is here: https://docs.flutter.dev/get-started/install
Clone or download this project, then open it in Android Studio (or VS Code, whichever you prefer)
Run this in the project folder to pull in the dependencies:


1. flutter pub get
2. 
3. 
4. If you're opening the raw source folder for the first time and it's missing the android/ and ios/ folders, run:
5. 
6. 
7. flutter create .
8. 
9. This regenerates the platform-specific files without touching your existing code.
10. 
11. Running the app
12. 
13. Connect a physical device (with USB debugging on) or start an emulator, then:
14. 
15. flutter run
16. 
17. For a faster, more realistic feel of how the app actually performs, run it in release mode instead:
18. 
19. flutter run --release
20. 
21. Debug mode is noticeably slower to start up, so if you're judging startup speed, release mode gives a much better picture.
22. 
23. Building an APK
24. 
25. flutter build apk --release
26. 
27. The finished APK shows up at:
28. 
29. build/app/outputs/flutter-apk/app-release.apk

# Customizing

All the profile content — name, bio, skills, education, projects, contact details — is kept in one place: lib/models/student_data.dart. Open that file and swap in your own information; you don't need to touch any of the UI code to update the content.

A few notes


The app icon is a custom graduation-cap design rather than the default Flutter icon, generated with flutter_launcher_icons.
There's also a native splash screen configured with flutter_native_splash so the app doesn't show a blank white screen while it's loading.
No backend or database is used — everything is static data, which fit the scope of this task.


