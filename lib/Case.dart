
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Case extends StatefulWidget {
  const Case({
    super.key,
    required this.value,
    required this.boxSize,
    required this.isSelected
  });

  final String value;
  final double boxSize;
  final bool isSelected;

  @override
  State<Case> createState() => _CaseState();
}

class _CaseState extends State<Case> {



  @override
  Widget build(BuildContext context) {
    return
      Container(
          width: widget.boxSize,
          height: widget.boxSize,
          decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 0.3),
            color: widget.isSelected ?
            Colors.blueAccent.shade100.withAlpha(100) :
            Colors.transparent,),
          child:
          Center(
              child: widget.value == "0" ?
              const Text(
                  ""
              )
                  :
              Text(
                  widget.value
              )

          )

      );
  }
}



