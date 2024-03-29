import 'package:flutter/material.dart';

class SearchField extends StatefulWidget {
  const SearchField({
    Key? key,
    required this.controller,
    required this.text,
    required this.textInputType,
    required this.obscure,
    this.labelText,
    this.suffixIcon,
    this.decoration,
  }) : super(key: key);

  final TextEditingController controller;
  final String text;
  final TextInputType textInputType;
  final bool obscure;
  final Widget? suffixIcon;
  final String? labelText;
  final InputDecoration? decoration;

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight * 0.07,
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 2),
        ],
      ),
      child: Center(
        child: TextFormField(
          decoration: widget.decoration ??
              InputDecoration(
                prefixIcon: widget
                    .suffixIcon, // Set prefixIcon to display icon on the left
                hintText: widget.text,
                labelText: widget.labelText,
                border: InputBorder.none,
              ),
          obscureText: widget.obscure,
          controller: widget.controller,
          keyboardType: widget.textInputType,
          style: TextStyle(
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
