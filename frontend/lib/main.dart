import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const StarkJournalApp());
}

class StarkJournalApp extends StatelessWidget {
  const StarkJournalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stark Journal',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF020B14),
        textTheme: GoogleFonts.orbitronTextTheme(
          Theme.of(context).textTheme,
        ),
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFF00F3FF),
          secondary: Color(0xFF4DEEEA),
        ),
      ),
      home: const LandingScreen(),
    );
  }
}

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(40),
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0xFF00F3FF).withOpacity(0.4),
            ),
            color: Colors.white.withOpacity(0.03),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text(
                'STARK JOURNAL',
                style: TextStyle(
                  fontSize: 32,
                  letterSpacing: 3,
                  shadows: [
                    Shadow(
                      blurRadius: 12,
                      color: Color(0xFF00F3FF),
                    )
                  ],
                ),
              ),
              SizedBox(height: 12),
              Text(
                'ANALYZE • ADAPT • EVOLVE',
                style: TextStyle(letterSpacing: 2),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
