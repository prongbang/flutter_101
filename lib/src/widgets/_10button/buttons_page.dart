import 'package:flutter/material.dart';

class ButtonsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          MaterialButton(
            onPressed: () {},
            child: Text('MaterialButton'),
          ),
          DropdownButton<String>(
            value: 'DropdownButton',
            icon: const Icon(Icons.arrow_downward),
            iconSize: 24,
            elevation: 16,
            onChanged: (newValue) => print(newValue),
            items: ['DropdownButton', 'Two', 'Free', 'Four'].map((value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('ElevatedButton'),
          ),
          Text('FloatingActionButton'),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
            backgroundColor: Colors.green,
          ),
          Text('IconButton'),
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {},
          ),
          OutlinedButton(
            onPressed: () {},
            child: Text('OutlineButton'),
          ),
          TextButton(
            onPressed: () {},
            child: Text('TextButton'),
          ),
          Text('PopupMenuButton'),
          PopupMenuButton<String>(
            onSelected: (String result) {},
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value: 'harder',
                child: Text('Working a lot harder'),
              ),
              const PopupMenuItem<String>(
                value: 'smarter',
                child: Text('Being a lot smarter'),
              ),
              const PopupMenuItem<String>(
                value: 'selfStarter',
                child: Text('Being a self-starter'),
              ),
              const PopupMenuItem<String>(
                value: 'tradingCharter',
                child: Text('Placed in charge of trading charter'),
              ),
            ],
          ),
          Text('CustomButton: InkWell'),
          Container(
            margin: const EdgeInsets.all(8),
            child: Ink(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xff4b6cb7), Color(0xff182848)],
                ),
                borderRadius: BorderRadius.circular(55 / 2),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 10,
                    offset: Offset(1, 3),
                  ),
                ],
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(55 / 2),
                onTap: () {
                  print('InkWel');
                },
                child: Container(
                  height: 55,
                  alignment: Alignment.center,
                  child: Text(
                    'Custom Button 2',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff4b6cb7), Color(0xff182848)],
              ),
              borderRadius: BorderRadius.circular(55 / 2),
              boxShadow: [
                BoxShadow(
                  color: Colors.blue.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 10,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(55 / 2),
                onTap: () {
                  print('InkWel');
                },
                child: Container(
                  height: 55,
                  alignment: Alignment.center,
                  child: Text(
                    'Custom Button 2',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Text('CustomButton: GestureDetector'),
          GestureDetector(
            onTap: () {
              print('GestureDetector');
            },
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xff4b6cb7), Color(0xff182848)],
                ),
                borderRadius: BorderRadius.circular(55 / 2),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Container(
                height: 55,
                alignment: Alignment.center,
                child: Text(
                  'Custom Button 2',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
