import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Hentoku
                // ClipRRect(
                //   borderRadius: BorderRadius.circular(20),
                //   child: const Image(
                //     image: AssetImage('assets/hentoku_logo.jpg'),
                //   ),
                // ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'COMPANY NAME',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Company custom text',
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(
                  height: 50,
                ),

                // email textfield

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                            border: InputBorder.none, hintText: 'E-mail'),
                      ),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),

                //password textfield

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        decoration: const InputDecoration(
                            border: InputBorder.none, hintText: 'Hasło'),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),

                // SIGN IN BUTTON

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 34, 48, 83),
                      minimumSize: const Size.fromHeight(50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                    onPressed: () {
                      print('ZALOGUJ SIE button clicked');
                    },
                    child: const Text(
                      'ZALOGUJ SIE',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),

                // sign in button
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 25.0),
                //   child: Container(
                //     padding: const EdgeInsets.all(8),
                //     decoration: BoxDecoration(
                //         color: const Color.fromARGB(255, 34, 48, 83),
                //         borderRadius: BorderRadius.circular(12)),
                //     child: Center(
                //       child: TextButton(
                //         onPressed: () {
                //           print('Zaloguj sie button clicked!');
                //         },
                //         child: const Text(
                //           'Zaloguj się',
                //           style: TextStyle(
                //             color: Colors.white,
                //             fontSize: 17,
                //             fontWeight: FontWeight.bold,
                //           ),
                //         ),
                //       ),
                //     ),
                //   ),
                // ),

                const SizedBox(
                  height: 5,
                ),

                // not a member? register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Nie masz konta?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        print('Zarejestruj sie button clicked');
                      },
                      child: const Text(
                        'Zarejestruj się',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 34, 48, 83),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
