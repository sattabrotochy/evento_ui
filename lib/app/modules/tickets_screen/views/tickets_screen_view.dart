import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/tickets_screen_controller.dart';

class TicketsScreenView extends GetView<TicketsScreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TicketsScreenView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'TicketsScreenView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
