import 'package:chat_ui/screens/conversation_list.dart';
import 'package:chat_ui/screens/user_stories.dart';
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
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const UserStories(),
                  const SizedBox(
                    height: 20,
                  ),
                  const ConversationList(),
                ],
              ),
            ),
          )
      ),
    );
  }
}




