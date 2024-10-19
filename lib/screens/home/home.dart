import 'package:flutter/material.dart';
import 'package:flutter_application/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _fromGlobalKey = GlobalKey<FormState>();

  String _email = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 50),
              //https://www.remove.bg/pl
              //Image.asset("assets/images/logoWithoutBg.png",width: 200),
              const SizedBox(height: 150),

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

              Form(
                key: _fromGlobalKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    // Z jakiego textu i fotna korzystamy w środku
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontSize: 16, letterSpacing: 1),

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
                        enabledBorder: CustomInputBorders.enabledBorder(),
                        focusedBorder: CustomInputBorders.focusedBorder(),

                        //Kolor w środku
                        filled: true,
                        fillColor: Colors.transparent,
                      ),

                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "You must enter your email";
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _email = value!;
                      },
                    ),

                    const SizedBox(height: 20),

                    TextFormField(
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

                        // Bordery okna
                        enabledBorder: CustomInputBorders.enabledBorder(),
                        focusedBorder: CustomInputBorders.focusedBorder(),

                        filled: true,
                        fillColor: Colors.transparent,
                      ),
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            value.length < 5) {
                          return "Enter a password at least 5 chars long. (Wrong Password)";
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _password = value!;
                      },
                    ),

                    const SizedBox(height: 50),

                    Center(
                      child: TextButton(
                        onPressed: () {
                          if (_fromGlobalKey.currentState!.validate()) {
                            _fromGlobalKey.currentState!.save();
                          }
                        },
                        child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                ),
                                color: Colors.transparent,
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(20))),
                            child: const Text("Login",
                                style: TextStyle(color: Colors.white))),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
