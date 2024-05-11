import 'package:flutter/material.dart';
import 'package:up_care_v1/screens/chat_screen/specific_chat.dart';

class ChatScreenView extends StatelessWidget {
  const ChatScreenView({super.key});
  static const routeName = "chat_screen";

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xffFAF9F6),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: const Color(0xff64B3FF),
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
      ),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
           Padding(
            padding: const EdgeInsets.only(top: 60,right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: (){
                  Navigator.pop(context);
                }, icon: const Icon(Icons.arrow_back_ios_new)),
                const Text("Chats",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                const SizedBox(width: 210,),
                const Icon(Icons.search_rounded,weight:40 ,size: 28,)
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (_,index)=>
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, ChatScreen.routeName);
                    },
                    child: Container(
                      margin: const EdgeInsets.only(left: 16,right: 12,top: 16),
                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              offset: Offset.zero,
                              blurRadius: 10.0,
                              spreadRadius: 0.0,
                            )
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Dr Pegang Globe",style: TextStyle(fontSize: 15),),
                              Text("5:00 PM",style: TextStyle(fontSize: 15),),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Text("goodbye doctor",style: TextStyle(fontSize: 14,color: Colors.grey),),
                        ],
                      ),
                    ),
                  ),
            ),
          )
        ],
      ),
    );
  }
}
