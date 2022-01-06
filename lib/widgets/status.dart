import 'package:chat_app/models/Message.dart';
import 'package:flutter/material.dart';

class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.red,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              left: 15.0,
              top: 12.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage(currentUser.imageUrl),
                  child: Container(
                      //color: Theme.of(context).primaryColor,
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      margin: EdgeInsets.only(
                        top: 30.0,
                        bottom: 5.0,
                        left: 35.0,
                      ),
                      child: Icon(Icons.add)),
                ),
                SizedBox(
                  width: 15.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "My status",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 19.0,
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      "Tap to add status update",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          //fontSize: 19.0,
                          color: Colors.black45),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 18.0,
              top: 8.0,
            ),
            child: Text(
              "Recent updates",
              style: TextStyle(
                color: Colors.black54,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: chats.length,
                itemBuilder: (BuildContext context, int index) {
                  final Message chat = chats[index];
                  return Container(
                    margin: EdgeInsets.only(
                      top: 3.0,
                      bottom: 3.0,
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
                      left: 18.0,
                      //right: 5.0,
                    ),
                    child: Row(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 30.0,
                          backgroundImage: AssetImage(chat.sender.imageUrl),
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Text(
                          chat.sender.name,
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () {},
        child: Icon(
          Icons.camera_enhance,
          color: Colors.white,
        ),
      ),
      /*persistentFooterButtons: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton(
              backgroundColor: Theme.of(context).primaryColor,
              onPressed: () {},
              child: Center(
                child: Icon(
                  Icons.card_membership,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            FloatingActionButton(
              backgroundColor: Theme.of(context).primaryColor,
              onPressed: () {},
              child: Icon(
                Icons.message_sharp,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],*/
    );
  }
}
