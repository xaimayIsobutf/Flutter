import 'package:flutter/material.dart';
import 'package:lect1/ShowDetial.dart';
import 'package:lect1/model.dart';

class DisplayMenu extends StatefulWidget {
  const DisplayMenu({super.key});

  @override
  State<DisplayMenu> createState() => _DisplayMenuState();
}

class _DisplayMenuState extends State<DisplayMenu> {
  List<shirt> s = [
    shirt(
        name: "ເສື້ອໂປໂລ",
        price: "150000 ກີບ",
        urlshirt:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVCe52GwFWQPSr_kHhb1ptojG1_KpVXtQwKg&usqp=CAU"),
    shirt(
        name: "ເສື້ອໂປໂລສີຟ້າ",
        price: "250000 ກີບ",
        urlshirt:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTL6eirwsNIevwb0q5UXbMlk1cLg6IRW7qroCBPjBuBbWA1Eu7VRudKQfy1GIFFV8Rot4I&usqp=CAU"),
    shirt(
        name: "ເສື້ອຢືດແຂນຍາວຜູ້ຊາຍ",
        price: "500000 ກີບ",
        urlshirt:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMrJSXP5ql-wi24Du1GzZMLnekOkrd1YN3-Q&usqp=CAU"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ລາຍການເສຶ້ອຜ້າ'),
        ),
        body: ListView.builder(
            itemCount: s.length,
            itemBuilder: (c, i) {
              final ss = s[i];
              return Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Colors.deepPurple,
                child: ListTile(
                  isThreeLine: true,
                  leading: CircleAvatar(child: Image.network(ss.urlshirt)),
                  title: Text(
                    ss.name,
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    ss.price,
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.white,
                  ),
                  onTap: () {
                    MaterialPageRoute route =
                        MaterialPageRoute(builder: (c) => ShowDetial(sh: ss));
                    Navigator.of(c).push(route);
                  },
                ),
              );
            }));
  }
}
