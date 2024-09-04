import 'package:flew_final/pages/chat_data.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  ChatPageState createState() => ChatPageState();
}

class ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    List<String> chatMessages = ChatData().messages();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        title: const Text('Chat'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text("Chat Page"),
            Expanded(
              child: ListView.builder(
                  itemCount: chatMessages.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(
                        chatMessages[index],
                        textAlign:
                            index % 2 == 0 ? TextAlign.left : TextAlign.right,
                      ),
                      subtitle: Text(
                        'Description $index',
                        textAlign:
                            index % 2 == 0 ? TextAlign.left : TextAlign.right,
                      ),
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Expanded(
                    flex: 4,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter your message',
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconButton(
                      onPressed: () {
                        // Add message to chat
                      },
                      // child: const Text('Send'),
                      icon: const Image(
                        image: AssetImage('assets/images/flew_logo.png'),
                        // size: 40,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
