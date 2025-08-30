import 'package:flutter/material.dart';

class CreateUpdateTaskPage extends StatefulWidget {
  const CreateUpdateTaskPage({super.key, required this.appbarTitle});

  final String appbarTitle;

  @override
  State<CreateUpdateTaskPage> createState() => _CreateUpdateTaskPageState();
}

class _CreateUpdateTaskPageState extends State<CreateUpdateTaskPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text(widget.appbarTitle), centerTitle: true),
        body: SingleChildScrollView(child: Column(children: [])),
      ),
    );
  }
}
