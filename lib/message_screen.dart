import 'package:flutter/material.dart';
import 'package:testing/colors.dart';
import 'package:testing/widgets/chat_list.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Secondarycolor,
      appBar: AppBar(
        backgroundColor: Primarycolorlight,
        title: Text(
          'Message',
        ),
        centerTitle: false,
      ),
      body: Column(
        children: [
          const Expanded(
            child: ChatList(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: WidgetColor,
                      hintText: 'Type a message!',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: const BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      contentPadding: const EdgeInsets.all(10),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                      ),
                    ),
                  )

                ),
                IconButton(
                  onPressed: () {
                    // Send message logic here
                  },
                  icon: Icon(Icons.send),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
