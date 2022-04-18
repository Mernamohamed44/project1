import 'package:flutter/material.dart';

import '../widget/card.dart';
import '../widget/colors.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CommonMethod().themedata.scaffoldBackgroundColor,
        body: SafeArea(
        child: Center(
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  expandedHeight: 70,
                  flexibleSpace: Container(
                    decoration: BoxDecoration(
                        color: CommonMethod().themedata.primaryColor,
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30))),
                  ),
                  backgroundColor:
                      CommonMethod().themedata.appBarTheme.backgroundColor,
                  title: const Text(
                    'Categories',
                    style: TextStyle(fontSize: 30),
                  ),
                  centerTitle: true,
                  actions: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.search,
                            size: 30,
                          )),
                    )
                  ],
                ),
                SliverList(
                    delegate:
                        SliverChildListDelegate([const Cards(), const Cards()]))
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.category,
                  color: CommonMethod().themedata.primaryColor,
                ),
                label: ''),
            const BottomNavigationBarItem(
                icon: Icon(Icons.event_note_sharp), label: ''),
            const BottomNavigationBarItem(
                icon: Icon(Icons.merge_type_sharp), label: ''),
          ],
        ));
  }
}
