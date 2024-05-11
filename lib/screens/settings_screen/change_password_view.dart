
import 'package:flutter/material.dart';
import 'package:up_care_v1/screens/register_screen/widgets/custom_material_button.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});
  static const routeName = "change_pass";

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {


  TextEditingController oldPassController = TextEditingController();
  TextEditingController newPassController = TextEditingController();
  TextEditingController confirmNewPassController = TextEditingController();

  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Container(
                height: 300,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/images/change-password-image.png"))
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60,),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: IconButton(onPressed: (){
                      Navigator.pop(context);
                    },
                        icon: const Icon(Icons.arrow_back_ios,color: Colors.black,size: 30,weight: 100,)),
                  ),
                  const SizedBox(width: 30,),
                  const Text("Change Password",style: TextStyle(
                      color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold
                  ),)
                ],
              ),
            ),
            Form(
                key: formKey,
                child:
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 390,left: 22,right: 22),
                      child:  TextFormField(
                        controller:oldPassController ,
                        decoration: const InputDecoration(
                            hintText: "Old password",
                            hintStyle: TextStyle(color: Color(0xff707070)),
                            focusedBorder:UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xff64B3FF))
                            )
                        ),
                        validator:(value) {
                          if (value == null || value
                              .trim()
                              .isEmpty) {
                            return "You must enter this field";
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Container(
                      padding: const EdgeInsets.only(left: 22,right: 22),
                      child:  TextFormField(
                        controller:newPassController ,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                            hintText: "New password",
                            hintStyle: TextStyle(color: Color(0xff707070)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xff64B3FF))
                            )
                        ),
                        validator: (value) {
                          if (value == null || value
                              .trim()
                              .isEmpty) {
                            return "You must enter this field";
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Container(
                      padding: const EdgeInsets.only(left: 22,right: 22),
                      child:  TextFormField(
                        controller:confirmNewPassController ,
                        decoration: const InputDecoration(
                            hintText: "Confirm new password",
                            hintStyle: TextStyle(color: Color(0xff707070)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xff64B3FF))
                            )
                        ),
                        validator: (value) {
                          if (value == null || value
                              .trim()
                              .isEmpty) {
                            return "You must enter this field";
                          }
                          if (value != newPassController.text) {
                            return "Password doesn't match";
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(height: 70,),
                    MaterialButton(
                      onPressed: () {
                        if(formKey.currentState!.validate()){}
                      },
                      child: const CustomMaterialButton(title: "Change",),
                    ),
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}
