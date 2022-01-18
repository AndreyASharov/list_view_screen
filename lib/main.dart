import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
      home: Scaffold(
        body: ListViewScreen(),
      )));
}

class User {
  String name;
  String phone;
  User(this.name, this.phone);
}

var contactList = [
  User('Артем', '+7 999 123 01'),
  User('Адам', '+7 999 123 02'),
  User('Адриан', '+7 999 123 03'),
  User('Азат', '+7 999 123 04'),
  User('Аифал', '+7 999 123 05'),
  User('Акакий', '+7 999 123 06'),
  User('Аким', '+7 999 123 07'),
  User('Александр', '+7 999 123 08'),
  User('Алексей', '+7 999 123 09'),
  User('Али', '+7 999 123 10'),
  User('Алим', '+7 999 123 11'),
  User('Альберт', '+7 999 123 12'),
  User('Альфред', '+7 999 123 13'),
  User('Анатолий', '+7 999 123 14'),
  User('Андрей', '+7 999 123 15'),
  User('Антон', '+7 999 123 16'),
  User('Аполлон', '+7 999 123 17'),
  User('Арам', '+7 999 123 18'),
  User('Аристарх', '+7 999 123 19'),
  User('Аркадий', '+7 999 123 20')
];

class ListViewScreen extends StatefulWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  @override
  _ListViewScreenState createState() => _ListViewScreenState();
}

class MyListItem extends StatelessWidget {
  const MyListItem({Key? key, required this.nameIndex}) : super(key: key);

  final int nameIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
          const Icon(
            Icons.contact_page_outlined,
            color: Colors.blue,
            size: 30.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(contactList[nameIndex].name,
                    style: const TextStyle(fontWeight: FontWeight.w400)),
                Text(contactList[nameIndex].phone,
                    style: const TextStyle(fontStyle: FontStyle.italic)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ListViewScreenState extends State<ListViewScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: ListView.builder(
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: MyListItem(nameIndex: index),
                  selected: index == _selectedIndex,
                  onTap: () {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                );
              })),
    );
  }
}
