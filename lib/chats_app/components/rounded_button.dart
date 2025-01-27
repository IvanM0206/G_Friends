import 'package:flutter/material.dart';

class RoundedButton extends StatefulWidget {

  final String text;
  final Color color;
  final Function() onPressed;

  const RoundedButton({super.key, required this.text, required this.color, required this.onPressed});

  @override
  State<RoundedButton> createState() => _RoundedButtonState();
}

class _RoundedButtonState extends State<RoundedButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: widget.color,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: widget.onPressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            widget.text,
          ),
        ),
      ),
    );
  }
}
