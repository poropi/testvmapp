import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:testvmapp/application/MyApp.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}
