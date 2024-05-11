import 'package:flutter/material.dart';
import 'package:up_care_v1/screens/home_screen/home_layout.dart';
import 'package:up_care_v1/screens/register_screen/register_screen_view.dart';
import 'package:up_care_v1/screens/register_screen/widgets/custom_material_button.dart';

class LoginScreenView extends StatefulWidget {
  const LoginScreenView({super.key});

  static const routeName = 'login_screen';

  @override
  State<LoginScreenView> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreenView> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  bool isVisible = false;
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F7),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 300,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/images/background.png"))),
            ),
            Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  const Text(
                    "login",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 180,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(22.0),
                    child: TextFormField(
                      controller: emailController,
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return "You must enter this field";
                        }
                        var regex = RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
                        if (!regex.hasMatch(value)) {
                          return "Invalid email address";
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                          hintText: "Email",
                          hintStyle: TextStyle(color: Color(0xff707070)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Color(0xff64B3FF)))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22.0,vertical: 10),
                    child: TextFormField(
                      controller: passController,
                      obscureText: !isVisible,
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return "You must enter this field";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          suffixIcon: InkWell(
                            onTap: () {
                              isVisible = !isVisible;
                              setState(() {});
                            },
                            child: isVisible == true
                                ? const Icon(
                                    Icons.remove_red_eye_outlined,
                                    size: 28,
                                    color: Color(0xff64B3FF),
                                  )
                                : const Icon(
                                    Icons.visibility_off_outlined,
                                    size: 28,
                                    color: Color(0xff64B3FF),
                                  ),
                          ),
                          hintText: "Password",
                          hintStyle: const TextStyle(color: Color(0xff707070)),
                          focusedBorder: const UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Color(0xff64B3FF)))),
                    ),
                  ),

                  const SizedBox(
                    height: 80,
                  ),
                  MaterialButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.pushNamed(context, HomeLayout.routeName);
                      }
                    },
                    child: const CustomMaterialButton(title: "Login"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account?",
                        style:
                            TextStyle(color: Color(0xff707070), fontSize: 15),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              context, RegisterScreenView.routeName);
                        },
                        child: const Text(
                          "Create account",
                          style: TextStyle(
                              color: Color(0xff707070),
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
