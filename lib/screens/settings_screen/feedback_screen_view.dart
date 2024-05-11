import 'package:flutter/material.dart';

import '../register_screen/widgets/custom_material_button.dart';

class FeedbackScreenView extends StatefulWidget {
  const FeedbackScreenView({super.key});

  static const String routName = 'FeedbackScreen';

  @override
  State<FeedbackScreenView> createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading:   IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),),
          title: const Text(
            'Feedback',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          )),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * .25,
                    child: Image.asset("assets/images/feedback-image.png")),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'Share your feedback',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.lightBlue,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 50,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 50,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 50,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 50,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 50,
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    "Your Comments",
                    textAlign: TextAlign.left,
                    style:
                        TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: MediaQuery.of(context).viewInsets,
                  child: TextFormField(
                    maxLines: 4,
                    decoration: InputDecoration(
                      enabledBorder:  OutlineInputBorder(
                        borderSide: const BorderSide(color:  Color(0xFF62B1FB)),
                        borderRadius: BorderRadius.circular(10),
                      ),

                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color:  Color(0xFF62B1FB)),
                        borderRadius: BorderRadius.circular(10),
                      ),


                    ),
                  ),
                ),
                const SizedBox(
                  height: 130,
                ),
                MaterialButton(
                  onPressed: () {

                  },
                  child: const CustomMaterialButton(title: "Send",),
                ),
              ]),
        ),
      ),
    );
  }
}
