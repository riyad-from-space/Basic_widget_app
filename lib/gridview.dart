import 'package:flutter/material.dart';

class GridViewScreen extends StatefulWidget {
  const GridViewScreen({super.key});

  @override
  State<GridViewScreen> createState() => _GridViewScreenState();
}

class _GridViewScreenState extends State<GridViewScreen> {

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> fruits = [
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
        title: const Text(" GridView "),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("GridView"),
            SizedBox(height: 10),
            Expanded(
              child: GridView.builder(
                scrollDirection: Axis.vertical,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,


                ),
                itemCount: fruits.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.cyan,
                    child: ListTile(
                      leading:CircleAvatar(
                                    child: Text(fruits[index]['name'][0]),
                                    ),
                      title: Text(fruits[index]['name']),
                      subtitle: Text('Weight: ${fruits[index]['weight']}g'),
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
            ),
          ],
        ),
      ),
    );
  }
}
