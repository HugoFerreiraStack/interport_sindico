import 'package:flutter/material.dart';
import 'package:interport_sindico/app/shared/model/data.dart';
import 'package:interport_sindico/app/shared/model/firebase_api.dart';
import 'package:interport_sindico/app/shared/model/message.dart';
import 'package:interport_sindico/app/shared/widget/message_widget.dart';

class MessagesWidget extends StatelessWidget {
  final String idUser;

  const MessagesWidget({
    @required this.idUser,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => StreamBuilder<List<Message>>(
        stream: FirebaseApi.getMessages(idUser),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return Center(child: CircularProgressIndicator());
            default:
              if (snapshot.hasError) {
                return buildText('Algo deu errado');
              } else {
                final messages = snapshot.data;

                return messages.isEmpty
                    ? buildText('')
                    : ListView.builder(
                        physics: BouncingScrollPhysics(),
                        reverse: true,
                        itemCount: messages.length,
                        itemBuilder: (context, index) {
                          final message = messages[index];

                          return MessageWidget(
                            message: message,
                            isMe: message.idUser == myId,
                          );
                        },
                      );
              }
          }
        },
      );

  Widget buildText(String text) => Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 24),
        ),
      );
}
