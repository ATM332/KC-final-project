import 'package:day6_test/Models/building.dart';
import 'package:flutter/material.dart';
// import 'package:flutterproject/models/Page1.dart';
// import 'package:flutterproject/screens/page2.dart';

class Page1 extends StatefulWidget {
    
   Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  var countries = [
     Countries(
    name: "France", 
    imgUrl: "https://flagemoji.net/img/flags/france-flag.png" ),
    Countries(
    name: "spain", 
    imgUrl: "https://img.freepik.com/free-vector/illustration-spain-flag_53876-18168.jpg" ),
    
    Countries(
    name: "UK",
    imgUrl: "https://www.flagcolorcodes.com/data/Flag-of-Great-Britain.png" ),
    Countries(
    name: "Italy", 
    imgUrl: "https://w0.peakpx.com/wallpaper/278/309/HD-wallpaper-italian-flag-flags-patriotic-flag-italy.jpg" ),
    Countries(
    name: "USA", 
    imgUrl: "https://cdn.britannica.com/33/4833-004-828A9A84/Flag-United-States-of-America.jpg" ),
    Countries(
    name: "Mexico", 
    imgUrl: "https://mexicanappetizersandmore.com/wp-content/uploads/2016/07/Mexico_flag-3.jpg" ),
    
    
    
    
    ];
    
      

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      
      debugShowCheckedModeBanner: false,
    
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      
      home: Scaffold(
        
        appBar: AppBar(
          title: Text("COUNTRIES"),
        ),
        body: ListView(
          
          children:

         [
          COUNTRIESLIST(countries: countries[0]),
          COUNTRIESLIST(countries: countries[1]),
          COUNTRIESLIST(countries: countries[2],),
          COUNTRIESLIST(countries: countries[3],),
          COUNTRIESLIST(countries: countries[4],),
          COUNTRIESLIST(countries: countries[5],),
          COUNTRIESLIST(countries: countries[6],),
          
          ]
          )
          , 
      ),
    );
  
}}

class COUNTRIESLIST extends StatefulWidget { 
   COUNTRIESLIST({
    required this.countries
  });
  Countries countries;
  @override
  State<COUNTRIESLIST> createState() => _COUNTRIESLISTState();
}
class _COUNTRIESLISTState extends State<COUNTRIESLIST> {
  @override
  Widget build(BuildContext context) {
    return Container(     
      margin: EdgeInsets.fromLTRB(30, 15, 30, 0),
      child:  
      ListTile(
        
        tileColor: Colors.grey[300],
        leading: CircleAvatar(foregroundImage: NetworkImage(widget.countries.imgUrl), ),
        title:  Text(
          widget.countries.name, textAlign: TextAlign.center,),
        trailing: ElevatedButton(
          onPressed: (){
            // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            // return CountriesDetails(countries: widget.countries);
            // },));
          }, 
          child: Icon(Icons.arrow_right_alt )
          
        ),
        
      )
      
    );
    
  }
}