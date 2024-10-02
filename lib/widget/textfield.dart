import 'package:flutter/material.dart';

class Textfield extends StatefulWidget {
  TextEditingController Controller = TextEditingController();
  String? label, hint;

  Textfield({super.key, required this.Controller});

  @override
  State<Textfield> createState() => _TextfieldState();
}

class _TextfieldState extends State<Textfield> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      // height: 200,
      child: TextFormField(
        controller: widget.Controller,
        decoration: InputDecoration(
          hintText: widget.hint,
          labelText: widget.label,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
      ),
    );
  }
}