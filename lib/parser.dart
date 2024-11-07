import 'model/data_model.dart';

void main() {
  final module = Module((b) => b
    ..moduleId = 'myModule'
    ..author = 'Chester Alan Author'
    ..name = 'fred'
    ..title = 'a title'
    ..height = 100
    ..width = 200);

  final Page p1 = Page((b) => b.pageId = 'one');
  ImageComponent ic1 = ImageComponent((b) => b
    ..x = 0
    ..y = 0
    ..height = 0
    ..width = 0
    ..imageFile = 'image.jpg');
  TextComponent tc1 = TextComponent((b) => b
    ..x = 5
    ..y = 5
    ..height = 5
    ..width = 5
    ..content = 'some text');
  final Page pOne = p1.rebuild((b) => b.components.addAll([ic1, tc1]));

  final Page p2 = Page((b) => b.pageId = 'two');
  ImageComponent ic2 = ImageComponent((b) => b
    ..x = 10
    ..y = 10
    ..height = 100
    ..width = 100
    ..imageFile = 'image2.jpg');
  TextComponent tc2 = TextComponent((b) => b
    ..x = 20
    ..y = 20
    ..height = 200
    ..width = 200
    ..content = 'some more text');
  final Page pTwo = p2.rebuild((b) => b.components.addAll([ic2, tc2]));

  var paginatedModule = module.rebuild((b) => b
    ..pages.addAll([pOne, pTwo]));

  var moduleJson = paginatedModule.toJson();
  print('json: $moduleJson');

  Module? newModule = Module.fromJson(moduleJson);
  print('newModule: $newModule');
}