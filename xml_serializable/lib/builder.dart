/// Configuration for using `package:build`-compatible build systems.
///
/// See:
/// * [build_runner](https://pub.dev/packages/build_runner)
///
/// This library is **not** intended to be imported by typical end-users unless
/// you are creating a custom compilation pipeline. See documentation for
/// details, and `build.yaml` for how these builders are configured by default.
library xml_serializable.builder;

import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';
import 'package:xml_serializable/xml_serializable.dart';

/// Supports `package:build_runner` creation and configuration of
/// `xml_serializable`.
///
/// Not meant to be invoked by hand-authored code.
Builder xmlSerializableBuilder(BuilderOptions options) => SharedPartBuilder(
      [XmlSerializableGenerator()],
      'xml_serializable',
    );
