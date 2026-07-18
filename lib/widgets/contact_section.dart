import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import '../models/student_data.dart';
import 'section_title.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  Future<void> _launch(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final items = [
      {
        "icon": Icons.email_rounded,
        "label": "Email",
        "value": StudentData.email,
        "url": "mailto:${StudentData.email}",
      },
      {
        "icon": Icons.phone_rounded,
        "label": "Phone",
        "value": StudentData.phone,
        "url": "tel:${StudentData.phone}",
      },
      {
        "icon": Icons.code_rounded,
        "label": "GitHub",
        "value": StudentData.github,
        "url": StudentData.github,
      },
      {
        "icon": Icons.business_center_rounded,
        "label": "LinkedIn",
        "value": StudentData.linkedin,
        "url": StudentData.linkedin,
      },
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(title: "Contact", icon: Icons.contact_mail_rounded),
          Card(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: Column(
                children: items.map((item) {
                  return ListTile(
                    leading: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primary.withOpacity(0.12),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(item["icon"] as IconData,
                          size: 18, color: theme.colorScheme.primary),
                    ),
                    title: Text(
                      item["label"] as String,
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: theme.textTheme.bodySmall?.color
                            ?.withOpacity(0.6),
                      ),
                    ),
                    subtitle: Text(
                      item["value"] as String,
                      style: GoogleFonts.poppins(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios_rounded,
                        size: 14),
                    onTap: () => _launch(item["url"] as String),
                  );
                }).toList(),
              ),
            ),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
