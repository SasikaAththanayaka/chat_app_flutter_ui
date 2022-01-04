import 'package:chat_app/models/Message.dart';
import 'package:flutter/material.dart';

class RecentChats extends StatefulWidget {
  @override
  _RecentChatsState createState() => _RecentChatsState();
}

class _RecentChatsState extends State<RecentChats> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      //color: Theme.of(context).accentColor,
      child: ListView.builder(
          itemCount: chats.length,
          itemBuilder: (BuildContext context, int index) {
            final Message chat = chats[index];
            return Container(
              margin: EdgeInsets.only(
                top: 5.0,
                bottom: 5.0,
                right: 10.0, /*left: 13.0*/
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
              ),
              padding: EdgeInsets.only(
                left: 10.0,
                //right: 5.0,
              ),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(
                    radius: 35.0,
                    backgroundImage: AssetImage(chat.sender.imageUrl),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        chat.sender.name,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.60,
                        child: Text(
                          chat.text,
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w600,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        chat.time,
                        style: TextStyle(color: Colors.black54),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      chat.unread
                          ? Container(
                              width: 40.0,
                              height: 20.0,
                              decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "NEW",
                                style: TextStyle(color: Colors.white),
                              ),
                            )
                          : Text(""),
                    ],
                  ),
                ],
              ),
            );
          }),
    );
  }
}
