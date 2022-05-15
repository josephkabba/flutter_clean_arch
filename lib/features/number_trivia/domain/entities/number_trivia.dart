// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:equatable/equatable.dart';

class NumberTrivia extends Equatable {
  final String text;
  final int number;

  const NumberTrivia({required this.text, required this.number});

  @override
  List<Object?> get props => [text, number];
}
