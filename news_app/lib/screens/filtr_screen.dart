import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/screens/first_screen.dart';

class FiltrScreen extends StatefulWidget {
  FiltrScreen({Key? key}) : super(key: key);

  @override
  _FiltrScreenState createState() => _FiltrScreenState();
}

class _FiltrScreenState extends State<FiltrScreen> {
  final allChacked = CheckBoxModal(title: "Выбрать все категории");
  final checkBoxList = [
    CheckBoxModal(title: "Cобрания конференции"),
    CheckBoxModal(title: "Технические новости"),
    CheckBoxModal(title: "Другие новости"),
    CheckBoxModal(title: "Важное"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Фильтр",
          style: TextStyle(color: Colors.black),
        ),
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: <Widget>[
          TextButton(
              onPressed: () => offAllClicked(allChacked),
              child: Text("Сбросить",
                  style: TextStyle(
                    color: Colors.blue,
                  )))
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        children: [
          ListTile(
            onTap: () => onAllClicked(allChacked),
            title: Text(
              allChacked.title.toString(),
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            trailing: Checkbox(
              value: allChacked.value,
              onChanged: (value) => onAllClicked(allChacked),
            ),
          ),
          Divides(),
          ...checkBoxList
              .map(
                (item) => ListTile(
                  onTap: () => onItemClicked(item),
                  title: Text(
                    item.title.toString(),
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  trailing: Checkbox(
                    value: item.value,
                    onChanged: (value) => onItemClicked(item),
                  ),
                ),
              )
              .toList(),
          SizedBox(
            height: 350,
          ),
          Material(
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FirstScreen()));
              },
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 500,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  "ПРИМЕНИТЬ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  onAllClicked(CheckBoxModal ckbItem) {
    final newValue = !ckbItem.value;
    setState(() {
      ckbItem.value = newValue;
      checkBoxList.forEach((element) {
        element.value = newValue;
      });
    });
  }

  onItemClicked(CheckBoxModal ckbItem) {
    final newValue = !ckbItem.value;
    setState(() {
      ckbItem.value = newValue;
      if (!newValue) {
        allChacked.value = false;
      } else {
        final allListChacked = checkBoxList.every((element) => element.value);
        allChacked.value = allListChacked;
      }
    });
  }

  offAllClicked(CheckBoxModal ckbItem) {
    final newValue = ckbItem.value;
    final newAllValue = !ckbItem.value;
    setState(() {
      ckbItem.value = newValue;
      checkBoxList.forEach((element) {
        element.value = newValue;
      });
      if (!newAllValue) {
        allChacked.value = false;
      }
    });
  }
}

class CheckBoxModal {
  String? title;
  bool value;
  CheckBoxModal({@required this.title, this.value = false});
}

class Divides extends StatelessWidget {
  const Divides({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Divider(
        color: Colors.black,
        height: 0.1,
        thickness: 1,
      ),
    );
  }
}
