import 'package:defacto_theme/style/appTheme.dart';
import 'package:flutter/material.dart';
import 'helper/buildContextExtensions.dart';

class ThemeTestPage extends StatefulWidget {
  @override
  _ThemeTestPageState createState() => _ThemeTestPageState();
}

class _ThemeTestPageState extends State<ThemeTestPage> {
  AppTheme appTheme;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    appTheme = context.getTheme();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {},
            ),
            actions: [IconButton(icon: Icon(Icons.search), onPressed: () {})],
            title: Text('DEFACTO'),
            bottom: TabBar(
              tabs: [
                Tab(text: 'Tab 1'),
                Tab(text: 'Tab 2'),
                Tab(text: 'Tab 3'),
              ],
            )),
        body: Container(
          child: Builder(
              builder: (context) => SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        //buildBottomBar(),
                        SizedBox(
                          height: 5,
                        ),
                        buildButtons(),
                        buildDivider(),
                        buildIcons(),
                        buildCheckBox(),
                        buildDivider(),
                        buildCard(),
                        buildDivider(),
                        buildTextField(),
                        buildDivider(),
                        buildTexts()
                      ],
                    ),
                  )),
        ),
        bottomNavigationBar: buildBottomNavigationBar(),
        floatingActionButton: buildFab(),
      ),
    );
  }

  Widget buildBottomBar() {
    return BottomAppBar(
      child: Text(
        'Test',
        style: TextStyle(color: Colors.black),
      ),
    );
  }

  Widget buildTextField() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(labelText: 'Text Field'),
      ),
    );
  }

  Widget buildCheckBox() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Checkbox(value: false, onChanged: (v) {}),
          Checkbox(value: true, onChanged: (v) {}),
          Checkbox(value: true, onChanged: null),
        ],
      ),
    );
  }

  Widget buildTexts() {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Test Hello Defacto',
              style: appTheme.textStyles.overLine,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Test Hello Defacto',
              style: appTheme.textStyles.caption,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Test Hello Defacto',
              style: appTheme.textStyles.captionGrey,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Test Hello Defacto',
              style: appTheme.textStyles.captionBold,
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: appTheme.colors.primary,
              child: Text(
                'Test Hello Defacto',
                style: appTheme.textStyles.captionWhiteExtraBold,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Test Hello Defacto',
              style: appTheme.textStyles.bodyLight,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Test Hello Defacto',
              style: appTheme.textStyles.body,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Test Hello Defacto',
              style: appTheme.textStyles.bodySemiBold,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Test Hello Defacto',
              style: appTheme.textStyles.bodyBold,
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: appTheme.colors.primary,
              child: Text(
                'Test Hello Defacto',
                style: appTheme.textStyles.bodyWhite,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: appTheme.colors.primary,
              child: Text(
                'Test Hello Defacto',
                style: appTheme.textStyles.bodyWhiteExtraBold,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Test Hello Defacto',
              style: appTheme.textStyles.headLine6,
            ),
            Container(
              color: appTheme.colors.primary,
              child: Text(
                'Test Hello Defacto',
                style: appTheme.textStyles.headLine5WhiteExtraBold,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: appTheme.colors.primary,
              child: Text(
                'Test Hello Defacto',
                style: appTheme.textStyles.headLine4WhiteExtraBold,
              ),
            ),
          ],
        ));
  }

  Widget buildDivider() {
    return Column(
      children: [
        SizedBox(
          height: 4,
        ),
        Divider(),
        SizedBox(
          height: 4,
        ),
      ],
    );
  }

  Widget buildButtons() {
    return Column(
      children: [
        Padding(
            padding: EdgeInsets.all(3),
            child: SizedBox(width: 400, child: TextButton(onPressed: () {}, child: Text('Text Button')))),
        Padding(
            padding: EdgeInsets.all(3),
            child: SizedBox(width: 400, child: OutlinedButton(onPressed: () {}, child: Text('Outlined Button')))),
        Padding(
            padding: EdgeInsets.all(3),
            child: SizedBox(width: 400, child: ElevatedButton(onPressed: () {}, child: Text('Elevated Button')))),
        Padding(
            padding: EdgeInsets.all(3),
            child: SizedBox(width: 400, child: TextButton(onPressed: null, child: Text('Disabled Text Button')))),
        Padding(
            padding: EdgeInsets.all(3),
            child:
                SizedBox(width: 400, child: OutlinedButton(onPressed: null, child: Text('Disabled Outlined Button')))),
        Padding(
            padding: EdgeInsets.all(3),
            child:
                SizedBox(width: 400, child: ElevatedButton(onPressed: null, child: Text('Disabled Elevated Button')))),
      ],
    );
  }

  Widget buildIcons() {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        children: [
          Icon(
            Icons.favorite,
          ),
          Icon(
            Icons.favorite_outline,
          ),
        ],
      ),
    );
  }

  Widget buildCard() {
    return Card(
      child: Container(
          height: 200,
          width: 200,
          child: Center(
            child: Text(
              'Card',
              style: TextStyle(color: Colors.black87, fontSize: 40),
            ),
          )),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(currentIndex: 0, onTap: (i) {}, items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
      BottomNavigationBarItem(icon: Icon(Icons.search_outlined), label: 'Search'),
      BottomNavigationBarItem(icon: Icon(Icons.favorite_outline), label: 'Favorite'),
      BottomNavigationBarItem(icon: Icon(Icons.person_outlined), label: 'Settings'),
    ]);
  }

  FloatingActionButton buildFab() {
    return FloatingActionButton(
      onPressed: () {},
      child: Icon(Icons.add),
    );
  }
}
