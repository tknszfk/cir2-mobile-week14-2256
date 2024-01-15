import 'package:flutter/material.dart';

class ListMenu {
  final String? title;
  final String? subtitle;
  final IconData icon;
  const ListMenu({this.title, this.subtitle,required this.icon});
}

List<ListMenu> menus = [
  const ListMenu(title: 'Menu-1,', subtitle: 'SUB-1', icon: Icons.person),
  const ListMenu(title: 'Menu-2,', subtitle: 'SUB-1', icon: Icons.person_add),
  const ListMenu(title: 'Menu-3,', subtitle: 'SUB-1', icon: Icons.wifi),
  const ListMenu(title: 'Menu-4,', subtitle: 'SUB-1', icon: Icons.build),
];

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
              title:  Text("${menus[index].title}"),
              subtitle:  Text("${menus[index].subtitle}"),
              leading:  CircleAvatar(child: Icon(menus[index].icon)),
              trailing: const Icon(Icons.arrow_right),
              onTap: () {
                debugPrint("menus[index].title");
                if(Navigator.canPop(context)){
                  Navigator.pop(context,menus[index].title);
                }
              },
            );
          },
          separatorBuilder: (context, index) {
            return const Divider(
              color: Colors.green,
            );
          },
          itemCount: menus.length,
        ),
      ),
    );
  }
}
