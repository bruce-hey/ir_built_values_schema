import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'serializers.dart';
import 'dart:convert';

part 'data_model.g.dart';

abstract class Module implements Built<Module, ModuleBuilder> {
  // construction
  Module._();
  factory Module([Function(ModuleBuilder) updates]) = _$Module;

  // fields
  String? get author;
  String get moduleId;
  String? get name;
  String? get title;
  double get height;
  double get width;
  BuiltList<Page> get pages;

  // serialization
  static Serializer<Module> get serializer => _$moduleSerializer;
  String toJson() {
    return json.encode(serializers.serializeWith(Module.serializer, this));
  }
  static Module? fromJson(String jsonString) {
    return serializers.deserializeWith(
        Module.serializer, json.decode(jsonString));
  }
}

abstract class Page implements Built<Page, PageBuilder> {
  // construction
  Page._();
  factory Page([Function(PageBuilder) updates]) = _$Page;
  
  // fields
  String get pageId;
  BuiltList<Component> get components;

  // serialization
  static Serializer<Page> get serializer => _$pageSerializer;
  String toJson() {
    return json.encode(serializers.serializeWith<Page>(Page.serializer, this));
  }
  static Page? fromJson(String jsonString) {
    return serializers.deserializeWith(Page.serializer, json.decode(jsonString));
  }
}

class ComponentType extends EnumClass {
  static const ComponentType text = _$text;
  static const ComponentType image = _$image;

  const ComponentType._(String name) : super(name);
  static BuiltSet<ComponentType> get values => _$values;
  static ComponentType valueOf(String name) => _$valueOf(name);
}

abstract class Component {
  ComponentType get type;
  double get x;
  double get y;
  double get height;
  double get width;
}

abstract class TextComponent implements Built<TextComponent, TextComponentBuilder>, Component {
  // construction
  TextComponent._();
  factory TextComponent([Function(TextComponentBuilder) updates]) = _$TextComponent;

  // fields
  String get content;
  @override
  ComponentType get type => ComponentType.text;


  // serialization
  static Serializer<TextComponent> get serializer => _$textComponentSerializer;
  String toJson() {
    return json.encode(serializers.serializeWith<TextComponent>(TextComponent.serializer, this));
  }
  static TextComponent? fromJson(String jsonString) {
    return serializers.deserializeWith(TextComponent.serializer, json.decode(jsonString));
  }
}

abstract class ImageComponent implements Built<ImageComponent, ImageComponentBuilder>, Component {
  // construction
  ImageComponent._();
  factory ImageComponent([Function(ImageComponentBuilder) updates]) = _$ImageComponent;

  // fields
  String get imageFile;
  @override
  ComponentType get type => ComponentType.image;

  // serialization
  static Serializer<ImageComponent> get serializer => _$imageComponentSerializer;
  String toJson() {
    return json.encode(serializers.serializeWith<ImageComponent>(ImageComponent.serializer, this));
  }
  static ImageComponent? fromJson(String jsonString) {
    return serializers.deserializeWith(ImageComponent.serializer, json.decode(jsonString));
  }
}
