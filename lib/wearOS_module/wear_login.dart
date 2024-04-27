import 'package:flutter/material.dart';
import 'package:w_health/services/auth_service.dart';

import 'package:flutter/cupertino.dart';
import 'package:w_health/screens/login/signup/signupPage.dart';
import 'package:w_health/utils/utils.dart';

import '../../services/login_service.dart';

class wear_login extends StatefulWidget {
  @override
  State<wear_login> createState() => _wear_loginState();
}

class _wear_loginState extends State<wear_login> {
  final AuthService _auth = AuthService();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void registerUser() {
    Navigator.push(
        context, CupertinoPageRoute(builder: (context) => const SignUpPage()));
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
            height: 1100 * fem,
            decoration: BoxDecoration(
              color: Color(0xfff6f7f9),
              borderRadius: BorderRadius.circular(40 * fem),
            ),
            child: Container(
              // signinWQK (8:281)
              width: 428 * fem,
              height: 800 * fem,
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
                    height: 250.82 * fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // signin9iB (8:282)
                          left: 50 * fem,
                          top: 180 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 175 * fem,
                              height: 80 * fem,
                              child: Text(
                                'Login',
                                style: SafeGoogleFont(
                                  'Poppins',
                                  fontSize: 22 * ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.5 * ffem / fem,
                                  color: Color(0xff181d2d),
                                ),
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
                          controller: _emailController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            hintText: "User Email",
                            hintStyle: TextStyle(fontSize: 10),
                            prefixIcon: Icon(
                              Icons.email,
                              color: Color(0xffaaaaaa),
                              size: 15,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 26.0,
                        ),
                        TextField(
                          controller: _passwordController,
                          obscureText: true,
                          decoration: const InputDecoration(
                            hintText: "User Password",
                            hintStyle: TextStyle(fontSize: 10),
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Color(0xffaaaaaa),
                              size: 15,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 18.0,
                        ),
                        Container(
                          // forgotpasswordey1 (8:285)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 10 * fem, 12 * fem, 40 * fem),
                          child: Text(
                            'Forgot Password?',
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 17 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.5 * ffem / fem,
                              letterSpacing: -0.200000003 * fem,
                              decoration: TextDecoration.underline,
                              color: Color(0xff324a59),
                              decorationColor: Color(0xff324a59),
                            ),
                          ),
                        ),
                        Container(
                          // buttonxD1 (8:321)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 35 * fem),
                          child: TextButton(
                            onPressed: () async {
                              await FirebaseUserAuthentication().signIn(
                                email: _emailController.text,
                                password: _passwordController.text,
                                context: context,
                              );
                            },
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              width: double.infinity,
                              height: 60 * fem,
                              decoration: BoxDecoration(
                                color: const Color(0xffffc4dd),
                                borderRadius: BorderRadius.circular(99 * fem),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0x4c95adfe),
                                    offset: Offset(0 * fem, 10 * fem),
                                    blurRadius: 11 * fem,
                                  ),
                                ],
                              ),
                              child: Center(
                                child: Text(
                                  'Sign in',
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
                          onTap: () => _auth.signInWithGoogle(),
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
                              "Don't have an account? ",
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 15 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.9462193807 * ffem / fem,
                                color: const Color(0xff001833),
                              ),
                            ),
                            GestureDetector(
                              onTap: registerUser,
                              child: Text(
                                "Sign Up.",
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

/*
class wear_login extends StatefulWidget {
  const wear_login({Key? key}) : super(key: key);

  @override
  State<wear_login> createState() => _wear_loginState();
}

class _wear_loginState extends State<wear_login> {
  double heartRate = 0;
  bool started = false;

  late final WatchConnectivityBase _watch;

  var _count = 0;
  var _email = "";
  var _password = "";
  var _supported = false;
  var _paired = false;
  var _reachable = false;
  var _permission = false;
  var _context = <String, dynamic>{};
  var _receivedContexts = <Map<String, dynamic>>[];
  final _log = <String>[];

  Timer? timer;

  @override
  void initState() {
    super.initState();

    // Change this to the plugin you want to test.
    // e.g. `_watch = WatchConnectivityGarmin();`
    _watch = WatchConnectivity();

    if (_watch is WatchConnectivityGarmin) {
      (_watch as WatchConnectivityGarmin).initialize(
        GarminInitializationOptions(
          applicationId: 'daed64bf-ecee-4b75-b736-f0f834801d6a',
          urlScheme: 'watch-connectivity-example',
        ),
      );
    }
    _watch.messageStream.listen((e) => setState(() => Listener(e)));

    if (_watch is! WatchConnectivityGarmin) {
      _watch.contextStream
          .listen((e) => setState(() => _log.add(e.toString())));
    }

    initPlatformState();
  }

  signUserIn() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _email,
        password: _password,
      );
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return sos_page();
          },
        ),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == "user-not-found") {
        wrongEmailMessage();
      } else if (e.code == "wrong-password") {
        wrongPasswordMessage();
      } else {
        nothingMessage();
      }
    }
  }

  void Listener(e) {
    setState(() => _log.add(e.toString()));
    setState(() {
      _email = e["email"];
      _password = e["password"];
    });
    print(e["email"]);
  }

  void wrongEmailMessage() {
    showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          backgroundColor: Color(0xffe97d47),
          title: Text(
            "Incorrect email.",
            style: TextStyle(color: Colors.white),
          ),
        );
      },
    );
  }

  void wrongPasswordMessage() {
    showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          backgroundColor: Color(0xffe97d47),
          title: Text(
            "Incorrect password.",
            style: TextStyle(color: Colors.white),
          ),
        );
      },
    );
  }

  void nothingMessage() {
    showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          backgroundColor: Color(0xffe97d47),
          title: Text(
            "No email, password or both.",
            style: TextStyle(color: Colors.white),
          ),
        );
      },
    );
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  void initPlatformState() async {
    PermissionCheck();
    _supported = await _watch.isSupported;
    _paired = await _watch.isPaired;
    _reachable = await _watch.isReachable;
    if (_watch is! WatchConnectivityGarmin) {
      _context = await _watch.applicationContext;
      _receivedContexts = await _watch.receivedApplicationContexts;
    }
    if (this.mounted) {
      setState(() {});
    }
  }

  void PermissionCheck() async {
    if (_password == "") {
      _permission = false;
    } else {
      _permission = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: InkWell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'assets/images/outline_arrow.png',
                          height: 23,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Back',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w300),
                        )
                      ],
                    ),
                    onTap: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Intro_Wear();
                        },
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Supported: '),
                      Checkbox(
                          value: _supported,
                          activeColor: Color(0xffe97d47),
                          onChanged: null)
                    ],
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  height: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Paired:        '),
                      Checkbox(
                          value: _paired,
                          activeColor: Color(0xffe97d47),
                          onChanged: null)
                    ],
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  height: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Reachable: '),
                      Checkbox(
                          value: _reachable,
                          activeColor: Color(0xffe97d47),
                          onChanged: null)
                    ],
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  height: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Permission:'),
                      Checkbox(
                          value: _permission,
                          activeColor: Color(0xffe97d47),
                          onChanged: null)
                    ],
                  ),
                ),
                //if (_watch is! WatchConnectivityGarmin) ...[
                //  Text('Context: $_context'),
                //  //Text('Received contexts: $_receivedContexts'),
                //],
                TextButton(
                  onPressed: initPlatformState,
                  child: const Text(
                    'Refresh',
                    style: TextStyle(color: Color(0xffe97d47)),
                  ),
                ),
                if (_watch is WatchConnectivityGarmin && Platform.isIOS)
                  TextButton(
                    onPressed:
                        (_watch as WatchConnectivityGarmin).showDeviceSelection,
                    child: const Text('Open device selection'),
                  ),
                //const SizedBox(height: 8),
                //const Text('Send'),
                //Row(
                //  mainAxisAlignment: MainAxisAlignment.center,
                //  children: [
                //    TextButton(
                //      onPressed: sendMessage,
                //      child: const Text('Message'),
                //    ),
                //    if (_watch is! WatchConnectivityGarmin) ...[
                //      const SizedBox(width: 8),
                //      TextButton(
                //        onPressed: sendContext,
                //        child: const Text('Context'),
                //      ),
                //    ],
                //  ],
                //),
                Container(
                  child: TextButton(
                    onPressed: signUserIn,
                    child: Text(
                      'Log In',
                      style: TextStyle(color: Color(0xffe97d47)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),

                const SizedBox(width: 16),
                //const Text('Log'),
                //..._log.reversed.map(Text.new),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void sendMessage() {
    final message = {'bpm': '$heartRate'};
    _watch.sendMessage(message);
    setState(() => _log.add('Sent message: $message'));
  }

  void sendContext() {
    _count++;
    final context = {'data': _count};
    _watch.updateApplicationContext(context);
    setState(() => _log.add('Sent context: $context'));
  }

  void toggleBackgroundMessaging() {
    if (timer == null) {
      timer = Timer.periodic(const Duration(seconds: 1), (_) => sendMessage());
    } else {
      timer?.cancel();
      timer = null;
    }
    setState(() {});
  }
}

*/
