import 'package:flutter/material.dart';
import '../theme/theme_controller.dart';
import '../widgets/profile_header.dart';
import '../widgets/skills_section.dart';
import '../widgets/education_section.dart';
import '../widgets/projects_section.dart';
import '../widgets/contact_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final maxWidth = constraints.maxWidth > 600
                ? 600.0
                : constraints.maxWidth;
            return SingleChildScrollView(
              child: Center(
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: maxWidth),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Stack(
                        children: [
                          const ProfileHeader(),
                          Positioned(
                            top: 12,
                            right: 12,
                            child: _ThemeToggleButton(),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      const SkillsSection(),
                      const SizedBox(height: 24),
                      const EducationSection(),
                      const SizedBox(height: 24),
                      const ProjectsSection(),
                      const SizedBox(height: 24),
                      const ContactSection(),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class _ThemeToggleButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: ThemeController.instance.themeMode,
      builder: (context, mode, _) {
        final isDark = mode == ThemeMode.dark;
        return Material(
          color: Colors.white.withOpacity(0.2),
          shape: const CircleBorder(),
          child: IconButton(
            icon: Icon(
              isDark ? Icons.light_mode_rounded : Icons.dark_mode_rounded,
              color: Colors.white,
            ),
            tooltip: isDark ? "Switch to Light Mode" : "Switch to Dark Mode",
            onPressed: () => ThemeController.instance.toggleTheme(),
          ),
        );
      },
    );
  }
}
