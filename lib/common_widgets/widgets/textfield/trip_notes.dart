import 'package:flutter/material.dart';

class TripNotesTextField extends StatelessWidget {
  final TextEditingController controller;

  final String? Function(String?)? validator;

  const TripNotesTextField({
    super.key,
    required this.controller,
    required this.validator
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 330,
      child: TextFormField(
        controller: controller,
        maxLines: 4,
        validator: validator,
        decoration: InputDecoration(
          hintText: "Add a notes",
          border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.blue),
              borderRadius: BorderRadius.circular(20)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
              color: Colors.blue,
              width: 1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
              color: Colors.blue,
              width: 0.7,
            ),
          ),
          filled: true,
          fillColor: Colors.white,
        ),
      ),
    );
  }
}
