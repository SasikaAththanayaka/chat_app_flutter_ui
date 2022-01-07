import 'package:chat_app/models/Call.dart';
import 'package:flutter/material.dart';

class Call extends StatefulWidget {
  @override
  _CallState createState() => _CallState();
}

class _CallState extends State<Call> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        //color: Theme.of(context).accentColor,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: ListView.builder(
              reverse: false,
              itemCount: calls.length,
              itemBuilder: (BuildContext context, int index) {
                final call = calls[index];
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
                    left: 20.0,
                    //right: 5.0,
                  ),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 30.0,
                        backgroundImage: AssetImage(call.caller.imageUrl),
                      ),
                      SizedBox(
                        width: 30.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            call.caller.name,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            call.time,
                            style: TextStyle(color: Colors.black54),
                          ),
                          call.callType,
                        ],
                      ),
                      SizedBox(
                        width: 205.0,
                      ),
                      call.type,
                    ],
                  ),
                );
              }),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () {},
        child: Icon(
          Icons.phone,
          color: Colors.white,
        ),
      ),
    );
  }
}
