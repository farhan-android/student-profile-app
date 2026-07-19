**Student Profile App**

This is my submission for Task 01 in Devixo Solutions App Development Internship. I took the brief as being rather open: "Build a Flutter app that displays a student profile", and I would have thought the task could go any number of ways, but I chose to do something I would want on my own phone instead of just a demo.

The structure was kept simple on purpose: Come into the app, and see a quick splash, and then the home screen, which is split into sections; profile, skills, education, projects, contact. No fancy navigation, no multiple screens, no routing, for a profile app I would say that a single continuous scroll would work better as a single page. I did put in the dark/light switch, though, because it was listed as a bonus and it seemed like a good idea to add something to a program that you would use every day.

**The content of the app.**


No overwrought animation, just enough that it doesn't feel as if it is loading with a hard cut Splash screen that is short.
Profile header with a name, a position and a short bio, and location.
I don't know why, but there's this little bit of good that it's skills (shown as progress bars rather than plain text), it's a small thing, but it makes the area feel less like a list and more like an actual profile.
A timeline that displays education in an oldest to newest format.
Projects: a couple of cards, containing a short blurb and the tech stack employed
Contact tap to open email, dialer, browser, whatever, depending on what's relevant, it is actually tappable
Your preferences are remembered when you close the app after the theme toggle is used, which is on the top right of the header; otherwise, it resets back to light mode every time you open the app.


I didn't bundle the font files by myself, but used google_fonts (Poppins) and for the rows with contact links, I used url_launcher to make them clickable, rather than just static text. shared_preferences is what was used to remember the theme choice.

**How the code is organized**


* lib/

* main.dart — entry point, sets up the theme
* models/

* student_data.dart — every piece of profile text lives here

* theme/

* app_theme.dart — light + dark theme definitions
* theme_controller.dart — handles switching + remembering the theme

* screens/

* splash_screen.dart
* home_screen.dart

* widgets/

* profile_header.dart
* section_title.dart
* skills_section.dart
* education_section.dart
* projects_section.dart
* contact_section.dart

lib/

main.dart — entry point, sets up the theme
models/

student_data.dart — every piece of profile text lives here



theme/

app_theme.dart — light + dark theme definitions
theme_controller.dart — handles switching + remembering the theme



screens/

splash_screen.dart
home_screen.dart



widgets/

profile_header.dart
section_title.dart
skills_section.dart
education_section.dart
projects_section.dart
contact_section.dart


The primary reason I do it this way is that I tired of swiping through the one long file again and again every time I wanted to make a change. I separated out the widgets, and editing the Skills section, for instance, required me to open one little file rather than sifting through 400 lines of a layed-out file.


**Getting it running**


Install Flutter (or, if you have it, make sure it is up to date): https://docs.flutter.dev/get-started/install
In Android Studio (or VS Code, either one is OK) open the project folder.
Pull the dependencies:


**flutter pub get**


If the android/ folder is not found (when you're opening only the raw source), you can use the following commands:


**flutter create .**

This simply re-writes platform files, and leaves your textual changes alone.

**Running it**

Connect a device that has USB debugging turned on, or run an emulator, then:

**flutter run**

Use release mode if you wish to see how it will perform debug mode is significantly slower to start up, particularly the first time:

flutter run --release

**Building the APK**

flutter build apk --release

Once it is completed it will be landed here:

**build/app/outputs/flutter-apk/app-release.apk**

If you wish to use this for your own profile:

All text data - name, bio, skills, education entries, project descriptions, contact information - is contained in a single location: lib/models/student_data.dart. That's all that you would need to modify to change this "my" to yours; nothing in the widget UI code needs to change.

**Here are two additional things I did:**


Replaced the default Flutter launcher icon with a customized icon (graduation cap design) by flutter_launcher_icons
Create a native splash screen with flutter_native_splash too, as otherwise, there's a plain white splash screen before the app's own splash screen loads, which looked 'noob-ish'.
No backend here, all is local/static data didn't feel the need for what this task was asking for.
This repo contains just the Android part of things (I deleted the iOS/Windows/macOS/Linux/Web folders that Flutter creates by default, as this question only requested an APK for Android). The cross-platform nature of Flutter is not a feature of the additional folders; it's a feature of the Dart code, and those extra folders can be regenerated anytime if someone needs to build for another platform later.


**Submission checklist**


1. [ ] Flutter source code
2. [ ] APK file
3. [ ] Screenshots
4. [ ] Screen recording
5. [ ] PDF report
6. [ ] GitHub repository link
