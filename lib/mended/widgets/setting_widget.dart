

import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
List Accountsetting=['Account','Privacy','Security','Share profile'];
List contentSetting=['Comment history','Content preferences','Advertisements','Display','Screen time'];
List helpsetting=['Report a problem','Help','Terms and conditions',];





  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Container(color: Colors.transparent,
    child: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column( crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Padding(
          padding: const EdgeInsets.only(left:20.0,bottom: 10),
          child: Text('Accounts',style: TextStyle(color:Colors.white54,fontSize: 20,),),
        ),
        Container(
          height:size.height*0.4 ,
          width: size.width*0.3,
          decoration: BoxDecoration(
            color: Color(0xff45695f),
            borderRadius: BorderRadius.circular(30)
    
          ),
          child: Center(
            child: ListView.builder( itemCount: Accountsetting.length,   itemBuilder: (BuildContext context ,int index){
              return Column(
                children: [
                  ListTile(
                    
                    
                    title: Text(Accountsetting[index],style: TextStyle(color: Colors.white),),
                    trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,color: Colors.white,),)
                    //shape: Border.symmetric(horizontal: BorderSide(color: Colors.white)),
                  ),
                  Divider(thickness: 1,color: Colors.white,)
                  // Container(
                  //       margin: EdgeInsets.symmetric(vertical: 8.0),
                  //        height: 1.0, // Adjust the height as needed
                  //             color: Colors.white, // Line color
                  //             ),
                ],
              );
            }),
          ),
        ),
        SizedBox(height: size.height*0.01,),
         Padding(
          padding: const EdgeInsets.only(left:20.0,bottom: 10),
          child: Text('Content',style: TextStyle(color:Colors.white54,fontSize: 20,),),
        ),
        Container(
          height:size.height*0.5 ,
          width: size.width*0.3,
          decoration: BoxDecoration(
            color: Color(0xff45695f),
            borderRadius: BorderRadius.circular(30)
    
          ),
          child: Center(
            child: ListView.builder( itemCount: contentSetting.length,   itemBuilder: (BuildContext context ,int index){
              return Column(
                children: [
                  ListTile(
                    
                    
                    title: Text(contentSetting[index],style: TextStyle(color: Colors.white),),
                    trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,color: Colors.white,),)
                    //shape: Border.symmetric(horizontal: BorderSide(color: Colors.white)),
                  ),
                   Divider(thickness: 1,color: Colors.white,)
                  // Container(
                  //       margin: EdgeInsets.symmetric(vertical: 8.0),
                  //        height: 1.0, // Adjust the height as needed
                  //             color: Colors.white, // Line color
                  //             ),
                ],
              );
            }),
          ),
        ),

         SizedBox(height: size.height*0.01,),
         Padding(
          padding: const EdgeInsets.only(left:20.0,bottom: 10),
          child: Text('Help and information',style: TextStyle(color:Colors.white54,fontSize: 20,),),
        ),
        Container(
          height:size.height*0.30 ,
          width: size.width*0.3,
          decoration: BoxDecoration(
            color: Color(0xff45695f),
            borderRadius: BorderRadius.circular(30)
    
          ),
          child: Center(
            child: ListView.builder( itemCount: helpsetting.length,   itemBuilder: (BuildContext context ,int index){
              return Column(
                children: [
                  ListTile(
                    
                    
                    title: Text(helpsetting[index],style: TextStyle(color: Colors.white),),
                    trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,color: Colors.white,),)
                    //shape: Border.symmetric(horizontal: BorderSide(color: Colors.white)),
                  ),
                  Divider(thickness: 1,color: Colors.white,)
                  // Container(
                  //       margin: EdgeInsets.symmetric(vertical: 8.0),
                  //        height: 1.0, // Adjust the height as needed
                  //             color: Colors.white, // Line color
                  //             ),
                ],
              );
            }),
          ),
        ),

        SizedBox(height: 150,)
    
    
      ],),
    ),
    
    );
  }
}