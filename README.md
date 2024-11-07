# ir\_built\_values\_schema
## Luna IR Built Values Objects

Built values are immutable serializable value types generated from a Dart [library](https://github.com/google/built_value.dart). The [data model](lib/model/data_model.dart) is used to generate the boilerplate [code](lib/model/data_model.g.dart) that implements the builder pattern, serialization, equality testing, etc. 

A good overview/tutorial is [here](https://www.youtube.com/watch?v=Jji05a2GV_s) -- the Dart syntax is a bit out of date but the ideas and structures are still valid. The author of built_value also has some useful overview documents linked [here](https://pub.dev/packages/built_value).

One issue is finding a compatible version of built\_value and the Dart SDK; I ended up installing the latest dev build of the Dart SDK (3.7.0-99.0.dev) but I'm sure we can find an earlier version of built_value that will work with a release verson of the Dart SDK.

The easiest way to work with the generator is to open up a terminal at the root of the repo and run:

```
$ dart run build_runner watch
```

This will look for changes in the data model and create the generated files.

The example [parser](lib/parser.dart) shows how to create and serialize the data model:

```
$ dart run lib/parser.dart
json: {"moduleId":"myModule","height":100.0,"width":200.0,"pages":[{"pageId":"one","components":[{"$":"ImageComponent","imageFile":"image.jpg","x":0.0,"y":0.0,"height":0.0,"width":0.0},{"$":"TextComponent","content":"some text","x":5.0,"y":5.0,"height":5.0,"width":5.0}]},{"pageId":"two","components":[{"$":"ImageComponent","imageFile":"image2.jpg","x":10.0,"y":10.0,"height":100.0,"width":100.0},{"$":"TextComponent","content":"some more text","x":20.0,"y":20.0,"height":200.0,"width":200.0}]}],"author":"Chester Alan Author","name":"fred","title":"a title"}
newModule: Module {
  author=Chester Alan Author,
  moduleId=myModule,
  name=fred,
  title=a title,
  height=100.0,
  width=200.0,
  pages=[Page {
    pageId=one,
    components=[ImageComponent {
      imageFile=image.jpg,
      x=0.0,
      y=0.0,
      height=0.0,
      width=0.0,
    }, TextComponent {
      content=some text,
      x=5.0,
      y=5.0,
      height=5.0,
      width=5.0,
    }],
  }, Page {
    pageId=two,
    components=[ImageComponent {
      imageFile=image2.jpg,
      x=10.0,
      y=10.0,
      height=100.0,
      width=100.0,
    }, TextComponent {
      content=some more text,
      x=20.0,
      y=20.0,
      height=200.0,
      width=200.0,
    }],
  }],
}
```

