import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login ({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.grey.shade50,
        appBar: AppBar(
          backgroundColor: Colors.teal,
        ),
        body: Center(
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start, //hizalamayı bozmamak için
              children: [
                customSizedBox(),
                customSizedBox(),
                customSizedBox(),
                customSizedBox(),
                customSizedBox(),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      titleText(),
                      customSizedBox(),
                      emailTextField(),
                      customSizedBox(),
                      passwordTextField(),
                      customSizedBox(),
                      Center(
                        child: TextButton(
                            onPressed: () {
                      Navigator.pushNamed( context, '/events');
                      },
                          child: const Text(
                            "Giriş Yap",
                            style:  TextStyle(fontSize: 20, color: Colors.green),
                          ),
                        ),
                      ),
                      Center(
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushNamed( context, '/signup');
                          },
                          child: const Text(
                            "Hesap oluştur",
                            style:  TextStyle(fontSize: 20, color: Colors.green),
                          ),
                        ),
                      ),
                      // customSizedBox(),
                    ],
                  ),
                )
              ],
            )));
  }
}

Center forgotPasswordButton() {
  return Center(
    child: TextButton(
      onPressed: () {},
      child: const Text(
        "Şifremi Unuttum",
        style: TextStyle(fontSize: 20, color: Colors.pink),
      ),
    ),
  );
}


Text titleText() {
  return  Text(
    "Merhaba, \nHosgeldin",
    style: TextStyle(
        color: Colors.grey.shade700, fontSize: 30, fontWeight: FontWeight.bold),
  );
}

Widget customSizedBox() => const SizedBox(
  height: 20,
);
InputDecoration customInputDecoration(String hintText){
  return InputDecoration(hintText: hintText,
    hintStyle:  TextStyle(color: Colors.grey.shade600),
    enabledBorder:  UnderlineInputBorder(
        borderSide:  BorderSide(
          color: Colors.grey.shade600,
        )),

    focusedBorder: const UnderlineInputBorder(
      borderSide: BorderSide(
        color: Colors.grey,
      ),
    ),

  );
}

TextFormField passwordTextField() {
  return TextFormField(
    decoration: customInputDecoration("Şifre"),
  );
}

TextFormField emailTextField() {
  return TextFormField(
    decoration: customInputDecoration("Email"),
  );
}

Center signUpButton() {
  return Center(
    child: TextButton(
      onPressed: () {

      },
      child: Text(
        "Hesap Oluştur",
        style: TextStyle(fontSize: 20, color: Colors.green.shade500),
      ),
    ),
  );
}
