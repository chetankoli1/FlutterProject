import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation Drawer"),
      ),
      body: const Center(
          child: Text(
        "Navigation Drawer Example",
        style: TextStyle(
          fontSize: 20.0,
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: <Widget>[
            const UserAccountsDrawerHeader(
              accountEmail: Text("chetan.koli@Vaayuh.in"),
              accountName: Text("Chetan Koli"),
              currentAccountPicture: CircleAvatar(
                child: Text("CK"),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () {
               // Navigator.pushReplacementNamed(context, "/dorpdown");
              },
            ),
            ListTile(
              leading: const Icon(Icons.dashboard),
              title: const Text("Categories"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.add_to_photos),
              title: const Text("Add Items"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text("About Us"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.share),
              title: const Text("Share with Friends"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.rate_review),
              title: const Text("Rate and Review"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.flag),
              title: const Text("Privacy Policy"),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
