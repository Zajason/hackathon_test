import 'dart:js';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:flutter/material.dart';

final channel = WebSocketChannel.connect(
  Uri.parse('wss://echo.websocket.events'),
);
final streamBuilder = StreamBuilder(stream: channel.stream, builder: (context,snapshot){
  return Text(snapshot.hasData ? '${snapshot.data}' : ' ');
});
