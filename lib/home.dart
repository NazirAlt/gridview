import 'package:flutter/material.dart';
import 'package:gridview/model.dart';

class Home extends StatelessWidget {
  List _photos =[

    Data(image: 'assets/images/burger.png', text: 'Bueger'
    ),Data(image: 'assets/images/et.png', text: 'Meat'
    ),Data(image: 'assets/images/free.png', text: 'Free'
    ),Data(image: 'assets/images/frikas.png', text: 'Freekaase'
    ),Data(image: 'assets/images/kah.png', text: 'Kah'
    ),Data(image: 'assets/images/salt.png', text: 'Salad'
    ),Data(image: 'assets/images/steik.png', text: 'Steik'
    ),Data(image: 'assets/images/tav.png', text: 'Tav'
    
    )
    
  ];
 Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('GRIDVIEW',style: TextStyle(color: Colors.red, fontSize: 25,fontWeight: FontWeight.w700),),
        centerTitle: true,
      ),
      body: GridView.builder(itemCount: _photos.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
      crossAxisSpacing: 10,mainAxisSpacing: 10),
      itemBuilder: (context, index) {
        return Column(
          children: [
            Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent,
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(image: AssetImage(_photos[index].image,),
                fit:BoxFit.cover),
              ),
            ),
           const SizedBox(height: 10,),
           Text(_photos[index].text,style: TextStyle(color: Colors.red, fontSize: 15,fontWeight: FontWeight.bold),)
          ],
        );
      },)
   
    );
  }
}