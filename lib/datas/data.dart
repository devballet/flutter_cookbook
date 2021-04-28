class data {
  final int id;
  final String title;
  final String widget;
  final String tag;

  data(this.id, this.title, this.widget, this.tag);
}

List<data> getExampleList() {
  List<data> exampleList = [];
  exampleList.add(new data(
      1, 'RandomColorWithGridView', "randomColorWithGridView", "gridview"));
  exampleList
      .add(new data(2, 'ReorderableListView', "reorderableList", "listView"));
  exampleList.add(
      new data(3, 'underlineTextStyle', "underlineTextStyle", "TextStyle"));
  exampleList.add(
      new data(4, 'RondomColorPrimaries', "randomColorPrimaries", "listView"));
  exampleList
      .add(new data(5, 'randomColorARGB', 'randomColorARGB', 'gridview'));
  exampleList.add(new data(
      6, 'randomColorWithDependency', 'randomColorDependency', 'gridView'));
  exampleList.add(new data(7, 'roundListView', 'roundListView', 'listview'));

  return exampleList;
}

/*
{
      "id": 1,
      "title": "RandomColor1",
      "date": DateTime(2021 - 03 - 01),
      "source": "lib/examples/random1"
    },
    {
      "id": 2,
      "title": "RandomColor2",
      "date": DateTime(2021 - 03 - 01),
      "source": "lib/examples/random2"
    },
    {
      "id": 3,
      "title": "RandomColor3",
      "date": DateTime(2021 - 03 - 01),
      "source": "lib/examples/random3"
    },
    {
      "id": 4,
      "title": "carousel",
      "date": DateTime(2021 - 03 - 01),
      "source": "lib/examples/carousel"
    }
*/
