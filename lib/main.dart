import 'dart:io';

import 'package:mason/mason.dart';
import 'package:mason_bug/path_bug_bundle.dart';

void main() async {
  final generator = await MasonGenerator.fromBundle(pathBugBundle);
  await generator.generate(
    DirectoryGeneratorTarget(Directory('out')),
    vars: <String, dynamic>{
      'project_name': 'hello_world',
      'org_name': 'foo.bar.baz',
      'android': true,
    },
  );
}
