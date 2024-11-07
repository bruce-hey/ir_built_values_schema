// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ComponentType _$text = const ComponentType._('text');
const ComponentType _$image = const ComponentType._('image');

ComponentType _$valueOf(String name) {
  switch (name) {
    case 'text':
      return _$text;
    case 'image':
      return _$image;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ComponentType> _$values =
    new BuiltSet<ComponentType>(const <ComponentType>[
  _$text,
  _$image,
]);

Serializer<Module> _$moduleSerializer = new _$ModuleSerializer();
Serializer<Page> _$pageSerializer = new _$PageSerializer();
Serializer<TextComponent> _$textComponentSerializer =
    new _$TextComponentSerializer();
Serializer<ImageComponent> _$imageComponentSerializer =
    new _$ImageComponentSerializer();

class _$ModuleSerializer implements StructuredSerializer<Module> {
  @override
  final Iterable<Type> types = const [Module, _$Module];
  @override
  final String wireName = 'Module';

  @override
  Iterable<Object?> serialize(Serializers serializers, Module object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'moduleId',
      serializers.serialize(object.moduleId,
          specifiedType: const FullType(String)),
      'height',
      serializers.serialize(object.height,
          specifiedType: const FullType(double)),
      'width',
      serializers.serialize(object.width,
          specifiedType: const FullType(double)),
      'pages',
      serializers.serialize(object.pages,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Page)])),
    ];
    Object? value;
    value = object.author;
    if (value != null) {
      result
        ..add('author')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Module deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ModuleBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'author':
          result.author = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'moduleId':
          result.moduleId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'height':
          result.height = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'width':
          result.width = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'pages':
          result.pages.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Page)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$PageSerializer implements StructuredSerializer<Page> {
  @override
  final Iterable<Type> types = const [Page, _$Page];
  @override
  final String wireName = 'Page';

  @override
  Iterable<Object?> serialize(Serializers serializers, Page object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'pageId',
      serializers.serialize(object.pageId,
          specifiedType: const FullType(String)),
      'components',
      serializers.serialize(object.components,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Component)])),
    ];

    return result;
  }

  @override
  Page deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PageBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'pageId':
          result.pageId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'components':
          result.components.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Component)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$TextComponentSerializer implements StructuredSerializer<TextComponent> {
  @override
  final Iterable<Type> types = const [TextComponent, _$TextComponent];
  @override
  final String wireName = 'TextComponent';

  @override
  Iterable<Object?> serialize(Serializers serializers, TextComponent object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'content',
      serializers.serialize(object.content,
          specifiedType: const FullType(String)),
      'x',
      serializers.serialize(object.x, specifiedType: const FullType(double)),
      'y',
      serializers.serialize(object.y, specifiedType: const FullType(double)),
      'height',
      serializers.serialize(object.height,
          specifiedType: const FullType(double)),
      'width',
      serializers.serialize(object.width,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  TextComponent deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TextComponentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'x':
          result.x = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'y':
          result.y = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'height':
          result.height = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'width':
          result.width = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
      }
    }

    return result.build();
  }
}

class _$ImageComponentSerializer
    implements StructuredSerializer<ImageComponent> {
  @override
  final Iterable<Type> types = const [ImageComponent, _$ImageComponent];
  @override
  final String wireName = 'ImageComponent';

  @override
  Iterable<Object?> serialize(Serializers serializers, ImageComponent object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'imageFile',
      serializers.serialize(object.imageFile,
          specifiedType: const FullType(String)),
      'x',
      serializers.serialize(object.x, specifiedType: const FullType(double)),
      'y',
      serializers.serialize(object.y, specifiedType: const FullType(double)),
      'height',
      serializers.serialize(object.height,
          specifiedType: const FullType(double)),
      'width',
      serializers.serialize(object.width,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  ImageComponent deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ImageComponentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'imageFile':
          result.imageFile = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'x':
          result.x = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'y':
          result.y = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'height':
          result.height = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'width':
          result.width = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
      }
    }

    return result.build();
  }
}

class _$Module extends Module {
  @override
  final String? author;
  @override
  final String moduleId;
  @override
  final String? name;
  @override
  final String? title;
  @override
  final double height;
  @override
  final double width;
  @override
  final BuiltList<Page> pages;

  factory _$Module([void Function(ModuleBuilder)? updates]) =>
      (new ModuleBuilder()..update(updates))._build();

  _$Module._(
      {this.author,
      required this.moduleId,
      this.name,
      this.title,
      required this.height,
      required this.width,
      required this.pages})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(moduleId, r'Module', 'moduleId');
    BuiltValueNullFieldError.checkNotNull(height, r'Module', 'height');
    BuiltValueNullFieldError.checkNotNull(width, r'Module', 'width');
    BuiltValueNullFieldError.checkNotNull(pages, r'Module', 'pages');
  }

  @override
  Module rebuild(void Function(ModuleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModuleBuilder toBuilder() => new ModuleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Module &&
        author == other.author &&
        moduleId == other.moduleId &&
        name == other.name &&
        title == other.title &&
        height == other.height &&
        width == other.width &&
        pages == other.pages;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, author.hashCode);
    _$hash = $jc(_$hash, moduleId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, height.hashCode);
    _$hash = $jc(_$hash, width.hashCode);
    _$hash = $jc(_$hash, pages.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Module')
          ..add('author', author)
          ..add('moduleId', moduleId)
          ..add('name', name)
          ..add('title', title)
          ..add('height', height)
          ..add('width', width)
          ..add('pages', pages))
        .toString();
  }
}

class ModuleBuilder implements Builder<Module, ModuleBuilder> {
  _$Module? _$v;

  String? _author;
  String? get author => _$this._author;
  set author(String? author) => _$this._author = author;

  String? _moduleId;
  String? get moduleId => _$this._moduleId;
  set moduleId(String? moduleId) => _$this._moduleId = moduleId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  double? _height;
  double? get height => _$this._height;
  set height(double? height) => _$this._height = height;

  double? _width;
  double? get width => _$this._width;
  set width(double? width) => _$this._width = width;

  ListBuilder<Page>? _pages;
  ListBuilder<Page> get pages => _$this._pages ??= new ListBuilder<Page>();
  set pages(ListBuilder<Page>? pages) => _$this._pages = pages;

  ModuleBuilder();

  ModuleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _author = $v.author;
      _moduleId = $v.moduleId;
      _name = $v.name;
      _title = $v.title;
      _height = $v.height;
      _width = $v.width;
      _pages = $v.pages.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Module other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Module;
  }

  @override
  void update(void Function(ModuleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Module build() => _build();

  _$Module _build() {
    _$Module _$result;
    try {
      _$result = _$v ??
          new _$Module._(
              author: author,
              moduleId: BuiltValueNullFieldError.checkNotNull(
                  moduleId, r'Module', 'moduleId'),
              name: name,
              title: title,
              height: BuiltValueNullFieldError.checkNotNull(
                  height, r'Module', 'height'),
              width: BuiltValueNullFieldError.checkNotNull(
                  width, r'Module', 'width'),
              pages: pages.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pages';
        pages.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Module', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Page extends Page {
  @override
  final String pageId;
  @override
  final BuiltList<Component> components;

  factory _$Page([void Function(PageBuilder)? updates]) =>
      (new PageBuilder()..update(updates))._build();

  _$Page._({required this.pageId, required this.components}) : super._() {
    BuiltValueNullFieldError.checkNotNull(pageId, r'Page', 'pageId');
    BuiltValueNullFieldError.checkNotNull(components, r'Page', 'components');
  }

  @override
  Page rebuild(void Function(PageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PageBuilder toBuilder() => new PageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Page &&
        pageId == other.pageId &&
        components == other.components;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, pageId.hashCode);
    _$hash = $jc(_$hash, components.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Page')
          ..add('pageId', pageId)
          ..add('components', components))
        .toString();
  }
}

class PageBuilder implements Builder<Page, PageBuilder> {
  _$Page? _$v;

  String? _pageId;
  String? get pageId => _$this._pageId;
  set pageId(String? pageId) => _$this._pageId = pageId;

  ListBuilder<Component>? _components;
  ListBuilder<Component> get components =>
      _$this._components ??= new ListBuilder<Component>();
  set components(ListBuilder<Component>? components) =>
      _$this._components = components;

  PageBuilder();

  PageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _pageId = $v.pageId;
      _components = $v.components.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Page other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Page;
  }

  @override
  void update(void Function(PageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Page build() => _build();

  _$Page _build() {
    _$Page _$result;
    try {
      _$result = _$v ??
          new _$Page._(
              pageId: BuiltValueNullFieldError.checkNotNull(
                  pageId, r'Page', 'pageId'),
              components: components.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'components';
        components.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Page', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$TextComponent extends TextComponent {
  @override
  final String content;
  @override
  final double x;
  @override
  final double y;
  @override
  final double height;
  @override
  final double width;

  factory _$TextComponent([void Function(TextComponentBuilder)? updates]) =>
      (new TextComponentBuilder()..update(updates))._build();

  _$TextComponent._(
      {required this.content,
      required this.x,
      required this.y,
      required this.height,
      required this.width})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(content, r'TextComponent', 'content');
    BuiltValueNullFieldError.checkNotNull(x, r'TextComponent', 'x');
    BuiltValueNullFieldError.checkNotNull(y, r'TextComponent', 'y');
    BuiltValueNullFieldError.checkNotNull(height, r'TextComponent', 'height');
    BuiltValueNullFieldError.checkNotNull(width, r'TextComponent', 'width');
  }

  @override
  TextComponent rebuild(void Function(TextComponentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TextComponentBuilder toBuilder() => new TextComponentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TextComponent &&
        content == other.content &&
        x == other.x &&
        y == other.y &&
        height == other.height &&
        width == other.width;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jc(_$hash, x.hashCode);
    _$hash = $jc(_$hash, y.hashCode);
    _$hash = $jc(_$hash, height.hashCode);
    _$hash = $jc(_$hash, width.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TextComponent')
          ..add('content', content)
          ..add('x', x)
          ..add('y', y)
          ..add('height', height)
          ..add('width', width))
        .toString();
  }
}

class TextComponentBuilder
    implements Builder<TextComponent, TextComponentBuilder> {
  _$TextComponent? _$v;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  double? _x;
  double? get x => _$this._x;
  set x(double? x) => _$this._x = x;

  double? _y;
  double? get y => _$this._y;
  set y(double? y) => _$this._y = y;

  double? _height;
  double? get height => _$this._height;
  set height(double? height) => _$this._height = height;

  double? _width;
  double? get width => _$this._width;
  set width(double? width) => _$this._width = width;

  TextComponentBuilder();

  TextComponentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _content = $v.content;
      _x = $v.x;
      _y = $v.y;
      _height = $v.height;
      _width = $v.width;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TextComponent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TextComponent;
  }

  @override
  void update(void Function(TextComponentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TextComponent build() => _build();

  _$TextComponent _build() {
    final _$result = _$v ??
        new _$TextComponent._(
            content: BuiltValueNullFieldError.checkNotNull(
                content, r'TextComponent', 'content'),
            x: BuiltValueNullFieldError.checkNotNull(x, r'TextComponent', 'x'),
            y: BuiltValueNullFieldError.checkNotNull(y, r'TextComponent', 'y'),
            height: BuiltValueNullFieldError.checkNotNull(
                height, r'TextComponent', 'height'),
            width: BuiltValueNullFieldError.checkNotNull(
                width, r'TextComponent', 'width'));
    replace(_$result);
    return _$result;
  }
}

class _$ImageComponent extends ImageComponent {
  @override
  final String imageFile;
  @override
  final double x;
  @override
  final double y;
  @override
  final double height;
  @override
  final double width;

  factory _$ImageComponent([void Function(ImageComponentBuilder)? updates]) =>
      (new ImageComponentBuilder()..update(updates))._build();

  _$ImageComponent._(
      {required this.imageFile,
      required this.x,
      required this.y,
      required this.height,
      required this.width})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        imageFile, r'ImageComponent', 'imageFile');
    BuiltValueNullFieldError.checkNotNull(x, r'ImageComponent', 'x');
    BuiltValueNullFieldError.checkNotNull(y, r'ImageComponent', 'y');
    BuiltValueNullFieldError.checkNotNull(height, r'ImageComponent', 'height');
    BuiltValueNullFieldError.checkNotNull(width, r'ImageComponent', 'width');
  }

  @override
  ImageComponent rebuild(void Function(ImageComponentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImageComponentBuilder toBuilder() =>
      new ImageComponentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImageComponent &&
        imageFile == other.imageFile &&
        x == other.x &&
        y == other.y &&
        height == other.height &&
        width == other.width;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, imageFile.hashCode);
    _$hash = $jc(_$hash, x.hashCode);
    _$hash = $jc(_$hash, y.hashCode);
    _$hash = $jc(_$hash, height.hashCode);
    _$hash = $jc(_$hash, width.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ImageComponent')
          ..add('imageFile', imageFile)
          ..add('x', x)
          ..add('y', y)
          ..add('height', height)
          ..add('width', width))
        .toString();
  }
}

class ImageComponentBuilder
    implements Builder<ImageComponent, ImageComponentBuilder> {
  _$ImageComponent? _$v;

  String? _imageFile;
  String? get imageFile => _$this._imageFile;
  set imageFile(String? imageFile) => _$this._imageFile = imageFile;

  double? _x;
  double? get x => _$this._x;
  set x(double? x) => _$this._x = x;

  double? _y;
  double? get y => _$this._y;
  set y(double? y) => _$this._y = y;

  double? _height;
  double? get height => _$this._height;
  set height(double? height) => _$this._height = height;

  double? _width;
  double? get width => _$this._width;
  set width(double? width) => _$this._width = width;

  ImageComponentBuilder();

  ImageComponentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _imageFile = $v.imageFile;
      _x = $v.x;
      _y = $v.y;
      _height = $v.height;
      _width = $v.width;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImageComponent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImageComponent;
  }

  @override
  void update(void Function(ImageComponentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImageComponent build() => _build();

  _$ImageComponent _build() {
    final _$result = _$v ??
        new _$ImageComponent._(
            imageFile: BuiltValueNullFieldError.checkNotNull(
                imageFile, r'ImageComponent', 'imageFile'),
            x: BuiltValueNullFieldError.checkNotNull(x, r'ImageComponent', 'x'),
            y: BuiltValueNullFieldError.checkNotNull(y, r'ImageComponent', 'y'),
            height: BuiltValueNullFieldError.checkNotNull(
                height, r'ImageComponent', 'height'),
            width: BuiltValueNullFieldError.checkNotNull(
                width, r'ImageComponent', 'width'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
