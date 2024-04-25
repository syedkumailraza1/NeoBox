library neobox;
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NeoBox extends StatefulWidget {
  final Widget? child;
  final double?  width, height;
  final Color? color;
  final BorderRadius? borderRadius;
  final double blurRadius;
   NeoBox({super.key, required this.child,this.color,this.height,this.width,this.borderRadius,required this.blurRadius});

  @override
  State<NeoBox> createState() => _NeoBoxState();
}

class _NeoBoxState extends State<NeoBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
        borderRadius: widget.borderRadius,
        color: widget.color,
        boxShadow: [
            //darker shadow at  bottom right
            BoxShadow(
              color: Colors.grey.shade500,
              blurRadius: widget.blurRadius,
              offset: const Offset(4, 4)
            ),

            //lighter shadow at  top left
            BoxShadow(
              color: Colors.white,
              blurRadius: widget.blurRadius,
              offset: const Offset(-4, -4)
            )
          
        ]
      ),
      padding: EdgeInsets.all(20),
      child: widget.child,
    );
  }
}