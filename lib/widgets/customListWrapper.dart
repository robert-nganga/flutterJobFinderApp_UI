import 'package:flutter/material.dart';

class CustomListWrapper extends StatelessWidget {
  final List items;
  final String title;
  const CustomListWrapper({Key? key, required this.items, required this.title}) : super(key: key);

  _buildListItems(){
    List<Widget> listItems = [];
    items.forEach((element) {
      listItems.add(
        Container(
          margin: const EdgeInsets.all(5.0),
          padding: const EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Text(
            element,
            style: const TextStyle(
                fontSize: 18.0,
                color: Colors.black54,
            ),
          ),
        )
      );
    });
    return listItems;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
            ),
          ),
          const SizedBox(height: 10.0),
          Wrap(
            children: _buildListItems(),
          ),
        ],
      ),
    );
  }
}
