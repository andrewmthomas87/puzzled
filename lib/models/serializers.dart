import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:puzzled/models/fluid_sort.dart';

part 'serializers.g.dart';

@SerializersFor([FluidSort])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
