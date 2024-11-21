import 'package:flutter/material.dart';

class drawerMenu extends StatefulWidget {
  const drawerMenu({super.key});

  @override
  State<drawerMenu> createState() => _drawerMenuState();
}

class _drawerMenuState extends State<drawerMenu> {
  Widget unitItem() {
    return ListTile(
      leading: Icon(Icons.ac_unit),
      title: Text('ຂໍ້ມູນຫົວໜ່ວຍ'),
      onTap: () {
        Navigator.of(context).pop();
      },
    );
  }

  Widget categoryItem() {
    return ListTile(
      leading: Icon(Icons.category),
      title: Text('ຂໍ້ມູນປະເພດສິນຄ້າ'),
      onTap: () {
        Navigator.of(context).pop();
      },
    );
  }

  Widget productsItem() {
    return ListTile(
      leading: Icon(Icons.storage),
      title: Text('ຂໍ້ມູນສິນຄ້າ'),
      onTap: () {
        Navigator.of(context).pop();
      },
    );
  }

  Widget SaleItem() {
    return ListTile(
      leading: Icon(Icons.shopping_bag_outlined),
      title: Text('ຂາຍສິນຄ້າ'),
      onTap: () {
        Navigator.of(context).pop();
      },
    );
  }

  Widget OrderItem() {
    return ListTile(
      leading: Icon(Icons.menu_book),
      title: Text('ສັ່ງຊື້ສິນຄ້າ'),
      onTap: () {
        Navigator.of(context).pop();
      },
    );
  }

  Widget ImportItem() {
    return ListTile(
      leading: Icon(Icons.add_box_sharp),
      title: Text('ສັ່ງຊື້ສິນຄ້າ'),
      onTap: () {
        Navigator.of(context).pop();
      },
    );
  }

  Widget reportItem() {
    return ListTile(
      leading: Icon(Icons.add_chart),
      title: Text('ລາຍງານ'),
      onTap: () {
        Navigator.of(context).pop();
      },
    );
  }

  Widget EmployeetItem() {
    return ListTile(
      leading: Icon(Icons.person_2_outlined),
      title: Text('ຂໍ້ມູນພະນັກງານ'),
      onTap: () {
        Navigator.of(context).pop();
      },
    );
  }

  Widget SupplytItem() {
    return ListTile(
      leading: Icon(Icons.send_and_archive),
      title: Text('ຂໍ້ມູນຜູ້ສະໜອງ'),
      onTap: () {
        Navigator.of(context).pop();
      },
    );
  }

  Widget ExchangtItem() {
    return ListTile(
      leading: Icon(Icons.currency_exchange),
      title: Text('ຂໍ້ມູນອັດຕາແລກປ່ຽນ'),
      onTap: () {
        Navigator.of(context).pop();
      },
    );
  }

  Widget ListMenuItem() {
    return Container(
      child: Column(children: [
        unitItem(),
        categoryItem(),
        productsItem(),
        Divider(
          color: Colors.black45,
        ),
        SaleItem(),
        Divider(
          color: Colors.black45,
        ),
        OrderItem(),
        Divider(
          color: Colors.black45,
        ),
        ImportItem(),
        Divider(
          color: Colors.black45,
        ),
        EmployeetItem(),
        SupplytItem(),
        Divider(
          color: Colors.black45,
        ),
        ExchangtItem(),
        Divider(
          color: Colors.black45,
        ),
        reportItem(),
      ]),
    );
  }

  Widget showlogo() {
    return Container(
      width: 80.0,
      height: 80.0,
      child: CircleAvatar(
        backgroundImage: AssetImage("images/ic_shop.png"),
      ),
    );
  }

  Widget showText() {
    return Text(
      "CW Shopping Mall",
      style: TextStyle(
          color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
    );
  }

  Widget showLogin() {
    return Text("Login By : ");
  }

  Widget headerItem() {
    return DrawerHeader(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/bg.jpg"), fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            showlogo(),
            SizedBox(
              height: 10.0,
            ),
            showText(),
            SizedBox(
              height: 10.0,
            ),
            showLogin(),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ລະບົບການຂານຈອງຮ້ານ CW Store"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            headerItem(),
            ListMenuItem(),
          ],
        ),
      ),
      body: Center(
        child: Text('Home'),
      ),
    );
  }
}
