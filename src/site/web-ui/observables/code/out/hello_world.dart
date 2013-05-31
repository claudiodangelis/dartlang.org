// Auto-generated from hello_world.html.
// DO NOT EDIT.

library hello_world;

import 'dart:html' as autogenerated;
import 'dart:svg' as autogenerated_svg;
import 'package:web_ui/web_ui.dart' as autogenerated;
import 'package:web_ui/observe/observable.dart' as __observe;
import 'package:web_ui/web_ui.dart';


// Original code


final __changes = new __observe.Observable();

String __$superlative = 'awesome';
String get superlative {
  if (__observe.observeReads) {
    __observe.notifyRead(__changes, __observe.ChangeRecord.FIELD, 'superlative');
  }
  return __$superlative;
}
set superlative(String value) {
  if (__observe.hasObservers(__changes)) {
    __observe.notifyChange(__changes, __observe.ChangeRecord.FIELD, 'superlative',
        __$superlative, value);
  }
  __$superlative = value;
}

const List<String> alternatives =
    const <String>['wicked cool', 'sweet', 'fantastic', 'wonderful'];

int _alternativeCount = 0;

String get nextAlternative => alternatives[_alternativeCount++ % alternatives.length];

changeIt() {
  superlative = nextAlternative;
}

main() { }
// Additional generated code
void init_autogenerated() {
  var __root = autogenerated.document.body;
  var __e1, __e2;
  var __t = new autogenerated.Template(__root);
  __e1 = __root.nodes[3];
  var __binding0 = __t.contentBind(() =>  superlative , false);
  __e1.nodes.addAll([new autogenerated.Text('Web UI is '),
      __binding0]);
  __e2 = __root.nodes[5];
  __t.listen(__e2.onClick, ($event) { changeIt(); });
  __t.create();
  __t.insert();
}

//@ sourceMappingURL=hello_world.dart.map