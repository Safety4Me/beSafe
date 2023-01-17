import 'package:flutter/material.dart';

class HomeFloatingActionButtonWidget extends StatelessWidget {
  final Function onPressed;
  const HomeFloatingActionButtonWidget({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          Icons.home,
          color: Theme.of(context).primaryColor,
        ),
      ),
      onPressed: () {
        onPressed();
      },
    );
  }
}
