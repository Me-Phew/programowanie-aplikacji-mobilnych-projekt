// ignore_for_file: avoid_print

import 'dart:io';

void main() {
  final commitMessageFile = File('.git/COMMIT_EDITMSG');

  if (!commitMessageFile.existsSync()) {
    print('Commit message file does not exist.');
    exit(1);
  }

  final commitMsg = commitMessageFile.readAsStringSync();
  RegExp conventionCommitPattern = RegExp(
      r'''^(feat|fix|refactor|build|chore|perf|ci|docs|revert|style|test|merge){1}(\([\w\-\.]+\))?(!)?:( )?([\w ])+([\s\S]*)''');

  // Check if it matches conventional commit
  if (conventionCommitPattern.hasMatch(commitMsg)) {
    exit(0);

    // If failed, check if issue is due to invalid tag
  } else if (!RegExp(
          r'(feat|fix|refactor|build|chore|perf|ci|docs|revert|style|test|merge)')
      .hasMatch(commitMsg)) {
    print(
        '🛑 Invalid type used in commit message. It should be one of (feat|fix|refactor|build|chore|perf|ci|docs|revert|style|test|merge)');

    // else refer the dev to conventional commit site
  } else {
    print(
        '🛑 Commit message should follow conventional commit pattern: https://www.conventionalcommits.org/en/v1.0.0/');
  }

  exit(1);
}
