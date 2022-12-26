import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}
bool Changed=true;
class _HomepageState extends State<Homepage> {

   List<Widget> vegetables = <Widget>[
    Text('Tomatoes'),
    Text('Potatoes'),
    Text('Carrots')
  ];
  final List<bool> selectedFruits = <bool>[true, false, false];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(


appBar: AppBar(
elevation: 20,
  title: Text('APPLICATION'),
  centerTitle: true,
  actions: [
    IconButton(

      icon: const Icon(Icons.swap_horiz,size: 30,),
      tooltip: 'Open shopping cart',
      onPressed: () {
        // handle the press
      },
    ),
  ],
),

      
      drawer: Drawer(
        child: ListView(
          children: [

          ListTile(
            onTap: (){
              print('tab 1');
            },
            title: Text('hello'),
          ),
            ListTile(
              onTap: (){
                print('tab 1');
              },
              title: Text('hello'),
            ),
            ListTile(
              onTap: (){
                print('tab 1');
              },
              title: Text('hello'),
            ),

          ],
        ),
      ),





      body:
      SafeArea(
        child: Center(
          child: Row(
children: [

  ListTile(
leading: CircleAvatar(backgroundColor: Colors.black,),
    trailing: Icon(Icons.phone),
    title: Text('Title'),
    subtitle:Text('Sub_title') ,
  ),

Switch(value: Changed,
    activeColor: Colors.black, onChanged: (value){
               setState(() {
                 Changed=!Changed;
               });
}),

  ToggleButtons(isSelected: selectedFruits,
      onPressed: (value){
    setState(() {
      selectedFruits[value] = !selectedFruits[value];
    });
      },
      children: vegetables),





],

          ),
        ),
      ),



    );
  }
}

