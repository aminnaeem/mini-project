import 'package:flutter/material.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Text("Lorem Epsum Sample Text",
        style: TextStyle(
          height: 1.5
        ),
      ),
    );
  }
}