import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 200),
              Center(
                child: Text(
                  "Witaj",
                  style: GoogleFonts.lobster(
                    textStyle: const TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 50),

              // Z jakiego textu i fotna korzystamy w środku
              TextField(
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 16,
                  letterSpacing: 1,
                ),

                //Kolor pikania jak czeka na literka np
                cursorColor: Colors.white,

                //Ikona i jej kolor
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  label: const Text("Email"),
                  labelStyle: const TextStyle(color: Colors.white),

                  // Bordery okna
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.white),
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.white),
                  ),

                  //Kolor w środku
                  filled: true,
                  fillColor: Colors.transparent,
                ),
              ),

              const SizedBox(height: 20),

              TextField(
                obscureText: true,
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 16,
                  letterSpacing: 1,
                ),
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: Colors.white,
                  ),
                  label: const Text("Password"),
                  labelStyle: const TextStyle(color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.white),
                  ),
                  filled: true,
                  fillColor: Colors.transparent,
                ),
              ),
              const SizedBox(height: 50),

              Center(
                child: TextButton(
                  onPressed: () {},
                  child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                          ),
                          color: Colors.transparent,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20))),
                      child: const Text("Login",
                          style: TextStyle(color: Colors.white))),
                ),
              ),
            ],
          ),
        ));
  }
}
