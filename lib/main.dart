import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()); 
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}


  @override
  

class HomeScreen extends StatefulWidget {
   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  bool isChecked= false;
  


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
     drawer:Drawer(),
          
          appBar: AppBar(
    
          backgroundColor: Colors.purple,
        ),
       
     body:Column(
      children: [
      CheckboxListTile(
        title: Text(" Akhtar"),
        selectedTileColor: Colors.grey,
        selected: isChecked,
    
        value: isChecked, onChanged:(value){
        isChecked=value ?? false;
        setState(() {
          
        });
    
      }),
    
      ],
     ) ,
       
      ),
    );
  }
} 