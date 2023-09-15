import 'package:day6_test/Models/building.dart';
import 'package:day6_test/login_ex.dart';
import 'package:day6_test/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MainApp());
}

class MainApp extends StatefulWidget {


   MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  var buildings = [
  Building(
    name: 'أبراج الكويت',
    imgUrl:
        'https://cdn.pixabay.com/photo/2014/11/30/14/11/cat-551554_640.jpg',
  ),
  Building(
    name: 'برج التحرير',
    imgUrl:
                'https://t4.ftcdn.net/jpg/00/97/58/97/360_F_97589769_t45CqXyzjz0KXwoBZT9PRaWGHRk5hQqQ.jpg',
  ),
  Building(
    name: 'المسجد الكبير',
    imgUrl:
        'https://cdn.pixabay.com/photo/2017/02/20/18/03/cat-2083492_640.jpg',
  ),
];

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
       appBar: AppBar(title: Text("kuwait landmarks"),),
       body: ListView(children: [
       LandmarkListitem(building: buildings[0],),
       LandmarkListitem(building: buildings[1],),
       LandmarkListitem(building: buildings[2],),

       ]),
      ),
    );
  }
}

class LandmarkListitem extends StatefulWidget {
   LandmarkListitem({
    required this.building,
  });

  Building building;

  @override
  State<LandmarkListitem> createState() => _LandmarkListitemState();
}

class _LandmarkListitemState extends State<LandmarkListitem> {

   bool _selected = false;

  @override
  Widget build(BuildContext context) {
    return 
      
    



     ListTile(
         leading: Image.network(widget.building.imgUrl),
         trailing: ElevatedButton(style: ElevatedButton.styleFrom(padding: EdgeInsets.symmetric(vertical: 20,
         horizontal: 50)),onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> loginPage(),));
         }, child: Text("next page")),
         title: Text(widget.building.name),
    
        

      
    );
  }
}

