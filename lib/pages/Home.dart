import 'package:flutkart/pages/user.dart';
import 'package:flutkart/utils/my_navigator.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {

  List<User> users;
  List<User> selectedUsers;
  bool sort;

  @override
  void initState() {
    sort = false;
    selectedUsers = [];
    users = User.getUsers();
    super.initState();
  }


  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Emergency App"),
        actions: <Widget>[
          Padding(
            //child: Icon(Icons.search),
            padding: const EdgeInsets.only(right: 10.0),
          )
        ],
      ),
      drawer: Drawer(),
      body: DataTable(
          columns: [
            DataColumn(
              label: Text("مستوصفات تبوك الصحية",),
              tooltip: "THIS IS THE MEDICAL CENTER NAME",
            ),

          ],

          rows: users
              .map(
                (user) => DataRow(
                selected: selectedUsers.contains(user),
//                onSelectChanged: (b) {
//                  print("Onselect");
//                  onSelectedRow(b, user);
//                },
                cells: [
                  DataCell(
                    Text(user.firstName),
                    onTap: () {
                      MyNavigator.goToMap(context, user.position);
                      print('Selected ${user.firstName}');
                    },
                  ),

                ]),
          )
              .toList(),

        )
    );

  }

  onSelectedRow(bool selected, User user) async {
    setState(() {
      if (selected) {
        selectedUsers.add(user);
      } else {
        selectedUsers.remove(user);
      }
    });
  }

}

class CardView extends StatelessWidget {
  final double cardSize;
  CardView(this.cardSize);

  @override
  Widget build(BuildContext context) {
    return new Card(
        child: new SizedBox.fromSize(
          size: new Size(cardSize, cardSize),
        ));
  }
}
