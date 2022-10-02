import 'package:flutter/material.dart';
import 'package:flutter_jobfinder_ui/appData.dart';
import 'package:flutter_jobfinder_ui/constants.dart';

class CustomListWrapper extends StatelessWidget {
  final List items;
  final String title;
  const CustomListWrapper({Key? key, required this.items, required this.title}) : super(key: key);



  _buildListItems(){
    List<Widget> listItems = [];
    items.forEach((element) {
      listItems.add(
        Item(itemText: element)
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

class Item extends StatefulWidget {
  final String itemText;
  const Item({
    Key? key, required this.itemText,
  }) : super(key: key);

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        if(_isSelected){
          jobDetails.remove(widget.itemText);
        }else{
          jobDetails.add(widget.itemText);
        }
        setState(() {
          _isSelected = !_isSelected;
        });
      },
      child: Container(
        margin: const EdgeInsets.all(5.0),
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: _isSelected ? fgColor : tColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Text(
          widget.itemText,
          style: const TextStyle(
              fontSize: 18.0,
              color: Colors.black54,
          ),
        ),
      ),
    );
  }
}
