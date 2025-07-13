import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

const List<String> leftLinks = [
  'About Us',
  'Contact Us',
  'FaQs',
  'Community Forum',
  'Term of Service',
  'Careers',
  'Leadership',
  'Blog',
];

const List<String> rightLinks = [
  'Social Impact',
  'Cookies Setting',
  'Terms',
  'Accessibility Statement',
  'Investors',
  'GO Pro Course',
  'Affiliate',
];

Widget _footerLink(String text, double fontSize) {
  return Text(
    text,
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontFamily: 'Ubuntu',
      fontSize: fontSize,
      color: Colors.black87,
    ),
  );
}

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Image.asset('assets/images/image1.png', width: 152),
        ),
        SizedBox(height: 50),

        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Left column
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: leftLinks
                    .map(
                      (text) => Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: _footerLink(text, 14),
                      ),
                    )
                    .toList(),
              ),
            ),
            // Right column
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: rightLinks
                    .map(
                      (text) => Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: _footerLink(text, 14),
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
        SizedBox(height: 30),
        Text(
          'Certified',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
        ),
        Center(child: Image.asset('assets/images/itclogo.png', width: 125)),
        SizedBox(height: 60),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.facebook, size: 31),
            SizedBox(width: 12),
            SvgPicture.asset('assets/icons/linkedin.svg'),
            SizedBox(width: 12),
            SvgPicture.asset('assets/icons/youtube.svg'),
          ],
        ),
        SizedBox(height: 20),
        Text(
          '2023 Worktency, Inc. All rights reserved.',
          style: TextStyle(fontSize: 12, color: Colors.grey),
        ),
      ],
    );
  }
}
