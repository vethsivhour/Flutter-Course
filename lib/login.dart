import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  final ThemeMode themeMode;
  final void Function(bool) onThemeChanged;
  final String languageCode;
  final void Function(String) onLanguageChanged;
  final Map<String, String> localizedStrings;

  const Login({
    super.key,
    required this.themeMode,
    required this.onThemeChanged,
    required this.languageCode,
    required this.onLanguageChanged,
    required this.localizedStrings,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        localizedStrings['login']!,
                        style: TextStyle(
                          color: Color(0xFFFF7A00),
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 5),
                      Container(
                        height: 3,
                        width: 86,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Color(0xFFFF7A00),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50),
                Image.asset('assets/images/image1.png', width: 322, height: 55),
                SizedBox(height: 40),
                Text(
                  localizedStrings['greeting']!,
                  style: TextStyle(
                    color: Color(0xFFFF7A00),
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 40),
                SizedBox(
                  width: 300,
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.grey.shade200),
                          ),
                          hintText: localizedStrings['username']!,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 15,
                          ),
                        ),
                      ),
                      SizedBox(height: 12),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.grey.shade200),
                          ),
                          hintText: localizedStrings['password']!,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 15,
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(localizedStrings['login']!),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFFF7A00),
                            foregroundColor: Colors.white,
                            textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            minimumSize: Size(double.infinity, 50),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      SizedBox(width: 210, child: Divider()),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: _buildLangButton(
                              'assets/images/image2.png',
                              'en',
                              languageCode,
                              onLanguageChanged,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: _buildLangButton(
                              'assets/images/image3.png',
                              'fr',
                              languageCode,
                              onLanguageChanged,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: _buildLangButton(
                              'assets/images/image4.png',
                              'kh',
                              languageCode,
                              onLanguageChanged,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 50),
                      SizedBox(
                        width: 200,
                        child: SwitchListTile(
                          title: Text(
                            localizedStrings['dark_mode']!,
                            style: TextStyle(fontSize: 16),
                          ),
                          value: themeMode == ThemeMode.dark,
                          onChanged: onThemeChanged,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static Widget _buildLangButton(
    String imagePath,
    String code,
    String currentLang,
    void Function(String) onLanguageChanged,
  ) {
    final isActive = code == currentLang;
    return SizedBox(
      width: 88,
      height: 44,
      child: ElevatedButton(
        onPressed: () => onLanguageChanged(code),
        style: ElevatedButton.styleFrom(
          backgroundColor: isActive ? Color(0xFFFF7A00) : Colors.white,
          foregroundColor: isActive ? Colors.white : Color(0xFFFF7A00),
          textStyle: const TextStyle(fontWeight: FontWeight.w700),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(color: Color(0xFFFF7A00)),
          ),
          elevation: 0,
          padding: EdgeInsets.symmetric(horizontal: 8),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(
                imagePath,
                width: 27,
                height: 27,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 6),
            Text(code.toUpperCase()),
          ],
        ),
      ),
    );
  }
}

