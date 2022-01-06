import 'package:chat_app/models/Message.dart';
import 'package:chat_app/models/User.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  final User user;
  ChatScreen({this.user});
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  _buildMessegeComposer() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.0,
      ),
      height: 70.0,
      color: Colors.white,
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.emoji_emotions_outlined,
                    color: Colors.black45,
                    size: 30.0,
                  ),
                  onPressed: () {},
                ),
                Expanded(
                  child: TextField(
                    textCapitalization: TextCapitalization.sentences,
                    /* onChanged: (value) {
                      setState(() {
                        messages.add(
                          Message(
                            sender: james,
                            time: '5:30 PM',
                            text: value,
                            isLiked: true,
                            unread: true,
                          ),
                          /*currentUser,
                          "5:30 PM",
                          "Just walked my doge. She was super duper cute. The best pupper!!",
                          false,
                          true,*/
                        );
                      });
                    },*/
                    decoration: InputDecoration.collapsed(
                      //enabled: false,

                      hintText: "Message",
                    ),
                    onSubmitted: (value) {
                      setState(() {
                        messages.add(
                          Message(
                            sender: james,
                            time: "6.00PM",
                            text: value,
                            isLiked: true,
                            unread: true,
                          ),
                          /*currentUser,
                          "5:30 PM",
                          "Just walked my doge. She was super duper cute. The best pupper!!",
                          false,
                          true,*/
                        );
                      });
                    },
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.attach_file,
                    color: Colors.black45,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.camera_enhance,
                    color: Colors.black45,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Container(
            width: 50.0,
            height: 50.0,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(30.0),
            ),
            alignment: Alignment.center,
            child: Icon(
              Icons.mic,
              size: 30.0,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  _buildMessege(Message message, bool isMe) {
    return Row(
      children: <Widget>[
        Container(
          margin: isMe
              ? EdgeInsets.only(
                  top: 8.0,
                  bottom: 8.0,
                  left: 80.0,
                )
              : EdgeInsets.only(
                  top: 8.0,
                  bottom: 8.0,
                  right: 80.0,
                  left: 20.0,
                ),
          width: MediaQuery.of(context).size.width * 0.75,
          padding: isMe
              ? EdgeInsets.only(
                  left: 100.0,
                  bottom: 15.0,
                  top: 15.0,
                )
              : EdgeInsets.only(
                  left: 5.0,
                  bottom: 15.0,
                  top: 15.0,
                ),
          //color: Colors.amber,
          decoration: BoxDecoration(
            color: isMe ? Colors.greenAccent : Colors.black12,
            borderRadius: isMe
                ? BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    bottomLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0),
                  )
                : BorderRadius.only(
                    bottomRight: Radius.circular(15.0),
                    topRight: Radius.circular(15.0),
                    topLeft: Radius.circular(15.0),
                    bottomLeft: Radius.circular(15.0),
                  ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                message.text,
                style: TextStyle(
                  //color: Colors.black45,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 13.0,
              ),
              Text(
                message.time,
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 28.0,
        toolbarHeight: 80.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            CircleAvatar(
              radius: 25.0,
              backgroundImage: AssetImage(widget.user.imageUrl),
            ),
            SizedBox(
              width: 10.0,
            ),
            Column(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  widget.user.name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "online",
                  style: TextStyle(color: Colors.white70, fontSize: 17.0),
                ),
              ],
            ),
          ],
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.call),
              iconSize: 30.0,
              color: Colors.white,
              onPressed: () {}),
          IconButton(
            icon: Icon(Icons.more_vert),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                child: ClipRRect(
                  child: ListView.builder(
                    reverse: true,
                    padding: EdgeInsets.only(top: 15.0),
                    itemCount: messages.length,
                    itemBuilder: (BuildContext context, int index) {
                      final Message message = messages[index];
                      final bool isMe = message.sender.id == currentUser.id;
                      return _buildMessege(message, isMe);
                    },
                  ),
                ),
              ),
            ),
            _buildMessegeComposer(),
          ],
        ),
      ),
    );
  }
}
