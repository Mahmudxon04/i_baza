import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 96,
              ),
              Center(
                child: SvgPicture.asset(
                  "lib/assets/svg/i_baza.svg",
                  width: 99,
                  height: 32,
                ),
              ),
              const SizedBox(

                height: 48,
              ),
              Text(
                "Xush kelibsiz!",
                style: const TextStyle(
                    fontSize: 28,
                    fontFamily: "Rubik",
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF383838)),
              ),
              const SizedBox(
                height: 4,
              ),
              const Text(
                "Ma’lumotlarni kiriting",
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: "Rubik",
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF9E9EA5)),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Telefon raqam",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Rubik",
                    color: Color(0xFF383838)),
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                height: 45,
                child: TextField(
                  style: const TextStyle(color: Colors.black),
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    fillColor: const Color(0xFFF2F3F5),
                    filled: true,
                    hintText: "+998",
                    isDense: true,
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFFF2F3F5),
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFFF2F3F5),
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFFF2F3F5),
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFFF2F3F5),
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFFF2F3F5),
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                "Parol",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Rubik",
                    color: Color(0xFF383838)),
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                height: 45,
                child: TextField(
                  obscureText: true,
                  style: const TextStyle(color: Colors.black),
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    fillColor: const Color(0xFFF2F3F5),
                    filled: true,
                    prefixText: "Parolni kiriting",
                    prefixStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Rubik",
                        color: Color(0xFFD5D5D5)),
                    suffixText: "Unutdingizmi?",
                    isDense: true,
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFFF2F3F5),
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFFF2F3F5),
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFFF2F3F5),
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFFF2F3F5),
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFFF2F3F5),
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 48,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFE054),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith(
                          (states) => const Color(0xFFFFE054),
                    ),
                    elevation: MaterialStateProperty.resolveWith((states) => 0),
                  ),
                  child: const Text(
                    "Kirish",
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: "Rubik",
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF383838)),
                  ),
                ),
              ),
              SizedBox(
                height: (189 / 812) * MediaQuery
                    .of(context)
                    .size
                    .height,
              ),
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed("/signup");
                  },
                  child: const Text(
                    "Ilovada yangimisiz?",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF9E9EA5),
                        fontFamily: "Rubik"),
                  ),
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              Container(
                height: 48,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFF9DD),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith(
                          (states) => const Color(0xFFFFF9DD),
                    ),
                    elevation: MaterialStateProperty.resolveWith((states) => 0),
                  ),
                  child: const Text(
                    "Ro‘yxatdan o‘tish",
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: "Rubik",
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF292929)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
