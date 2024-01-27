import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:w_health/utils/utils.dart';

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

  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Container(
            // signup1JB (26:1638)
            padding: EdgeInsets.fromLTRB(0 * fem, 3 * fem, 0 * fem, 3 * fem),
            width: double.infinity,
            height: 1050 * fem,
            decoration: BoxDecoration(
              color: Color(0xfff6f7f9),
              borderRadius: BorderRadius.circular(40 * fem),
            ),
            child: Container(
              // signup8tb (8:111)
              width: 428 * fem,
              height: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xfff6f7f9),
                borderRadius: BorderRadius.circular(40 * fem),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupbmntTAB (M8h5TqMLurqbYfFL37bMnT)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 24 * fem),
                    width: double.infinity,
                    height: 570 * fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // ellipse18kuy (8:115)
                          left: 32 * fem,
                          top: 90 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 44 * fem,
                              height: 44 * fem,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22 * fem),
                                  color: Color(0xffffc4dd),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // iconlylightoutlinearrowrightEa (8:116)
                          left: 42.8649597168 * fem,
                          top: 100.8648726232 * fem,
                          child: SizedBox(
                            width: 22.27 * fem,
                            height: 22.27 * fem,
                            child: TextButton(
                              onPressed: () => print("lololol"),
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                              ),
                              child: Image.asset(
                                'assets/page-1/images/iconly-light-outline-arrow-right-duD.png',
                                width: 22.27 * fem,
                                height: 22.27 * fem,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // signupJKD (8:117)
                          left: 65 * fem,
                          top: 156 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 84 * fem,
                              height: 33 * fem,
                              child: Text(
                                'Sign up',
                                style: SafeGoogleFont(
                                  'Poppins',
                                  fontSize: 22 * ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.5 * ffem / fem,
                                  color: const Color(0xff181d2d),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // createanaccounthere9Kq (8:118)
                          left: 65 * fem,
                          top: 204 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 168 * fem,
                              height: 28 * fem,
                              child: Text(
                                'Create an account here',
                                style: SafeGoogleFont(
                                  'Poppins',
                                  fontSize: 14 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.9462193298 * ffem / fem,
                                  color: const Color(0xffaaaaaa),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // group7080bhd (8:120)
                          left: 65 * fem,
                          top: 277 * fem,
                          child: Container(
                            width: 294 * fem,
                            height: 300 * fem,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                TextField(
                                  controller: emailController,
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: const InputDecoration(
                                    hintText: "User Email",
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
                                    hintText: "User Password",
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
                                  controller: passwordController,
                                  obscureText: true,
                                  decoration: const InputDecoration(
                                    hintText: "User Password",
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
                                  controller: passwordController,
                                  obscureText: true,
                                  decoration: const InputDecoration(
                                    hintText: "User Password",
                                    prefixIcon: Icon(
                                      Icons.lock,
                                      color: Color(0xffaaaaaa),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 18.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          // ellipse197j9 (8:211)
                          left: 0 * fem,
                          top: -20 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 596.5 * fem,
                              height: 252.76 * fem,
                              child: Image.asset(
                                'assets/page-1/images/ellipse-19.png',
                                width: 596.5 * fem,
                                height: 252.76 * fem,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // ellipse202bD (8:217)
                          left: 0 * fem,
                          top: -20 * fem,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(
                                86.5 * fem, 41 * fem, 86.5 * fem, 41 * fem),
                            width: 637 * fem,
                            height: 316.82 * fem,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  'assets/page-1/images/ellipse-20.png',
                                ),
                              ),
                            ),
                            child: Container(
                              // group7072hST (I8:217;23:57)
                              width: 369.83 * fem,
                              height: 23.33 * fem,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // bysigningupyouagreewithourterm (8:119)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 4 * fem, 0 * fem),
                    child: Text(
                      'By signing up you agree with our Terms of Use.\n',
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 12 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.9462192853 * ffem / fem,
                        color: Color(0xff324a59),
                      ),
                    ),
                  ),
                  Container(
                    // autogrouprlvxYju (M8h8jKjwVpTcMtm5FyRLvX)
                    padding: EdgeInsets.fromLTRB(
                        43 * fem, 34 * fem, 28 * fem, 61 * fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // buttonHBh (8:113)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 3 * fem, 45 * fem),
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              width: 354 * fem,
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
                        Container(
                          // autogroupunmhFnj (M8h826Re2fvhfXr5HdunMH)
                          margin: EdgeInsets.fromLTRB(
                              13 * fem, 0 * fem, 29 * fem, 14 * fem),
                          width: double.infinity,
                          height: 45 * fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // line6BAb (8:215)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 14 * fem, 1 * fem),
                                width: 124 * fem,
                                height: 2 * fem,
                                decoration: BoxDecoration(
                                  color: Color(0xffffc4dd),
                                ),
                              ),
                              Container(
                                // autogroupetqk74F (M8h8B6AegENRk7wJzQEtQK)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 8 * fem, 0 * fem),
                                width: 46 * fem,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      'assets/page-1/images/ellipse-1.png',
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
                              Container(
                                // line5ZB9 (8:214)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 1 * fem),
                                width: 123 * fem,
                                height: 2 * fem,
                                decoration: BoxDecoration(
                                  color: Color(0xffffc4dd),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroupya2f59V (M8h8N5rL8oaY4ciNrDya2F)
                          width: double.infinity,
                          height: 79 * fem,
                          child: Stack(
                            children: [
                              Positioned(
                                // buttoncQK (8:208)
                                left: 3 * fem,
                                top: 12 * fem,
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(119.53 * fem,
                                      16 * fem, 78.47 * fem, 7.97 * fem),
                                  width: 354 * fem,
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
                                  child: Container(
                                    // autogroupifebFy5 (M8h8Z5Y1bNneP7VSi3iFeB)
                                    padding: EdgeInsets.fromLTRB(
                                        22 * fem, 0 * fem, 0 * fem, 0 * fem),
                                    width: double.infinity,
                                    height: double.infinity,
                                    child: Text(
                                      'Login with Gmail',
                                      style: SafeGoogleFont(
                                        'Poppins',
                                        fontSize: 14 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.946219308 * ffem / fem,
                                        color: Color(0xff001833),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // googleremovebgpreview29Yf (8:218)
                                left: 37 * fem,
                                top: 0 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 79 * fem,
                                    height: 79 * fem,
                                    child: Image.asset(
                                      'assets/page-1/images/google-removebg-preview-2.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
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
      ),
    );
  }
}
