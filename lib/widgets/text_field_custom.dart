import 'package:flutter/material.dart';

Widget textFormCustom(
    String name, bool isPassword, TextEditingController text, IconData icon) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10),
    child: TextFormField(
      validator: (value) => value!.isEmpty ? 'this field is required' : null,
      obscureText: isPassword,
      controller: text,
      decoration: InputDecoration(
          suffixIcon: Icon(icon),
          label: Text(name),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
    ),
  );
}
