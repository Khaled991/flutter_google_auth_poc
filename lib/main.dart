import 'package:flutter/material.dart';
import 'package:flutter_google_auth_poc/home_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://unahgjbcwadqtxmdjzsv.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InVuYWdnamJjdzFkNXF0eW1kanpzdjIiLCJpYXQiOjE3MzYwNjY2NjIsImV4cCI6MjA1MTY0MjY2Mn0.4pWZG6D0wWZG6D0wWZG6D0wWZG6D0wWZG6D0wWZG6D0', // Found in Settings > API
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Google Sign In PoC', home: HomePage());
  }
}
