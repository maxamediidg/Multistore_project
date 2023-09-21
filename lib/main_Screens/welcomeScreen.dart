import 'package:flutter/material.dart';
import 'package:multistore/main_Screens/dashboard.dart';
import 'package:multistore/widgets/yellow_button.dart';

class welcomeScreen extends StatefulWidget {
  const welcomeScreen({super.key});

  @override
  State<welcomeScreen> createState() => _welcomeScreenState();
}

class _welcomeScreenState extends State<welcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/inapp/bgimage.jpg'),
                  fit: BoxFit.cover)),
          constraints: const BoxConstraints.expand(),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  'WELCOME',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                const SizedBox(
                  height: 120,
                  width: 200,
                  child: Image(image: AssetImage('images/inapp/logo.jpg')),
                ),
                const Text(
                  'Shop',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                              color: Colors.white38,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50),
                                bottomLeft: Radius.circular(50),
                              )),
                          child: const Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              'suppliers only',
                              style: TextStyle(
                                  color: Colors.yellowAccent,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                height: 60,
                                width: MediaQuery.of(context).size.width * 0.9,
                                decoration: const BoxDecoration(
                                    color: Colors.white38,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(50),
                                      bottomLeft: Radius.circular(50),
                                    )),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Image(
                                        image: AssetImage(
                                            'images/inapp/logo.jpg')),
                                    yellowButton(
                                        label: 'Log In',
                                        onpressed: () {},
                                        width: 0.25),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 8),
                                      child: yellowButton(
                                          label: 'Sign Up',
                                          onpressed: () {},
                                          width: 0.25),
                                    )
                                  ],
                                )),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: const BoxDecoration(
                        color: Colors.white38,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: yellowButton(
                              label: 'Log In', onpressed: () {}, width: 0.25),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: yellowButton(
                              label: 'Sign Up', onpressed: () {}, width: 0.25),
                        ),
                        const Image(image: AssetImage('images/inapp/logo.jpg')),
                      ],
                    )),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white38,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GoogleFacebookLogin(
                          label: 'Google',
                          onpressed: () {},
                          child: const Image(
                              image: AssetImage('images/inapp/google.jpg')),
                        ),
                        GoogleFacebookLogin(
                          label: 'Google',
                          onpressed: () {},
                          child: const Image(
                              image: AssetImage('images/inapp/facebook.jpg')),
                        ),
                        GoogleFacebookLogin(
                            label: 'guest',
                            onpressed: () {},
                            child: const Icon(
                              Icons.person,
                              size: 55,
                              color: Colors.lightBlueAccent,
                            ))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class GoogleFacebookLogin extends StatelessWidget {
  final String label;
  final Function() onpressed;
  final Widget child;

  const GoogleFacebookLogin(
      {super.key,
      required this.child,
      required this.label,
      required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        onTap: onpressed,
        child: Column(
          children: [
            SizedBox(
              height: 50,
              width: 50,
              child: child,
            ),
            Text(
              label,
              style: const TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}