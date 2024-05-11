
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});
  static const routeName = "specific_chat_screen";

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  TextEditingController message = TextEditingController();
  List chat =[];
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
        backgroundColor: const Color(0xffFAF9F6),
        body: Container(
          decoration: const BoxDecoration(color: Color(0xffFAF9F6)),
          child: Column(
            children: [
              Container(
                height: 110,
                padding: const EdgeInsets.only(top: 30,left: 16,right: 10),
                color: Colors.white,
                child:  Row(
                  children: [
                    IconButton(onPressed: (){
                      Navigator.pop(context);
                    }, icon: const Icon(Icons.arrow_back_ios,
                      color:Color(0xff64B3FF) ,
                    )),
                    const SizedBox(width: 25,),
                    const Text("Dr Pegang Globe",style: TextStyle(color:Colors.black,fontSize: 14),),

                  ],
                ),
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: chat.length,
                      itemBuilder: (_,index)=> Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          constraints: const BoxConstraints(minWidth: 100, maxWidth: 320,),
                          margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                          padding: const EdgeInsets.all(12),
                          decoration: const BoxDecoration(color:Color(0xff64B3FF) ,
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)
                              )
                          ),
                          child:  Text(chat[index].toString(),
                            style: const TextStyle(color: Colors.white),),
                        ),
                      ))),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(32),
                        topRight: Radius.circular(20))
                ),
                height: 100,
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: message,
                        decoration: const InputDecoration(
                            hintText: "Type message...",
                            hintStyle: TextStyle(color: Colors.grey,fontSize: 14),
                            suffixIcon: Icon(Icons.attachment_outlined,color:Colors.grey ,size: 20,),
                            filled: true,
                            fillColor: Color(0xffFAF9F6),
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color:Color(0xffFAF9F6) )
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color:Color(0xffFAF9F6) )
                            )
                        ),
                      ),
                    ),
                    const SizedBox(width: 20,),
                    Container(
                      height: 50,width: 50,
                      decoration:  BoxDecoration(color: const Color(0xff64B3FF),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: IconButton(onPressed: (){
                        setState(() {
                          if(message.text != ''){
                            chat.add(message.text);
                          }
                          message.text='';
                        });
                      }, icon: const Icon(Icons.send),
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )


    );
  }
}


