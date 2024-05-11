import 'package:flutter/material.dart';
import 'package:up_care_v1/screens/register_screen/widgets/custom_material_button.dart';
import 'package:up_care_v1/screens/register_screen/widgets/custom_textfield.dart';

class RegisterScreenView extends StatefulWidget {
  const RegisterScreenView({super.key});

  static const routeName = 'register_screen';

  @override
  State<RegisterScreenView> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreenView> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();

  bool isVisiblePass = false;
  bool isVisibleConfirmPass = false;
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
              Padding(
                padding: const EdgeInsets.only(
                  top: 70,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          )),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    const Text(
                      "Create Account",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Form(
                  key: formKey,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 270,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 22.0, vertical: 12),
                        child: CustomTextField(
                          textEditingController: nameController,
                          title: "Name",
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return "You must enter this field";
                            }
                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 22.0, vertical: 12),
                        child: CustomTextField(
                          textEditingController: emailController,
                          title: "Email",
                          input: TextInputType.emailAddress,
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
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 22.0, vertical: 12),
                        child: CustomTextField(
                          textEditingController: phoneController,
                          title: "Phone",
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return "You must enter this field";
                            }

                            return null;
                          },
                          maxLength: 11,
                          input: TextInputType.number,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 22.0, vertical: 12),
                        child: CustomTextField(
                          textEditingController: passController,
                          title: "Password",
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return "You must enter this field";
                            }
                            var reGex = RegExp(
                                r"^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$");
                            if (!reGex.hasMatch(value)) {
                              return "Invalid password";
                            }
                            return null;
                          },
                          obscure: !isVisiblePass,
                          icon: InkWell(
                            onTap: () {
                              isVisiblePass = !isVisiblePass;
                              setState(() {});
                            },
                            child: isVisiblePass == true
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
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 22.0, vertical: 12),
                        child: CustomTextField(
                          textEditingController: confirmPassController,
                          title: "Confirm Password",
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return "You must enter this field";
                            }
                            if (value != passController.text) {
                              return "Password doesn't match";
                            }
                            return null;
                          },
                          obscure: !isVisibleConfirmPass,
                          icon: InkWell(
                            onTap: () {
                              isVisibleConfirmPass = !isVisibleConfirmPass;
                              setState(() {});
                            },
                            child: !isVisibleConfirmPass == true
                                ? const Icon(
                                    Icons.visibility_off_outlined,
                                    size: 28,
                                    color: Color(0xff64B3FF),
                                  )
                                : const Icon(
                                    Icons.remove_red_eye_outlined,
                                    size: 28,
                                    color: Color(0xff64B3FF),
                                  ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      MaterialButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {}
                          },
                          child: const CustomMaterialButton(
                            title: "Create Account",
                          )),
                    ],
                  )),
            ],
          ),
        ));
  }
}
