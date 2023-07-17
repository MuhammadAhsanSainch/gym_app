import 'package:flutter/material.dart';

class MentorsList extends StatefulWidget {
  const MentorsList({Key? key}) : super(key: key);

  @override
  State<MentorsList> createState() => _MentorsListState();
}

class _MentorsListState extends State<MentorsList> {
  List<dynamic>? filteredData;
  String searchValue = '';
  final TextEditingController _searchController = TextEditingController();
  List<String> images = [
    'assets/images/brie.jpg',
    'assets/images/corey.jpg',
    'assets/images/jing.jpg',
    'assets/images/john.jpg',
    'assets/images/reilly.jpg',
    'assets/images/toby.jpg',
    'assets/images/tom.jpg',
  ];
  List<String> names = [
    'John Cooper',
    'Corey',
    'Jing',
    'John',
    'Reilly',
    'Toby',
    'Tom',
  ];

  @override
  void initState() {
    super.initState();
    filteredData =
        names.toList(); // Initialize filteredData with the entire names list
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'Mentors',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: _searchController,
              style: const TextStyle(color: Colors.white),
              onChanged: (value) {
                setState(() {
                  searchValue = value;
                  filteredData = names
                      .where((name) => name
                          .toLowerCase()
                          .contains(searchValue.toLowerCase()))
                      .toList();
                });
              },
              decoration: const InputDecoration(
                hintText: "Search mentors",
                hintStyle: TextStyle(color: Colors.white),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredData?.length ?? 0,
              itemBuilder: (context, index) {
                final item = filteredData![index];
                return Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                  ),
                  child: ListTile(
                    leading: Image.asset(images[index]),
                    title: Text(
                      item,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    subtitle: const Text(
                      '4.1 | Personal Trainer | Germany',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
