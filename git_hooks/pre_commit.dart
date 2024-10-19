import 'dart:io';

import 'package:dart_pre_commit/dart_pre_commit.dart';

void main() async {
  await _preCommit();
}

Future<bool> _preCommit() async {
  // Run dart_pre_commit package function to auto run various flutter commands
  await DartPreCommit.run();

  // final result = await DartPreCommit.run();

  // if (result.isSuccess) {
  //   exit(0);
  // }

  // exit(1);

  exit(0);
}
