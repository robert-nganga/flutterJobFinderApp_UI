import 'package:flutter/material.dart';
import 'package:flutter_jobfinder_ui/constants.dart';

class JobDetailsList extends StatelessWidget {
  final List items;
  const JobDetailsList({Key? key, required this.items}) : super(key: key);
  _buildListItems(){
    List<Widget> listItems = [];
    items.forEach((element) {
      listItems.add(
        Container(
          margin: const EdgeInsets.all(5.0),
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 2.0),
          decoration: BoxDecoration(
            color: tColor,
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                element,
                style: const TextStyle(
                    fontSize: 15.0,
                    color: Colors.black54,
                ),
              ),
              const SizedBox(width: 5.0),
              IconButton(
                onPressed: (){},
                icon: const Icon(
                  Icons.clear,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        )
      );
    });
    return listItems;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: ListView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: _buildListItems(),
      ),
    );
  }
}
