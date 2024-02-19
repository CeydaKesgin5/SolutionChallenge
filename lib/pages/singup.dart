import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp ({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.white,
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
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      titleText(),
                      customSizedBox(),
                      emailTextField(),
                      customSizedBox(),
                      passwordTextField(),
                      customSizedBox(),
                      signInButton(),
                      customSizedBox(),
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
      child: Text(
        "Şifremi Unuttum",
        style: TextStyle(fontSize: 20, color: Colors.pink),
      ),
    ),
  );
}

Center signInButton() {
  return Center(
    child: TextButton(
      onPressed: () {},
      child: Text(
        "Giriş Yap",
        style: TextStyle(fontSize: 30, color: Colors.green),
      ),
    ),
  );
}

Text titleText() {
  return Text(
    "Merhaba, \nHosgeldin",
    style: TextStyle(
        color: Colors.grey.shade600, fontSize: 30, fontWeight: FontWeight.bold),
  );
}

Widget customSizedBox() => SizedBox(
  height: 20,
);
InputDecoration customInputDecoration(String hintText){
  return InputDecoration(hintText: hintText,
    hintStyle: TextStyle(color: Colors.grey.shade900),
    enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.grey.shade900,
        )),

    focusedBorder: UnderlineInputBorder(
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