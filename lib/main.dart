import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();

}

Widget addDialog = AlertDialog(
  title: Text("Add"),
  content: Container(
    height: 160.0,
    child: Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Icon(Icons.attach_money),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: MaterialButton(
                onPressed: (){},
                child: Text("Income"),
              ),
            )
          ],
        ),

        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Icon(Icons.money_off),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: MaterialButton(
                onPressed: (){},
                child: Text("Expense"),
              ),
            )
          ],
        ),

        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Icon(Icons.dashboard),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: MaterialButton(
                onPressed: (){},
                child: Text("Category"),
              ),
            )
          ],
        ),
      ],
    ),
  ),
);

class _HomePageState extends State<HomePage> {

  
  @override
  Widget build(BuildContext context) {

    final mediaQuerydata = MediaQuery.of(context);
    final size = mediaQuerydata.size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter cash"),
        backgroundColor: Colors.deepOrange,
        centerTitle: Theme.of(context).platform == TargetPlatform.iOS ? false : false,
        elevation: 1.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            tooltip: "Add Something",
            onPressed: (){
              showDialog(context: context,
              builder: (context) => addDialog);
            },
          )
        ],
      ),

      body: Stack(
        children: <Widget>[
          Center(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: <Widget>[
              Icon(Icons.account_balance_wallet, size: 64.0, color: Colors.grey,),
              Text("waste no meney!" , style: TextStyle(fontSize: 16.0),),

              ],
            ),
          )
        ],

      ),

      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: Text("Balance:"),
                subtitle: Text("\$230"),
              ),
            ),
            Expanded(
              child: ListTile(
                title: Text("Expense:"),
                subtitle: Text("\$230"),
              ),
            ),
            Expanded(
              child: IconButton(icon: Icon(Icons.remove_red_eye), onPressed: null)
            ),
            
          ],
        ),
      ),
    );
  }
}


