import 'package:flutter/material.dart';

class ConversationsScreen extends StatelessWidget {

  List<String> names=["Maaz","Sakina","Ammar","Hamza","Abdullah","Shaheer",];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (ctx, i) {
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://pps.whatsapp.net/v/t61.24694-24/85843814_272493430412598_1958262658598252089_n.jpg?stp=dst-jpg_s96x96&ccb=11-4&oh=01_AVxhv8lqNn_mGXJ-_4ut9UBv_lb2H6VdtTQZGPJXoOqkjQ&oe=6244CB06"),
            radius: 24,
          ),
          title: Text(names[i]),
          subtitle: Text("Last Message"),
          trailing: Text("15:50"),
        );
      },
      itemCount: names.length,
      separatorBuilder: (ctx, i) {
        return Divider(
          height: 0,
          color: Colors.grey,
          indent: 20,
          endIndent: 20,
        );
      },
    );
  }
}


