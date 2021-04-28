import 'package:flutter/material.dart';
import 'package:flutter_example/examples/randomColorDependency.dart';
import 'package:flutter_example/examples/roundListView.dart';
import 'datas/data.dart';
import 'examples/randomColorPrimaries.dart';
import 'examples/reorderlistview.dart';
import 'examples/underlineTextStyle.dart';
import 'examples/randomColorARGB.dart';
import 'examples/randomColorDependency.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Example List',
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => ExampleMain(),
      '/reorderableList': (context) => reorderableList(),
      '/underlineTextStyle': (contextt) => underlineTextStyle(),
      '/randomColorPrimaries': (context) => randomColorPrimaries(),
      '/randomColorARGB': (context) => randomColorARGB(),
      '/randomColorDependency': (context) => randomColorDependency(),
      '/roundListView': (context) => roundListView()
    },
  ));
}

class ExampleMain extends StatefulWidget {
  ExampleMain({Key key}) : super(key: key);

  @override
  _ExampleMainState createState() => _ExampleMainState();
}

class _ExampleMainState extends State<ExampleMain> {
  //datas
  List<data> _all = [];
  List<data> _result = [];

  @override
  void initState() {
    _all = getExampleList();
    _result = _all;
    super.initState();
  }

  void runFilter(String keyword) {
    List<data> _temp = [];
    if (keyword.isEmpty) {
      _temp = _all;
    } else {
      _temp = _all
          .where((element) =>
              element.title.toUpperCase().contains(keyword.toUpperCase()))
          .toList();
    }
    setState(() {
      _result = _temp;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(
            title: Text(
              "Flutter Example Wideget List",
              style: TextStyle(
                color: Colors.yellow,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            backgroundColor: Colors.purple),
        body: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                onChanged: (value) => runFilter(value),
                decoration: InputDecoration(
                  labelText: 'WidgetSearch',
                  suffixIcon: Icon(Icons.search),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: _result.length > 0
                  ? ListView.builder(
                      itemCount: _result.length,
                      itemBuilder: (context, index) => Card(
                        key: ValueKey(_result[index].id),
                        elevation: 4,
                        color: Colors.purple,
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        child: ListTile(
                          leading: Text(
                            _result[index].id.toString(),
                            style: TextStyle(color: Colors.white),
                          ),
                          title: Text(
                            _result[index].title,
                            style: TextStyle(color: Colors.white),
                          ),
                          subtitle: Text(
                            _result[index].widget,
                            style: TextStyle(color: Colors.white),
                          ),
                          onTap: () {
                            String _curRoute = "/" + _result[index].widget;
                            Navigator.pushNamed(context, _curRoute);
                          },
                        ),
                      ),
                    )
                  : Text('No result'),
            ),
          ],
        ));
  }
}

// void test() {
//    MirrorSystem mirrors = currentMirrorSystem();
//    ClassMirror classMirror = mirrors.findLibrary(Symbol.empty).declarations[new Symbol('Opacity')];
//   print(classMirror);
//   var arguments = {'a': 'a', 'b': 'b', 'c': 'c'}.map((key, value) {
//     return MapEntry(Symbol(key), value);
//   });
//   var op = classMirror.newInstance(Symbol.empty, [], arguments);
//   Opacity opacity = op.reflectee;
// }

// class example_list extends StatefulWidget {
//   example_list({Key key}) : super(key: key);

//   @override
//   _example_listState createState() => _example_listState();
// }

// class _example_listState extends State<example_list> {
//   List<data> _all = [];

//   List<data> _result = [];
//   @override
//   void initState() {
//     _all = getExampleList();
//     _result = _all;
//     super.initState();
//   }

//   void _runFilter(String keyword) {
//     List<data> _temp = [];
//     if (keyword.isEmpty) {
//       _temp = _all;
//     } else {
//       _temp = _all
//           .where((item) =>
//               item.title.toLowerCase().contains(keyword.toLowerCase()))
//           .toList();
//     }
//     setState(() {
//       _result = _temp;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.yellow,
//       appBar: AppBar(
//         backgroundColor: Colors.pinkAccent,
//         title: Text(
//           'example list',
//           style: TextStyle(
//             color: Colors.yellow,
//             fontSize: 30,
//           ),
//         ),
//       ),
//       body: Column(
//         children: [
//           SizedBox(
//             height: 10,
//           ),
//           TextField(
//             onChanged: (value) => _runFilter(value),
//             decoration: InputDecoration(
//               labelText: 'search',
//               suffixIcon: Icon(Icons.search),
//             ),
//           ),
//           SizedBox(
//             height: 10,
//           ),
//           Expanded(
//             child: _result.length > 0
//                 ? ListView.builder(
//                     itemCount: _result.length,
//                     itemBuilder: (context, index) => Card(
//                       key: ValueKey(_result[index].id),
//                       elevation: 4,
//                       color: Colors.purple,
//                       margin: EdgeInsets.symmetric(
//                           vertical: 10.0, horizontal: 10.0),
//                       child: ListTile(
//                         leading: Text(
//                           _result[index].id.toString(),
//                           style: TextStyle(color: Colors.white),
//                         ),
//                         title: Text(
//                           _result[index].title,
//                           style: TextStyle(color: Colors.white),
//                         ),
//                         subtitle: Text(
//                           _result[index].widget,
//                           style: TextStyle(color: Colors.white),
//                         ),
//                         onTap: () {
//                           String _curRoute = "/" + _result[index].widget;
//                           Navigator.pushNamed(context, _curRoute);

//                           // Navigator.pushNamed(
//                           //   context,
//                           //   "/SettingExample",
//                           //   arguments: _result[index].source,
//                           // );
//                         },
//                       ),
//                     ),
//                   )
//                 : Text('No result'),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'datas/data.dart';
// import 'examples/reorderlistview.dart'

// void main() {
//   runApp(examples());
// }

// class examples extends StatelessWidget {
//   const examples({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'flutter examples',
//       home: example_list(),
//       initialRoute: "/",
//       routes: {
//         '/': (context) => example_list(),
//         '/reorderableListView': (context) => reorderableList(),
//       },
//     );
//   }
// }

// class example_list extends StatefulWidget {
//   example_list({Key key}) : super(key: key);

//   @override
//   _example_listState createState() => _example_listState();
// }

// class _example_listState extends State<example_list> {
//   List<data> _all = [];

//   List<data> _result = [];
//   @override
//   void initState() {
//     _all = getExampleList();
//     _result = _all;
//     super.initState();
//   }

//   void _runFilter(String keyword) {
//     List<data> _temp = [];
//     if (keyword.isEmpty) {
//       _temp = _all;
//     } else {
//       _temp = _all
//           .where((item) =>
//               item.title.toLowerCase().contains(keyword.toLowerCase()))
//           .toList();
//     }
//     setState(() {
//       _result = _temp;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.yellow,
//       appBar: AppBar(
//         backgroundColor: Colors.pinkAccent,
//         title: Text(
//           'example list',
//           style: TextStyle(
//             color: Colors.yellow,
//             fontSize: 30,
//           ),
//         ),
//       ),
//       body: Column(
//         children: [
//           SizedBox(
//             height: 10,
//           ),
//           TextField(
//             onChanged: (value) => _runFilter(value),
//             decoration: InputDecoration(
//               labelText: 'search',
//               suffixIcon: Icon(Icons.search),
//             ),
//           ),
//           SizedBox(
//             height: 10,
//           ),
//           Expanded(
//             child: _result.length > 0
//                 ? ListView.builder(
//                     itemCount: _result.length,
//                     itemBuilder: (context, index) => Card(
//                       key: ValueKey(_result[index].id),
//                       elevation: 4,
//                       color: Colors.purple,
//                       margin: EdgeInsets.symmetric(
//                           vertical: 10.0, horizontal: 10.0),
//                       child: ListTile(
//                         leading: Text(
//                           _result[index].id.toString(),
//                           style: TextStyle(color: Colors.white),
//                         ),
//                         title: Text(
//                           _result[index].title,
//                           style: TextStyle(color: Colors.white),
//                         ),
//                         subtitle: Text(
//                           _result[index].widget,
//                           style: TextStyle(color: Colors.white),
//                         ),
//                         onTap: () {
//                           String _curRoute = "/" + _result[index].widget;
//                           Navigator.pushNamed(context, _curRoute);

//                           // Navigator.pushNamed(
//                           //   context,
//                           //   "/SettingExample",
//                           //   arguments: _result[index].source,
//                           // );
//                         },
//                       ),
//                     ),
//                   )
//                 : Text('No result'),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class SettingExample extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     //final String path = ModalRoute.of(context).settings.arguments.toString();

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Hello'),
//       ),
//       body: Center(
//         child: TextButton(
//           child: Text('111'),
//           onPressed: () {
//             Navigator.of(context).pop();
//           },
//         ),
//       ),
//     );
//   }
// }
