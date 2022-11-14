import 'package:flutter/material.dart';
import 'package:learningdart/views/user_page.dart';

class User {
  final String username;
  final String email;
  final String urlAvatar;

const User({
  required this.username,
  required this.email,
  required this.urlAvatar,
}
);
}

List<User> users = [
    const User(
      username: 'ammy cooper',
      email: 'ammy.345@gmail.com',
      urlAvatar: 'https://images.unsplash.com/photo-1519865885898-a54a6f2c7eea?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8c3BsYXNofGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
      ),
      const User(
      username: 'Nina Queen',
      email: 'Nina_Queen@gmail.com',
      urlAvatar: 'https://images.unsplash.com/photo-1598112152680-0c39a2928c64?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fHNwbGFzaHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
      ),
      const User(
      username: 'Anola Holmes',
      email: 'holmes4561@gmail.com',
      urlAvatar: 'https://images.unsplash.com/photo-1623842529695-f056295fd8e4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8YmlydGhkYXklMjBiYWNrZ3JvdW5kfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
      ),
      const User(
      username: 'Max',
      email: 'Max123456@gmail.com',
      urlAvatar: 'https://images.unsplash.com/photo-1520121401995-928cd50d4e27?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8Z3JlZW58ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
      ),
      const User(
      username: 'Jimmy fisher',
      email: 'fisher.jimmy789@gmail.com',
      urlAvatar: 'https://plus.unsplash.com/premium_photo-1663853293468-124b605d40e3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dGVhfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
      ),
      const User(
      username: 'ammy cooper',
      email: 'ammy.345@gmail.com',
      urlAvatar: 'https://images.unsplash.com/photo-1519865885898-a54a6f2c7eea?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8c3BsYXNofGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
      ),
      const User(
      username: 'ammy cooper',
      email: 'ammy.345@gmail.com',
      urlAvatar: 'https://images.unsplash.com/photo-1519865885898-a54a6f2c7eea?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8c3BsYXNofGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
      ),
  ];
 


class ListsViewPage extends StatelessWidget {
  
  const ListsViewPage({super.key, required Text title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View'),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: ((context, index) {
          final user = users[index];
          return Card(
          child: ListTile(
            leading:CircleAvatar(
              radius: 28,
              backgroundImage: NetworkImage(user.urlAvatar),
               ),
            title: Text(user.username),
            subtitle: Text(user.email),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => UserpageView(user: user),
            ));
            },
            )
            );
        }
        ),
        ),
      );
  }
  
  static builder({required int itemCount, required Function(dynamic context, dynamic index) itemBuilder}) {}
}