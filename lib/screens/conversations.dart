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
    return Container(
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
                )
              ],
            ),
          ),
        )
    );
  }
}
