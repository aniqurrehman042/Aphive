import 'package:aphive/theme/assets.dart';
import 'package:flutter/material.dart';

class AphiveCheckbox extends StatefulWidget {
  AphiveCheckbox({
    this.white = false,
    this.value,
    this.onChanged,
    this.size,
  });

  final bool white;
  final bool value;
  final void Function(bool) onChanged;
  final double size;

  @override
  _AphiveCheckboxState createState() => _AphiveCheckboxState();
}

class _AphiveCheckboxState extends State<AphiveCheckbox> {
  String activeImage;
  String inactiveImage;
  
  @override
  void initState() {
    super.initState();
    
    if(widget.white) {
      activeImage = Assets.checkboxWhiteActive;
      inactiveImage = Assets.checkboxWhiteInactive;
    } else {
      activeImage = Assets.checkboxActive;
      inactiveImage = Assets.checkboxInactive;
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        widget.onChanged(!widget.value);
      },
      child: Image.asset(
        widget.value ? activeImage : inactiveImage,
        width: widget.size * 1.2,
        height: widget.size,
      ),
    );
  }
}
