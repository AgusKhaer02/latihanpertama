import 'package:flutter/material.dart';
import 'package:latihanpertama/ui_navigation.dart'; // import material untuk membangun widget

void main() {
  runApp(MyApp()); //menjalankan aplikasi
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Aplikasi Pertama",
      home: UINavigation(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{

  int nilai = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Hello world",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.purple),
          ),
          Text("Angka yang ditambah"),
          Text(nilai.toString()),

          ElevatedButton(
            onPressed: () {
              setState(() { // render ulang halamannya, maka setiap perubahan pada variabel nilai akan langsung ditampilkan ke layar
                nilai++;
              });

            },
            child: Text("Tambah"),
          ),
          Image.network(
              "https://i.icanvas.com/list-square/scenic-snowy-mountains-2.jpg",
            height: 100,
            width: 100,
          ),
          Image.asset(
            "assets/mountain1.jpg",
            height: 100,
            width: 100,
          ),



        ],
      ),
    );
  }
}

//Reformat code
// ctrl + alt + L
// cmd + alt + L
