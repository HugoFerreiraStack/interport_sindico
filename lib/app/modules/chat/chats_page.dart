import 'package:flutter/material.dart';
import 'package:interport_sindico/app/shared/model/firebase_api.dart';
import 'package:interport_sindico/app/shared/model/user.dart';
import 'package:interport_sindico/app/shared/widget/chat_body_widget.dart';
import 'package:interport_sindico/app/shared/widget/chat_header_widget.dart';

class ChatsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: StreamBuilder<List<User>>(
            stream: FirebaseApi.getUsers(),
            builder: (context, snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.waiting:
                  return Center(child: CircularProgressIndicator());
                default:
                  if (snapshot.hasError) {
                    print(snapshot.error);
                    return buildText('Algo deu errado, tente novamente');
                  } else {
                    final users = snapshot.data;

                    if (users.isEmpty) {
                      return buildText('Sem usuarios encontrados');
                    } else
                      return Column(
                        children: [
                          ChatHeaderWidget(users: users),
                          ChatBodyWidget(users: users)
                        ],
                      );
                  }
              }
            },
          ),
        ),
      );

  Widget buildText(String text) => Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      );
}
