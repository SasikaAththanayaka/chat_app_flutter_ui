import 'package:chat_app/models/Message.dart';
import 'package:chat_app/models/User.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Call {
  final User caller;
  final String time;
  final Icon callType;
  final Icon type;

  Call(
    this.caller,
    this.time,
    this.callType,
    this.type,
  );
}

List<Call> calls = [
  Call(
    john,
    "1:00 PM",
    Icon(
      Icons.call_received,
      color: Colors.green,
    ),
    Icon(
      Icons.call,
      color: Colors.green,
    ),
  ),
  Call(
    olivia,
    "1:30 PM",
    Icon(
      Icons.call_received,
      color: Colors.red,
    ),
    Icon(Icons.video_call, color: Colors.blue),
  ),
  Call(
    steven,
    "2:00 PM",
    Icon(
      Icons.call_made,
      color: Colors.green,
    ),
    Icon(
      Icons.call,
      color: Colors.blue,
    ),
  ),
  Call(
    sam,
    "2:00 PM",
    Icon(
      Icons.call_made,
      color: Colors.green,
    ),
    Icon(
      Icons.call_received,
      color: Colors.blue,
    ),
  ),
  Call(
    sophia,
    "2:00 PM",
    Icon(
      Icons.call_received,
      color: Colors.green,
    ),
    Icon(
      Icons.call,
      color: Colors.blue,
    ),
  ),
];
