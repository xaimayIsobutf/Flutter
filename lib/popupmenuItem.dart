import 'package:flutter/material.dart';
import 'package:lect1/Login.dart';
import 'package:lect1/drawerMenu.dart';
import 'package:lect1/myHomePage.dart';

class popupmenuItem extends StatefulWidget {
  const popupmenuItem({super.key});

  @override
  State<popupmenuItem> createState() => _popupmenuItemState();
}

class _popupmenuItemState extends State<popupmenuItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ທົດລອງເມນູ Item'),
        centerTitle: true,
        actions: [
          PopupMenuButton(
              onSelected: (val) {
                if (val == "share") {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (c) => myHomePage()));
                } else if (val == "message") {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (c) => Login()));
                } else if (val == "setting") {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (c) => drawerMenu()));
                } else if (val == "exit") {
                  Navigator.of(context).pop();
                }
              },
              color: Colors.black54,
              itemBuilder: (c) => [
                    PopupMenuItem(
                      value: "share",
                      child: ListTile(
                        leading: Icon(
                          Icons.share,
                          color: Colors.white,
                        ),
                        title: Text(
                          "ສົ່ງຕໍ່",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    PopupMenuItem(
                      value: "message",
                      child: ListTile(
                        leading: Icon(
                          Icons.message,
                          color: Colors.white,
                        ),
                        title: Text(
                          "ສົ່ງຂໍ້ຄວາມ",
                          style: TextStyle(color: Colors.white),
                        ),
                        onTap: () {},
                      ),
                    ),
                    PopupMenuItem(
                      value: "setting",
                      child: ListTile(
                        leading: Icon(
                          Icons.settings,
                          color: Colors.white,
                        ),
                        title: Text(
                          "ການຕັ້ງຄ່າ",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    PopupMenuItem(
                      value: "exit",
                      child: ListTile(
                        leading: Icon(
                          Icons.exit_to_app_outlined,
                          color: Colors.white,
                        ),
                        title: Text(
                          "ປິດໂປຣແກຣມ",
                          style: TextStyle(color: Colors.white),
                        ),
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                  ])
        ],
      ),
    );
  }
}
