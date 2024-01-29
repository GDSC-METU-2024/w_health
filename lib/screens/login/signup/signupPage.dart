import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:w_health/services/auth_service.dart';
import 'package:w_health/utils/utils.dart';
import '../../../services/login_service.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final nameController = TextEditingController();
  final AuthService _authService = AuthService();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  void signUserUp() async {
    if (passwordController.text == confirmPasswordController.text &&
        passwordController.text.isNotEmpty &&
        emailController.text.isNotEmpty &&
        nameController.text.isNotEmpty &&
        confirmPasswordController.text.isNotEmpty) {
      try {
        await _auth.createUserWithEmailAndPassword(
            email: emailController.text.trim(),
            password: passwordController.text.trim());
      } on FirebaseAuthException catch (e) {
        errorMessage(e.code);
      }
    } else if (passwordController.text != confirmPasswordController.text) {
      errorMessage("Passwords do not match!");
    } else {
      errorMessage("Please fill all of the fields.");
    }
  }

  void errorMessage(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: const Color(0xFF4E6C50),
          title: Text(
            message,
            style: const TextStyle(color: Colors.white),
          ),
        );
      },
    );
  }

  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Container(
            // signinNou (26:1655)
            width: double.infinity,
            height: 1000 * fem,
            decoration: BoxDecoration(
              color: Color(0xfff6f7f9),
              borderRadius: BorderRadius.circular(40 * fem),
            ),
            child: Container(
              // signinWQK (8:281)
              width: 428 * fem,
              height: 926 * fem,
              decoration: BoxDecoration(
                color: Color(0xfff6f7f9),
                borderRadius: BorderRadius.circular(40 * fem),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupeeno27m (M8hAWgwNfHwmgErTvDeeNo)
                    width: double.infinity,
                    height: 260.82 * fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // signin9iB (8:282)
                          left: 35 * fem,
                          top: 180 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 175 * fem,
                              height: 80 * fem,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Sign up',
                                    style: SafeGoogleFont(
                                      'Poppins',
                                      fontSize: 22 * ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.5 * ffem / fem,
                                      color: Color(0xff181d2d),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Create your account',
                                    style: SafeGoogleFont(
                                      'Poppins',
                                      fontSize: 15 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.5 * ffem / fem,
                                      color: Color(0xffaaaaaa),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // ellipse214MH (8:332)
                          left: 0 * fem,
                          top: -15 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 596.5 * fem,
                              height: 252.76 * fem,
                              child: Image.asset(
                                'assets/page-1/images/ellipse-21.png',
                                width: 596.5 * fem,
                                height: 252.76 * fem,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 20 * fem,
                          top: 90 * fem,
                          child: IconButton(
                            onPressed: () => Navigator.pop(context),
                            icon: Icon(Icons.arrow_back),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupdgh1QbV (M8hBSfPSYec89mPt8odGh1)
                    padding:
                        EdgeInsets.fromLTRB(37 * fem, 0, 33 * fem, 70 * fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextField(
                          controller: nameController,
                          keyboardType: TextInputType.text,
                          decoration: const InputDecoration(
                            hintText: "Name",
                            prefixIcon: Icon(
                              Icons.person,
                              color: Color(0xffaaaaaa),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 26.0,
                        ),
                        TextField(
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            hintText: "Email",
                            prefixIcon: Icon(
                              Icons.email,
                              color: Color(0xffaaaaaa),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 18.0,
                        ),
                        TextField(
                          controller: passwordController,
                          obscureText: true,
                          decoration: const InputDecoration(
                            hintText: "Password",
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Color(0xffaaaaaa),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 18.0,
                        ),
                        TextField(
                          controller: confirmPasswordController,
                          obscureText: true,
                          decoration: const InputDecoration(
                            hintText: "Confirm Password",
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Color(0xffaaaaaa),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 18.0,
                        ),
                        Text(
                          "By signing up, you agree with our Terms of Use.",
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 13.5 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.5 * ffem / fem,
                            color: Color(0xffaaaaaa),
                          ),
                        ),
                        const SizedBox(
                          height: 18.0,
                        ),
                        Container(
                          // buttonxD1 (8:321)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 35 * fem),
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                            ),
                            child: GestureDetector(
                              onTap: () async {
                                await FirebaseUserAuthentication().createPerson(
                                  nameController.text,
                                  emailController.text,
                                  passwordController.text,
                                );
                              },
                              child: Container(
                                width: double.infinity,
                                height: 60 * fem,
                                decoration: BoxDecoration(
                                  color: Color(0xffffc4dd),
                                  borderRadius: BorderRadius.circular(99 * fem),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x4c95adfe),
                                      offset: Offset(0 * fem, 10 * fem),
                                      blurRadius: 11 * fem,
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Text(
                                    'Sign up',
                                    style: SafeGoogleFont(
                                      'Poppins',
                                      fontSize: 22 * ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.5 * ffem / fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // autogroupycyqA4B (M8hAsmAbTPbUnh1WUsycyq)
                          margin: EdgeInsets.fromLTRB(
                              18 * fem, 0 * fem, 21 * fem, 25 * fem),
                          width: double.infinity,
                          height: 45 * fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // line8gHR (8:326)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 11 * fem, 0 * fem, 0 * fem),
                                width: 124 * fem,
                                height: 2 * fem,
                                decoration: BoxDecoration(
                                  color: Color(0xffffc4dd),
                                ),
                              ),
                              SizedBox(
                                width: 13 * fem,
                              ),
                              Container(
                                // autogrouprxh1zou (M8hAz6KP2GMMt4rJeERxH1)
                                width: 46 * fem,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      'assets/page-1/images/ellipse-20-VMD.png',
                                    ),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'OR',
                                    style: SafeGoogleFont(
                                      'Roboto',
                                      fontSize: 15.6616315842 * ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.1725 * ffem / fem,
                                      color: Color(0xffffc4dd),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 13 * fem,
                              ),
                              Container(
                                // line7edZ (8:325)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 10.78 * fem, 0 * fem, 0 * fem),
                                width: 123 * fem,
                                height: 2 * fem,
                                decoration: BoxDecoration(
                                  color: Color(0xffffc4dd),
                                ),
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () => _authService.signInWithGoogle(),
                          child: Container(
                            // autogroupyvxqkwV (M8hB5qeobvoTpZ5KLmyVXq)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 18 * fem),
                            width: double.infinity,
                            height: 79 * fem,
                            child: Stack(
                              children: [
                                Positioned(
                                  // buttonh63 (8:327)
                                  left: 0 * fem,
                                  top: 12 * fem,
                                  child: Container(
                                    width: 358 * fem,
                                    height: 55 * fem,
                                    decoration: BoxDecoration(
                                      color: Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(
                                          91.3783035278 * fem),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0xffc1c7d0),
                                          offset: Offset(0 * fem, 2 * fem),
                                          blurRadius: 10.0000009537 * fem,
                                        ),
                                      ],
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Login with Gmail',
                                        style: SafeGoogleFont(
                                          'Poppins',
                                          fontSize: 15 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.9462193807 * ffem / fem,
                                          color: Color(0xff001833),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // googleremovebgpreview18h9 (8:349)
                                  left: 34 * fem,
                                  top: 0 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 79 * fem,
                                      height: 79 * fem,
                                      child: Image.asset(
                                        'assets/page-1/images/google-removebg-preview-1.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Already have an account? ",
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 15 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.9462193807 * ffem / fem,
                                color: const Color(0xff001833),
                              ),
                            ),
                            GestureDetector(
                              onTap: () => Navigator.pop(context),
                              child: Text(
                                "Log in.",
                                style: SafeGoogleFont(
                                  'Poppins',
                                  fontSize: 15 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.9462193807 * ffem / fem,
                                  color: const Color(0xffffc4dd),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
