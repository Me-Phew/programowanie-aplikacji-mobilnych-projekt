import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StyledBodyText extends StatelessWidget {
  const StyledBodyText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(color: Colors.grey[800]),
        ));
  }
}

class StyledHeading extends StatelessWidget {
  const StyledHeading(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(color: Colors.black, fontSize: 32),
        ));
  }
}

class StyledAppBarText extends StatelessWidget {
  const StyledAppBarText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.poppins(
          textStyle: const TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ));
  }
}

class StyledErrorText extends StatelessWidget {
  const StyledErrorText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.poppins(
          textStyle: const TextStyle(color: Colors.red),
        ));
  }
}

class SettingsHeading extends StatelessWidget {
  const SettingsHeading(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ));
  }
}

class SettingsText extends StatelessWidget {
  const SettingsText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ));
  }
}

class SettingsTextInside extends StatelessWidget {
  const SettingsTextInside(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(fontSize: 14, color: Colors.grey[600]),
        ));
  }
}

class ProfileTextLeft extends StatelessWidget {
  const ProfileTextLeft(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(fontSize: 16, color: Colors.grey),
      ),
    );
  }
}

class ProfileTextRight extends StatelessWidget {
  const ProfileTextRight(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(fontSize: 14, color: Colors.black),
      ),
    );
  }
}
