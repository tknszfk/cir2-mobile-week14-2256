import 'package:flutter/material.dart';

class ListViewMenu extends StatelessWidget {
  const ListViewMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text("List View Menu"),
      ),
      body: Container(
        child: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              title: const Text("MENU-1"),
              subtitle: const Text("SUB-1"),
              leading: const CircleAvatar(child: Icon(Icons.person)),
              trailing: const Icon(Icons.arrow_right),
              onTap: () {
                debugPrint("Menu-1");
              },
            );
          },
          separatorBuilder: (context, index) {
            return const Divider(
              color: Colors.green,
            );
          },
          itemCount: 4,
        ),
      ),
    );
  }
}
