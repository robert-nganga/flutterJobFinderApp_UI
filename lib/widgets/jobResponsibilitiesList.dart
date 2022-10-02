import 'package:flutter/material.dart';

class JobResponsibilitiesList extends StatelessWidget {
  final List responsibilities;
  const JobResponsibilitiesList({Key? key, required this.responsibilities}) : super(key: key);

  _buildListItems(){
    List<Widget> listItems = [];
    responsibilities.forEach((element) {
      listItems.add(
        Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.check_box_rounded,
                color: Colors.black,
                size: 30.0,
              ),
              const SizedBox(width: 10.0),
              Expanded(
                child: Text(
                  element,
                  style: const TextStyle(
                      fontSize: 16.0,
                      color: Colors.black54,
                  ),
                ),
              ),
            ],
          ),
      );
    });
    return listItems;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      width: double.infinity,
      child: Column(
        children: _buildListItems(),
      ),
    );
  }
}
