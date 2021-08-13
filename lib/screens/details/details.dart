import 'package:agenda_contato/models/contact.dart';
import 'package:agenda_contato/screens/details/widgets/my_icon_button.dart';
import 'package:agenda_contato/screens/details/widgets/my_themed_icon.dart';
import 'package:flutter/material.dart';

import '../../style.dart';

class Details extends StatelessWidget {
  final Contact _contact;

  Details(this._contact);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.only(
              right: 20,
            ),
            child: Icon(this._contact.isFavorite ? Icons.star : Icons.star_outline),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.edit),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              this._contact.photo,
              fit: BoxFit.fill,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(16, 20, 0, 10),
              child: Text(
                this._contact.name,
                style: TextStyle(
                  fontSize: 24,
                  color: grayTheme
                ),
              ),
            ),
            Divider(),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 5,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyIconButton(
                    icon: Icons.phone_outlined,
                    text: "Ligar",
                  ),
                  MyIconButton(
                    icon: Icons.message_outlined,
                    text: "Mensagem SMS",
                  ),
                  MyIconButton(
                    icon: Icons.videocam_outlined,
                    text: "Vídeo",
                  ),
                  MyIconButton(
                    icon: Icons.email_outlined,
                    text: "Enviar E-mail",
                  ),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 5,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            MyThemedIcon(icon: Icons.phone_outlined),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  this._contact.phoneNumber,
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: grayTheme
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Celular",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: grayTheme
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            MyThemedIcon(icon: Icons.videocam),
                            SizedBox(
                              width: 15,
                            ),
                            MyThemedIcon(icon: Icons.message_outlined)
                          ],
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  Row(
                    children: [
                      MyThemedIcon(icon: Icons.email_outlined),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        this._contact.email,
                        style: TextStyle(
                          fontSize: 10,
                          color: grayTheme,
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}