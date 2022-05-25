import 'package:flutter/material.dart';

class ContainerBox extends StatefulWidget {
  final Color color;
  final String title;
  final bool fontlight;
  const ContainerBox({
    Key? key,
    required this.color,
    required this.title,
    required this.fontlight,
  }) : super(key: key);

  @override
  State<ContainerBox> createState() => _ContainerBoxState();
}

class _ContainerBoxState extends State<ContainerBox> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        //duration: const Duration(milliseconds: 0),
        width: size.width * 0.45,
        height: 50,
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(15),
            color: widget.color,
            boxShadow: [
              const BoxShadow(
                color: Colors.white70,
                offset: Offset(-2, -2),
                blurRadius: 5,
                spreadRadius: 1,
              ),
              BoxShadow(
                color: Colors.grey.shade500,
                offset: const Offset(2, 2),
                blurRadius: 5,
                spreadRadius: 1,
              ),
            ]),
        child: Center(
          child: Text(
            widget.title,
            style: widget.fontlight
                ? TextStyle(color: Colors.grey[300])
                : TextStyle(color: Colors.grey[700]),
          ),
        ),
      ),
    );
  }
}
