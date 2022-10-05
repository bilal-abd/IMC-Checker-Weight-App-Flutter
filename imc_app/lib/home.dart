import 'package:flutter/material.dart';
import 'package:imc_app/constants/app_constants.dart';

class HomeScreen extends StatefulWidget {


  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}



class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _controllertaille = TextEditingController();
  TextEditingController _controllerpoids = TextEditingController();
  double imcresult = 0;
  String yourresult= "";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar:AppBar( centerTitle: true, title: Text('Calculateur IMC',style: TextStyle(color: accentHexColor,fontWeight: FontWeight.w300),),
backgroundColor: Colors.transparent,
elevation: 0,
),
backgroundColor: mainHexColor ,
body: SingleChildScrollView(
  child: Column(
children: [
  const SizedBox(height: 20,),
  Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
Container(
  width: 130,
 child: TextFormField(
  controller: _controllertaille,
  style: TextStyle(
    fontSize: 42,
    fontWeight: FontWeight.w300,
    color: accentHexColor
    ),
    keyboardType: TextInputType.number,
    decoration: InputDecoration(
      border: InputBorder.none,
      hintText: "Taille",
      hintStyle: TextStyle(
        fontSize: 42,
        fontWeight: FontWeight.w300,
        color: Colors.white.withOpacity(.8)
        )
    ),
    ),
),
Container(
  width: 130,
 child: TextFormField(
  controller: _controllerpoids,
  style: TextStyle(
    fontSize: 42,
    fontWeight: FontWeight.w300,
    color: accentHexColor
    ),
    keyboardType: TextInputType.number,
    decoration: InputDecoration(
      border: InputBorder.none,
      hintText: "Poids",
      hintStyle: TextStyle(
        fontSize: 42,
        fontWeight: FontWeight.w300,
        color: Colors.white.withOpacity(.8)
        )
    ),
    ),
)

  ],
  ),
SizedBox(height: 80,),
  Container(
    child: FloatingActionButton.extended(onPressed: () {
      double _poids = double.parse(_controllerpoids.text);
double _taille = double.parse(_controllertaille.text);
setState(() {
  imcresult = _poids / _taille;
  if(imcresult > 25) {
yourresult = "Vous etes en surpoids :/";

  }
  else if(imcresult < 25 && imcresult >20) {
    yourresult = "Vous avez un poids correct";
  }
  else {
yourresult = "Vous etes en sous poids";
  }
});
    },
    backgroundColor: accentHexColor,
    label: Text('Calculer')
    ,
    
    ),
    
    
    ),

  SizedBox(height: 100,),
  Container(child: Text(imcresult.toStringAsFixed(2),style: TextStyle(color: accentHexColor, fontWeight: FontWeight.bold, fontSize: 40),),),

  SizedBox(height: 100,),
  Visibility(visible:yourresult.isNotEmpty,  child: Container(child: Text(yourresult,style: TextStyle(color: accentHexColor, fontWeight: FontWeight.bold, fontSize: 20),),)),

],

  ),
),

    );
  }
}