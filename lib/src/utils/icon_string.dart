import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  'add_alert': Icons.add_alert,
  'accessibility': Icons.accessibility,
  'folder_open': Icons.folder_open,
  'count': Icons.timer,
  'mio': Icons.audiotrack,
  'dona': Icons.donut_large,
  'input': Icons.input,
  'slider': Icons.slideshow_outlined,
  'list': Icons.tune
};

Icon getIcon(String nombreIcon) {
  return Icon(
    _icons[nombreIcon],
    color: Colors.blue,
  );
}
