import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter UI"),
      ),
      body: _build(context),
    );
  }
  Widget _build(context){
    return FutureBuilder(
      future: DefaultAssetBundle.of(context).loadString('assets/json/routes.json'),
    builder: (context, snapshot) {
        var data = json.decode(snapshot.data.toString());
        return ListView.builder(
            itemCount: data == null ? 0 : data.length,
            itemBuilder: (BuildContext context, int index) {
              var name = data[index]["name"];
              var icon = _buildIcon(name);
            return ExpansionTile(
              leading: Icon(icon),
              title: Text(name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
              children: _buildSubList(context,data[index]["routes"]),
            );
          }
        );
    });
  }
  IconData _buildIcon(String name){
    switch (name){
      case "Authentication":
        return Icons.account_circle;
      default:
        return Icons.error;
    }
  }
  List _buildSubList(context,routes){
    return routes.map<Widget>((data){
      return _subListItem(context, data["name"], data["route"]);
    }).toList();
  }

  Widget _subListItem(context,name,route){
    return Container(
      width: double.maxFinite,
      child: Row(
        children: <Widget>[
          Expanded(
            child: MaterialButton(
                padding: EdgeInsets.only(left: 12),
                onPressed: () {
                  Navigator.pushNamed(context, route);
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      name,
                      style: TextStyle(fontSize: 17.0),
                    ),
                  ),
                )),
          ),
          IconButton(onPressed: () {},icon: Icon(Icons.favorite_border),color: Colors.redAccent,),
//          IconButton(onPressed: () {},icon: Icon(Icons.settings_ethernet),),
        ],
      ),
    );
  }


}
