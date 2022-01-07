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
    Icon(Icons.phone_callback),
    Icon(Icons.call),
  ),
  Call(
    olivia,
    "1:30 PM",
    Icon(Icons.call_received),
    Icon(Icons.video_call),
  ),
  Call(
    steven,
    "2:00 PM",
    Icon(Icons.call_missed),
    Icon(Icons.call),
  ),
];
