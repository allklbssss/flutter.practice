import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ['Покупка', 'Аренда', 'Посуточно'];
  int selectedIndex = 0;
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        height: 50,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index),
        ),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      // onTap: () {
      //   setState(() {
      //     selectedIndex = index;
      //   });
      // },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              categories[index],
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: selectedIndex == index ? Colors.black : Colors.black54,
                  fontSize: 15),
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              height: 2,
              width: 55,
              color: selectedIndex == index ? Colors.black : Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
