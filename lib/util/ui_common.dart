import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

Observer observer({required Widget child}) {
  return Observer(builder: (_) => child);
}
