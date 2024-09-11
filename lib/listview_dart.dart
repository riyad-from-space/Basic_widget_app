import 'package:flutter/material.dart';

class ListViewScreen extends StatefulWidget  {
  const ListViewScreen({super.key});

  @override
  State<ListViewScreen> createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {


  @override
  Widget build(BuildContext context) {
    final List<Map<String,dynamic>> fruits=[
      {'name': 'Apple', 'weight': 150},
      {'name': 'Mango', 'weight': 150},
      {'name': 'Banana', 'weight': 100},
      {'name': 'Pineapple', 'weight': 500},
      {'name': 'Orange', 'weight': 50},
      {'name': 'Blueberry', 'weight': 15},
      {'name': 'Watermelon', 'weight': 900},
      {'name': 'Peach', 'weight': 150},

    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text("ListView"),
        centerTitle: true,
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,

          itemCount: fruits.length,
        itemBuilder: (context,index){
            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  child: Text(fruits[index]['name'][0]),
                ),
                title: Text(fruits[index]['name']),
                subtitle: Text('weight: ${fruits[index]['weight']}g'),
                trailing: Icon(Icons.label),
                onTap: () {
                  // Action when the item is tapped
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('Selected: ${fruits[index]['name']}'),
                  ));
                },

              ),


            );
        },
      ),



    );
  }
}
