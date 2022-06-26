import 'package:flutter/material.dart';

import '../../constants/strings.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: SizedBox(
              width: deviceSize.width,
              height: deviceSize.height,
              child: Image.asset(
                Strings.splashImage,
                fit: BoxFit.cover,
                color: const Color.fromRGBO(255, 127, 80, 0.6),
                colorBlendMode: BlendMode.multiply,
              ),
            ),
          ),
          SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: SizedBox(
              width: deviceSize.width,
              height: deviceSize.height,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: deviceSize.height * 0.15,
                  ),
                  Flexible(
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      child: const Text(
                        Strings.appTitle,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: Strings.yesteryearFont,
                            fontSize: 80),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: deviceSize.width > 600 ? 2 : 1,
                    // Тут идёт карточка логина
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      elevation: 8,
                      child: Container(
                        height: 320,
                        width: deviceSize.width * 0.75,
                        padding: const EdgeInsets.all(16),
                        child: Form(
                          child: SingleChildScrollView(
                            physics: const NeverScrollableScrollPhysics(),
                            child: Column(
                              children: [
                                TextFormField(
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: const InputDecoration(
                                    label: Text(Strings.emailAuth),
                                    labelStyle: TextStyle(
                                        fontFamily: Strings.montserratFont),
                                  ),
                                ),
                                TextFormField(
                                  obscureText: true,
                                  obscuringCharacter: '⬤',
                                  keyboardType: TextInputType.visiblePassword,
                                  decoration: const InputDecoration(
                                    label: Text(Strings.passAuth),
                                    labelStyle: TextStyle(
                                        fontFamily: Strings.montserratFont),
                                  ),
                                ),
                                TextFormField(
                                  obscureText: true,
                                  obscuringCharacter: '⬤',
                                  keyboardType: TextInputType.visiblePassword,
                                  decoration: const InputDecoration(
                                    label: Text(Strings.repeatPassAuth),
                                    labelStyle: TextStyle(
                                        fontFamily: Strings.montserratFont),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                ElevatedButton(
                                  child: const Text(
                                    Strings.signUpAuth,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: Strings.montserratFont,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  onPressed: () {},
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    Strings.loginAuth,
                                    style: TextStyle(
                                      fontFamily: Strings.montserratFont,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
