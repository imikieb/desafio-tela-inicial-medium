import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String label;
  final Widget iconWidget;

  const PrimaryButton({
    super.key,
    required this.label,
    required this.iconWidget,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: () => print('tapped!'),
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          overlayColor: MaterialStateProperty.all<Color>(
            Theme.of(context).splashColor,
          ),
          shadowColor: MaterialStateProperty.all<Color>(Colors.transparent),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
              side: const BorderSide(color: Colors.black),
            ),
          ),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: 20,
                padding: const EdgeInsets.only(left: 4),
                child: iconWidget,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                label,
                style: const TextStyle(fontWeight: FontWeight.normal),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
