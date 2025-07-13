import 'package:flutter/material.dart';

import 'components/article.dart';
import 'components/category.dart';
import 'components/course.dart';
import 'components/navigation.dart';
import 'components/promotioncard.dart';
import 'components/teachercard.dart';

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

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final int maxRows =
        leftLinks.length > rightLinks.length
            ? leftLinks.length
            : rightLinks.length;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Color(0xFF164F89)),
        title: Image.asset(
          'assets/images/image1.png',
          width: 152.4,
          height: 30,
          fit: BoxFit.contain,
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.person), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            SizedBox(height: 20),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.black,
                  fontFamily: 'InriaSerif',
                ),
                children: [
                  TextSpan(text: 'Unlock Your Potential with '),
                  TextSpan(
                    text: 'Worktency',
                    style: TextStyle(
                      color: Color(0xFFEE6019),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Discover industry-leading courses designed to equip you with real-world skills. Join our community and start your journey to success today.',
              textAlign: TextAlign.center,
              style: TextStyle(fontFamily: 'Ubuntu', fontSize: 15),
            ),
            SizedBox(height: 20),
            Image.asset('assets/images/image2.png'),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.import_contacts_outlined,
                color: Color(0xFF164F89),
              ),
              label: Text(
                'Explore Courses',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Ubuntu',
                  color: Color(0xFF164F89),
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFF4F5FA),
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.co_present, color: Colors.white),
              label: Text(
                'Join as an educator',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Ubuntu',
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFFF7A00),
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            SizedBox(height: 80),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PromotionCard(
                  imagePath: 'assets/images/image3.png',
                  title: 'Expert Instructors',
                ),
                PromotionCard(
                  imagePath: 'assets/images/image4.png',
                  title: 'Flexible Learning',
                ),
                PromotionCard(
                  imagePath: 'assets/images/image5.png',
                  title: 'Hands-On Learning',
                ),
              ],
            ),
            SizedBox(height: 80),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Featured Course',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 24,
                  color: Color(0xff444258),
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Ubuntu',
                ),
              ),
            ),
            SizedBox(height: 20),
            CategoryChips(),
            SizedBox(height: 16),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  6,
                  (index) => Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: SizedBox(
                      width: 178, // Only width is fixed
                      child: CourseCard(),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                  1,
                  (index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Container(
                      width: 6,
                      height: 6,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
                ...List.generate(
                  3,
                  (index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Container(
                      width: 6,
                      height: 6,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 80),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Meet Our Teachers',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  color: Color(0xff444258),
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Ubuntu',
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Teachercard(
                    imageAssetPath: 'assets/images/image8.png',
                    name: 'Dr. VALY Dona',
                    title: 'Researcher, AI Specialist',
                  ),
                  SizedBox(width: 12),
                  Teachercard(
                    imageAssetPath: 'assets/images/image9.png',
                    name: 'HOK Tin',
                    title: 'Web Developer',
                  ),
                  SizedBox(width: 12),
                  Teachercard(
                    imageAssetPath: 'assets/images/image11.png',
                    name: 'HENG Rathpisey',
                    title: 'Lecturer at ITC',
                  ),
                  SizedBox(width: 12),
                  Teachercard(
                    imageAssetPath: 'assets/images/image12.png',
                    name: 'KHUN Dararith',
                    title: 'Cybersecurity Specialist',
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ...List.generate(
                  3,
                  (index) => Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0),
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.orange,
                      size: 23,
                    ),
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: Text(
                    'To reach our only One goal, what we can share with you today ',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Ubuntu',
                    ),
                    softWrap: true,
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),
            Article(),
            SizedBox(height: 20),
            Article(),
            SizedBox(height: 20),
            Article(),
            SizedBox(height: 20),
            Article(),
            SizedBox(height: 20),

            Container(
              alignment: Alignment.centerRight,
              child: Text(
                'See more',
                style: TextStyle(
                  color: Color(0xFF164F89),
                  fontSize: 10,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            SizedBox(height: 50),
            Align(
              alignment: Alignment.centerLeft,
              child: Image.asset('assets/images/image1.png', width: 152),
            ),
            SizedBox(height: 50),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(maxRows, (i) {
                return Padding(
                  padding: const EdgeInsets.only(
                    bottom: 10,
                  ), // smaller space between rows
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Left cell
                      Expanded(
                        child: _footerLink(
                          i < leftLinks.length ? leftLinks[i] : '',
                          12,
                        ),
                      ),
                      // Right cell
                      Expanded(
                        child: _footerLink(
                          i < rightLinks.length ? rightLinks[i] : '',
                          12,
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
            SizedBox(height: 30),
            Text(
              'Certified',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Ubuntu',
                fontSize: 14,
              ),
            ),
            Center(child: Image.asset('assets/images/itclogo.png', width: 125)),
            SizedBox(height: 60),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.facebook, size: 30),
                SizedBox(width: 12),
                Icon(Icons.insert_chart_rounded, size: 30),
                SizedBox(width: 12),
                Icon(Icons.video_library, size: 30),
              ],
            ),
            SizedBox(height: 20),
            Text(
              '2023 Worktency, Inc. All rights reserved.',
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomNavigationBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}

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
