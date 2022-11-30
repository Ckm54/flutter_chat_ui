import 'package:flutter/material.dart';

class Conversations extends StatefulWidget {
  const Conversations({Key? key}) : super(key: key);

  @override
  State<Conversations> createState() => _ConversationsState();
}

class _ConversationsState extends State<Conversations> {

  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.white,
          child: SafeArea(
            child: Container(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
              child: ListView(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://randomuser.me/api/portraits/men/11.jpg"
                                ),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                      const Text(
                        "Chats",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none,
                            color: Colors.black
                        ),
                      ),
                      const Icon(Icons.edit),
                    ],
                  ),

                  const SizedBox(
                    height: 15,
                  ),

                  Container(
                    width: double.infinity,
                    height: 40,
                    decoration: BoxDecoration(
                        color: const Color(0xFFe9eaec),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: TextField(
                      cursorColor: const Color(0xFF000000),
                      controller: _searchController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: const Color(0xFF000000).withOpacity(0.5),
                        ),
                        hintText: "Search",
                        border: InputBorder.none,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
      ),
    );
  }
}




List storyList = [
  {
    "name": "Novac",
    "imageUrl": "<https://randomuser.me/api/portraits/men/31.jpg>",
    "isOnline": true,
    "hasStory": true,
  },
  {
    "name": "Derick",
    "imageUrl": "<https://randomuser.me/api/portraits/men/81.jpg>",
    "isOnline": false,
    "hasStory": false,
  },
  {
    "name": "Mevis",
    "imageUrl": "<https://randomuser.me/api/portraits/women/49.jpg>",
    "isOnline": true,
    "hasStory": false,
  },
  {
    "name": "Emannual",
    "imageUrl": "<https://randomuser.me/api/portraits/men/35.jpg>",
    "isOnline": true,
    "hasStory": true,
  },
  {
    "name": "Gracy",
    "imageUrl": "<https://randomuser.me/api/portraits/women/56.jpg>",
    "isOnline": false,
    "hasStory": false,
  },
  {
    "name": "Robert",
    "imageUrl": "<https://randomuser.me/api/portraits/men/36.jpg>",
    "isOnline": false,
    "hasStory": true,
  }
];

