import 'package:flutter/material.dart';
import 'package:up_care_v1/screens/register_screen/widgets/custom_material_button.dart';

class PaymentScreenView extends StatelessWidget {
  const PaymentScreenView({super.key});
  static const routeName = "payment";

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xffFAF9F6),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 40),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: const Icon(Icons.arrow_back_ios_new)),
                  const SizedBox(width: 10,),
                  const Text("Payment",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),

                ],
              ),
              const SizedBox(height: 60,),
              const Text("Name on card",

                style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),),
              const SizedBox(height: 15,),
              TextFormField(
                decoration: InputDecoration(
                  fillColor: const Color(0xFFE9E9E9),
                  filled: true,
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent)
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  )
                ),
              ),
              const SizedBox(height: 40,),
              const Text("Card number",

                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),),
              const SizedBox(height: 15,),
              TextFormField(
                decoration: InputDecoration(
                    fillColor: const Color(0xFFE9E9E9),
                    filled: true,
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent)
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    )
                ),
              ),
              const SizedBox(height: 40,),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Exp date",

                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),),
                          const SizedBox(height: 15,),
                          TextFormField(
                            decoration: InputDecoration(
                                fillColor: const Color(0xFFE9E9E9),
                                filled: true,
                                enabledBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.transparent)
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                )
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("CVV",

                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),),
                          const SizedBox(height: 15,),
                          TextFormField(
                            decoration: InputDecoration(
                                fillColor: const Color(0xFFE9E9E9),
                                filled: true,
                                enabledBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.transparent)
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                )
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40,),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Total price",

                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),),
                    Text("400 L.E",

                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),),
                  ],
                ),
              ),
              const SizedBox(height: 70,),
              const CustomMaterialButton(title: "Check out"),
            ],
          ),
        ),
      ),
    );
  }
}
