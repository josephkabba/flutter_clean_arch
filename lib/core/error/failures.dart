// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final List properties;
  const Failure([this.properties = const <dynamic>[]]);
}

/// Genral failures

class CacheFailure extends Failure {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class ServerFailure extends Failure {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}