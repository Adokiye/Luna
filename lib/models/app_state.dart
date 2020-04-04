// lib/models/app_state.dart
import 'dart:convert';
import 'package:meta/meta.dart';
import 'package:luno/models/models.dart';

@immutable
class AppState {
  final List<LaundryModel> item;

  const AppState({
    @required this.item,
  });
    AppState.initialState()
  : item = List.unmodifiable(<LaundryModel>[]);

  dynamic toJson() => {
        'item': item,
      };

  @override
  String toString() {
    return 'AppState: ${JsonEncoder.withIndent('  ').convert(this)}';
  }
}