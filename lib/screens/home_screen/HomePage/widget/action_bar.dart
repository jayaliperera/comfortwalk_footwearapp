import 'package:flutter/material.dart';

class CustomActionBar extends StatelessWidget {
  const CustomActionBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
            backgroundColor: Colors.orange,
            child: IconButton(onPressed: () {}, icon: const Icon(Icons.menu))),
        CircleAvatar(
          backgroundColor: Colors.orange,
          child: IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        )
      ],
    );
  }
}
