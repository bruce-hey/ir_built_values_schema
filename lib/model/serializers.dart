import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_collection/built_collection.dart';
import 'data_model.dart';

part 'serializers.g.dart';

@SerializersFor([
  Module,
  Page,
  ImageComponent,
  TextComponent,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
