import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  final List<Color> _colors = [
    Colors.green,
    Colors.blue,
    Colors.red,
    Colors.amber,
    Colors.deepPurple,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('ListView'),
          ListView(
            shrinkWrap: true,
            children: [
              Container(color: Colors.red, height: 50),
              Container(color: Colors.green, height: 50),
              Container(color: Colors.blue, height: 50),
            ],
          ),
          Text('ListView.builder'),
          Container(
            width: double.infinity,
            height: 100,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: _colors.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 4,
                  child: Container(
                    color: _colors[index],
                    height: 100,
                    width: 100,
                  ),
                );
              },
            ),
          ),
          Text('ListView.separated & ListTile & Divider'),
          ListView.separated(
            shrinkWrap: true,
            itemCount: _colors.length,
            itemBuilder: (context, index) => ListTile(
              leading: Icon(Icons.assessment_outlined),
              title: Text(
                'Title',
                style: TextStyle(color: _colors[index]),
              ),
              subtitle: Text('subtitle'),
            ),
            separatorBuilder: (context, index) => Divider(),
          ),
        ],
      ),
    );
  }
}
