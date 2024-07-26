import 'package:flutter/material.dart';

import 'package:mended_mender/mended/widgets/mended_custom_elevated_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:animated_rating_stars/animated_rating_stars.dart';


// this is the fist screen that show on the 


class CustomPopup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Dialog(
      backgroundColor: Colors.transparent, // Make the background transparent
      child: Align(
        alignment: Alignment.bottomLeft,
        // Align at the bottom-left corner
        child: Container(
          width: size.width * 0.22,
          height: size.height * 0.21,
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.white,
          ), // Set the color of the Container
          child: ListView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "What do you want to find ?",
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.close, color: Colors.black),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.01),
              Flexible(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    MendedCustomElevatedButtonPOPUP(
                      title: 'Mender',
                      callback: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return CustomPopupScreen2();
                          },
                        );
                      },
                      iconData: Icons.person,
                      width: size.width * 0.09,
                      height: size.height * 0.08,
                    ),
                    MendedCustomElevatedButtonPOPUP(
                      title: ' Budies',
                      callback: () {},
                      iconData: Icons.people,
                      width: size.width * 0.1,
                      height: size.height * 0.08,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




// for the second popupScreen

class CustomPopupScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Dialog(
      backgroundColor: Colors.transparent, // Make the background transparent
      
      child: Container(
        width: size.width*0.4,
        height: size.height*0.79,
        padding: EdgeInsets.all(16.0),
       
         decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                gradient: const LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color.fromARGB(255, 40, 120, 106),
                                    Color.fromARGB(255, 0, 52, 35),
                                  ],
                                ),
                              ), // Set the color of the Container
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
             Align( alignment: Alignment.topRight,  child: IconButton(onPressed: (){Navigator.pop(context);}, icon:Icon(Icons.close,color: Colors.white,))),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.person,color: Colors.white,),

                Text("Find mender",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),
              ],
            ),
            SizedBox(height:size.height*0.04 ,),
            Text("How many Minutes you want to take therapy session",style: TextStyle(color: const Color.fromARGB(255, 210, 207, 207),fontSize: 15),),
           SizedBox(height:size.height*0.03 ,),
            Container(
              width:size.width*0.22 ,
              height:size.height*0.1 ,
              
              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: Colors.white,
              ) ,
              child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,   children: [
               InkWell(
                onTap: (){},
                 child: Container(
                       width:size.width*0.04 ,
                        height:size.height*0.08 ,
                        decoration: BoxDecoration(
                          color: Color(0xffabe8d2),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child:Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                          Text('10',style: TextStyle(color: Colors.green.shade900,fontSize: 20,fontWeight: FontWeight.bold),),
                          Text('min',style: TextStyle(color: Colors.green.shade900,fontSize: 10,fontWeight: FontWeight.bold),),
                          
                        ],) ,
                        
                        ),
               ),
                       InkWell(
                        onTap: (){},
                         child: Container(
                                            width:size.width*0.04 ,
                                             height:size.height*0.08 ,
                                             decoration: BoxDecoration(
                          color: Color(0xffabe8d2),
                          borderRadius: BorderRadius.circular(15.0),
                                             ),
                                             child:Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                          Text('30',style: TextStyle(color: Colors.green.shade900,fontSize: 20,fontWeight: FontWeight.bold),),
                          Text('min',style: TextStyle(color: Colors.green.shade900,fontSize: 10,fontWeight: FontWeight.bold),),
                          
                                             ],) ,
                                             
                                             ),
                       ),
                       InkWell(
                        onTap: (){},
                         child: Container(
                                            width:size.width*0.04 ,
                                             height:size.height*0.08 ,
                                             decoration: BoxDecoration(
                          color: Color(0xffabe8d2),
                          borderRadius: BorderRadius.circular(15.0),
                                             ),
                                             child:Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                          Text('45',style: TextStyle(color: Colors.green.shade900,fontSize: 20,fontWeight: FontWeight.bold),),
                          Text('min',style: TextStyle(color: Colors.green.shade900,fontSize: 10,fontWeight: FontWeight.bold),),
                          
                                             ],) ,
                                             
                                             ),
                       ),
                       InkWell(
                        onTap: (){},
                         child: Container(
                                            width:size.width*0.04 ,
                                             height:size.height*0.08 ,
                                             decoration: BoxDecoration(
                          color: Color(0xffabe8d2),
                          borderRadius: BorderRadius.circular(15.0),
                                             ),
                                             child:Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                          Text('ongoing',style: TextStyle(color: Colors.green.shade900,fontSize: 15,fontWeight: FontWeight.bold),),
                         
                          
                                             ],) ,
                                             
                                             ),
                       ), ],),
            ),
            SizedBox(height: size.height*0.05,),
              Text("What do you need to cover For this session?",style: TextStyle(color: const Color.fromARGB(255, 210, 207, 207),fontSize: 15),),
           SizedBox(height:size.height*0.03 ,),
           // this conatiner for the Text field
           Container(

                      width:size.width*0.28 ,
                      height:size.height*0.2 ,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none
                          
                        ),
                      ),
           ),
           SizedBox(height:size.height*0.04 ,),
            Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Flexible(
                                                            child:
                                                                MendedCustomElevatedButton(
                                                              title: 'next',
                                                              callback: () {
                                                                // Navigator.pop(context);
             showDialog(
                                             context: context,
                                                    builder: (BuildContext context) {
                                                             //if user have tokens then 
           
                                                               return //PopPointmentScreen2(context);
                                                               
                                                               //if token is 0 then call this screen
                                                               CustomPopupScreen3(); 
                                                                         },
                                                         );
                                                                
                                                              },
                                                              width:
                                                                  size.width /
                                                                      3,
                                                            ),
                                                          ),
                                                        ],
                                                      ),

          //  MendedCustomElevatedButton(title: 'Next', callback: (){
          //   //if the uder have some tokens
          //   Navigator.pop(context);
          //    showDialog(
          //                                    context: context,
          //                                           builder: (BuildContext context) {
          //                                                    //if user have tokens then 
           
          //                                                      return PopPointmentScreen2(context);
                                                               
          //                                                      //if token is 0 then call this screen other wise 
          //                                                      //CustomPopupScreen3(); 
          //                                                                },
          //                                                );
           
           
          //  },width: size.width*0.09,),


           
          ],
        ),
      ),
    );
  }
}

// for the 3rd popupscreen for the tokens 

class CustomPopupScreen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Dialog(
      backgroundColor: Colors.transparent, // Make the background transparent
      
      child: Container(
        width: size.width*0.25,
        height: size.height*0.44,
        padding: EdgeInsets.all(16.0),
       
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
           color: Colors.white,
        ), // Set the color of the Container
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Align( alignment: Alignment.topRight,  child: IconButton(onPressed: (){Navigator.pop(context);}, icon:Icon(Icons.close))),
            Text("You Need Token to Speak a Mender",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
            SizedBox(height: size.height*0.04,),
            Text("Please click in the link below to buy token ",style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold),),
            SizedBox(height: 10),
            Image.asset("assets/mended/coin.png",width:120,height: 100 ,),
            SizedBox(height: size.height*0.03,),
            Flexible(
              child: ElevatedButton(
                
                style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20.0) )),
                
                onPressed: (){
                  Navigator.of(context).pop(); // Close any existing dialogs
            
                    showDialog(
                            context: context,
                              builder: (BuildContext context) {
                                      return CustomPopupScreen4(); // Open the new dialog
                                                      },
                                                            );
            
              
                
            
            
                }, child: Text('Buy token',style: TextStyle(color: Colors.white),)),
            )


            

          ],
        ),
      ),
    );
  }
}


// 4th popup Screen for buy Token


class CustomPopupScreen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Dialog(
      backgroundColor: Colors.transparent, // Make the background transparent
      
      child: Container(
        width: size.width*0.4,
        height: size.height*0.77,
        padding: EdgeInsets.all(16.0),
       
         decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                gradient: const LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color.fromARGB(255, 40, 120, 106),
                                    Color.fromARGB(255, 0, 52, 35),
                                  ],
                                ),
                              ), // Set the color of the Container
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
             Align( alignment: Alignment.topRight,  child: IconButton(onPressed: (){
              
              Navigator.pop(context);

             }, icon:Icon(Icons.close,color: Colors.white,))),
            

            Text("Buy token",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),
            SizedBox(height:size.height*0.01 ,),
            Image.asset("assets/mended/coin.png",width:80,height: 90 ,),

           
           SizedBox(height:size.height*0.03 ,),
           Padding(
             padding: const EdgeInsets.only(left:18.0,bottom: 6.0),
             child: Align(alignment: Alignment.topLeft,     child: Text('On demand',style: TextStyle(color: Colors.white),)),
           ),
            Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,   children: [
             InkWell(
              onTap: (){},
               child: Container(
                     width:size.width*0.08 ,
                      height:size.height*0.1 ,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child:Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center, 
                          children: [
                          Image.asset("assets/mended/token1.png",width:30,height: 40 ,),
                          // SizedBox(width: size.width*0.01,),
                          Text('1 Token',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold),)


                        ],),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Text('\$1',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                          Text('usd',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold),)

                        ],)
                        
                      ],) ,
                      
                      ),
             ),
                     InkWell(
                      onTap: (){},
                       child: Container(
                                         width:size.width*0.08 ,
                      height:size.height*0.1 ,
                                           decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                                           ),
                                           child:Column(mainAxisAlignment: MainAxisAlignment.center, children: [

                                             Row(
                          mainAxisAlignment: MainAxisAlignment.center, 
                          children: [
                          Image.asset("assets/mended/token2.png",width:30,height: 40 ,),
                          // SizedBox(width: size.width*0.01,),
                          Text('2 Token',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold),)


                        ],),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Text('\$2',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                          Text('usd',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold),)

                        ],)
                       
                        
                                           ],) ,
                                           
                                           ),
                     ),
                     InkWell(
                      onTap: (){},
                       child: Container(
                                         width:size.width*0.08 ,
                      height:size.height*0.1 ,
                                           decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                                           ),
                                           child:Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                                             Row(
                          mainAxisAlignment: MainAxisAlignment.center, 
                          children: [
                          Image.asset("assets/mended/token3.png",width:30,height: 40 ,),
                          // SizedBox(width: size.width*0.01,),
                          Text('3 Token',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold),)


                        ],),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Text('\$3',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                          Text('usd',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold),)

                        ],)
                        
                        
                                           ],) ,
                                           
                                           ),
                     ),
                     InkWell(
                      onTap: (){},
                       child: Container(
                                         width:size.width*0.08 ,
                      height:size.height*0.1 ,
                                           decoration: BoxDecoration(
                      color: Colors.transparent,
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(color: Colors.white),
                                           ),
                                           child:Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                        Text('Customise',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                       
                        
                                           ],) ,
                                           
                                           ),
                     ), ],),
            SizedBox(height: size.height*0.05,),
              Padding(
             padding: const EdgeInsets.only(left:18.0,bottom: 6.0),
             child: Align(alignment: Alignment.topLeft,     child: Text('Subscription',style: TextStyle(color: Colors.white),)),
           ),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             InkWell(
              onTap: (){},
               child: Container(
                     width:size.width*0.16 ,
                      height:size.height*0.1 ,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child:Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                           Image.asset("assets/mended/calender.png",width:40,height: 50 ,),
                           SizedBox(width: size.width*0.01,),
                           Text('Monthly',style: TextStyle(color: Colors.black54,fontSize: 18,fontWeight: FontWeight.bold),),
                           SizedBox(width: size.width*0.03,),
                           Text('\$25',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                           Text('  usd',style: TextStyle(color: Colors.black54,fontSize: 14,fontWeight: FontWeight.bold),),
           
           
           
           
           
                        ],)
           
           
                        
                        
                      ],) ,
                      
                      ),
             ),
              InkWell(
              onTap: (){},
               child: Container(
                     width:size.width*0.16 ,
                      height:size.height*0.1 ,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child:Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                          Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                           Image.asset("assets/mended/calender.png",width:40,height: 50 ,),
                           SizedBox(width: size.width*0.01,),
                           Text('Annually',style: TextStyle(color: Colors.black54,fontSize: 18,fontWeight: FontWeight.bold),),
                           SizedBox(width: size.width*0.03,),
                           Text('\$250',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                           Text(' usd',style: TextStyle(color: Colors.black54,fontSize: 14,fontWeight: FontWeight.bold),),
                          
                          
                          
                          
                          
                                                ],)
                        
                      ],) ,
                      
                      ),
             ),
           
           
           ],),
          
          
        
           SizedBox(height:size.height*0.04 ,),

           Flexible(
             child: MendedCustomElevatedButton(title: 'Next', callback: (){
              Navigator.pop(context);
              
               showDialog(
                                               context: context,
                                                      builder: (BuildContext context) {
                                                                 return CustomPopupScreen5();
                                                                           },
                                                           );
           
           
             } , width:
                                                                  size.width /
                                                                      5,),
           ),


           
          ],
        ),
      ),
    );
  }
}



// for the Payment method 


class CustomPopupScreen5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Dialog(
      backgroundColor: Colors.transparent, // Make the background transparent
      
      child: Container(
        width: size.width*0.5,
        height: size.height*0.75,
        padding: EdgeInsets.all(16.0),
       
         decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                gradient: const LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color.fromARGB(255, 40, 120, 106),
                                    Color.fromARGB(255, 0, 52, 35),
                                  ],
                                ),
                              ), // Set the color of the Container
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
              children: [
              IconButton(onPressed: (){
                 Navigator.pop(context);
              
               showDialog(
                                               context: context,
                                                      builder: (BuildContext context) {
                                                                 return CustomPopupScreen4();
                                                                           },
                                                           );


              }, icon:Icon(Icons.arrow_back,color: Colors.white,)),
             // SizedBox(width: size.width*0.15,),
            

            Text("Choose Payment Method",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),
           // SizedBox(width: size.width*0.15,),
            IconButton(onPressed: (){
               Navigator.pop(context);
              
               showDialog(
                 context: context,
                builder: (BuildContext context) {
                  return CustomPopupScreen4();
                                    },
                                   );
                  }, icon:Icon(Icons.close,color: Colors.white,)),
            ],),
            SizedBox(height: size.height*0.05,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Column( crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Text("Existing cards",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
                     ),
                     Container(
                      padding: EdgeInsets.all(8.0),
                      height:size.height*0.07 ,
                      width:size.width*0.20 ,
                      decoration: BoxDecoration(
                        color: Color(0xff91bab1),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Text('No card  has been added yet',style: TextStyle(color: Colors.green.shade900),),
                     ),
                      SizedBox(height: size.height*0.04,),
                       Container(
                      padding: EdgeInsets.all(8.0),
                      height:size.height*0.07 ,
                      width:size.width*0.20 ,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white)

                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Add new payment Methhod',style: TextStyle(color: Colors.white),),
                            IconButton(onPressed: (){
                              Navigator.pop(context);
                               showDialog(
                                context: context,
                               builder: (BuildContext context) {
                                return PopScreen6();
                                         },
                                        );
                            
                            
                            
                            
                            }, icon: Icon(Icons.add,color: Colors.white,))
                          ],
                        ),
                      ),
                     ),
                      SizedBox(height: size.height*0.15,),
                      Padding(
                        padding: const EdgeInsets.only(left:55.0),
                        child: InkWell(
                          onTap: (){},
                          child: Container(
                            height: size.height*0.05,
                            width: size.width*0.08,
                            decoration: BoxDecoration(
                             color: Color(0xff91bab1),
                             borderRadius: BorderRadius.circular(40),
                            ),
                            child: Row( mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                              Text('Play',style: TextStyle(color: Colors.green.shade900),),
                              SizedBox(width: size.width*0.02,),
                              Icon(Icons.arrow_forward,color: Colors.green.shade900,)
                            ],),
                        
                          ),
                        ),
                      )





                  

              ],),

                Image.asset('assets/mended/Line3.png'),



               Column( crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Text("Order Summary",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
                     ),
                     Container(
                      padding: EdgeInsets.all(8.0),
                      height:size.height*0.1 ,
                      width:size.width*0.16 ,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(children: [
                         Image.asset("assets/mended/token1.png",width:30,height: 40 ,),
                          // SizedBox(width: size.width*0.01,),
                          Text('10 Token',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold),),
                           SizedBox(width: size.width*0.02,),
                         
                          Text('\$10',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                          Text(' usd',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold),)

                        
                        
                      ],)
                     ),
                      SizedBox(height: size.height*0.03,),
                      Image.asset('assets/mended/Line4.png'),
                      SizedBox(height: size.height*0.02,),
                      Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Subtotal',style: TextStyle(color: Colors.white),),
                           SizedBox(width: size.width*0.06,),
                           Text('\$10',style: TextStyle(color: Colors.white),),

                      ],),
                      SizedBox(height: size.height*0.03,),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Fee',style: TextStyle(color: Colors.white),),
                           SizedBox(width: size.width*0.08,),
                           Text('\$7',style: TextStyle(color: Colors.white),),

                      ],),
                      SizedBox(height: size.height*0.03,),
                       Image.asset('assets/mended/Line4.png'),
                       SizedBox(height: size.height*0.03,),

                       Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                       Text('Total ',style: TextStyle(color: Colors.white),),
                        SizedBox(width: size.width*0.07,),
                            Text('\$17',style: TextStyle(color: Colors.white),)

                      ],),
                    
                        
                    


                       





                  

              ],),


            ],),

             
            


           
          ],
        ),
      ),
    );
  }
}


// for Adding the payment method 



class PopScreen6 extends StatefulWidget {
  const PopScreen6({super.key});

  @override
  State<PopScreen6> createState() => _PopScreen6State();
}

class _PopScreen6State extends State<PopScreen6> {
   bool _ischeck=false;
  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
   
    return Dialog(
      backgroundColor: Colors.transparent, // Make the background transparent
      
      child: Container(
        width: size.width*0.5,
        height: size.height*0.75,
        padding: EdgeInsets.all(16.0),
       
         decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                gradient: const LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color.fromARGB(255, 40, 120, 106),
                                    Color.fromARGB(255, 0, 52, 35),
                                  ],
                                ),
                              ), // Set the color of the Container
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
              children: [
              IconButton(onPressed: (){
                 Navigator.pop(context);

                             showDialog(
                            context: context,
                            builder: (BuildContext context) {
                            return CustomPopupScreen5();
                            },
                            );


              }, icon:Icon(Icons.arrow_back,color: Colors.white,)),
             // SizedBox(width: size.width*0.15,),
            

            Text("Choose Payment Method",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),
           // SizedBox(width: size.width*0.15,),
            IconButton(onPressed: (){

              Navigator.pop(context);

                             showDialog(
                            context: context,
                            builder: (BuildContext context) {
                            return CustomPopupScreen5();
                            },
                            );



            }, icon:Icon(Icons.close,color: Colors.white,)),
            ],),
            SizedBox(height: size.height*0.05,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Column( crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Text("Add new payment Method  ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
                     ),
                  


                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Text("16 digits number ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
                     ),
                     Container(
                      padding: EdgeInsets.all(8.0),
                      height:size.height*0.07 ,
                      width:size.width*0.20 ,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: '1234 5678 9012 1234',
                            hintStyle: TextStyle(color: Colors.black45),
                            border: InputBorder.none,
                          ),
                        ),
                      )
                     ),
                      SizedBox(height: size.height*0.04,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        
                        children: [
                        Column(children: [
                          Text('Expiration date',style: TextStyle(color: Colors.white),),
                           Container(
                      padding: EdgeInsets.all(8.0),
                      height:size.height*0.07 ,
                      width:size.width*0.08 ,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white)

                      ),
                      child: Center(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'MM/YY',
                            hintStyle: TextStyle(color: Colors.black45),
                            border: InputBorder.none,
                          ),
                        ),
                      )
                     ),
                        ],),
                        SizedBox(width: size.width*0.04,),
                        Column(children: [
                          Text('CVV/CVC',style: TextStyle(color: Colors.white),),
                           Container(
                      padding: EdgeInsets.all(8.0),
                      height:size.height*0.07 ,
                      width:size.width*0.08 ,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white)

                      ),
                      child: Center(
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: '***',
                            hintStyle: TextStyle(color: Colors.black45),
                            border: InputBorder.none,
                            suffixIcon: IconButton(onPressed: (){
                              

                                showDialog(
                                 context: context,
                                builder: (BuildContext context) {
                                return PopScreen7();
                                },
                                );


                              
                            }, icon: Icon(FontAwesomeIcons.circleQuestion,color: Colors.black,size:18 ,))
                          ),
                        ),
                      )
                     ),
                        ],),
                      ],),
                      SizedBox(height: size.height*0.10,),

                      Row(children: [
                        Checkbox(
                          checkColor: Colors.green,
                          
                          activeColor: Colors.white ,
                          
                          value: _ischeck, onChanged: (bool? newValue){
                          setState(() {
                            _ischeck= newValue?? false;
                          });
                        }),
                        Text('Save this payment method',style: TextStyle(color: Colors.white),),
                        
                      ],),
                      
                      SizedBox(height: size.height*0.06,),
                      Padding(
                        padding: const EdgeInsets.only(left:55.0),
                        child: InkWell(
                          onTap: (){
                            Navigator.pop(context);

                             showDialog(
                            context: context,
                            builder: (BuildContext context) {
                            return PopScreen8();
                            },
                            );

                            




                          },
                          child: Flexible(
                            child: Container(
                              height: size.height*0.05,
                              width: size.width*0.08,
                              decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(40),
                              ),
                              child: Row( mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                Text('Add',style: TextStyle(color: Colors.green.shade900),),
                                
                              ],),
                                                  
                            ),
                          ),
                        ),
                      )





                  

              ],),

               Image.asset('assets/mended/Line3.png'),

               Column( crossAxisAlignment: CrossAxisAlignment.start,
               mainAxisAlignment: MainAxisAlignment.start,  
                children: [
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Text("Order Summary",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
                     ),
                     Container(
                      padding: EdgeInsets.all(8.0),
                      height:size.height*0.1 ,
                      width:size.width*0.16 ,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(children: [
                         Image.asset("assets/mended/token1.png",width:30,height: 40 ,),
                          // SizedBox(width: size.width*0.01,),
                          Text('10 Token',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold),),
                           SizedBox(width: size.width*0.02,),
                         
                          Text('\$10',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                          
               
                          Text(' usd',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold),)
               
                        
                        
                      ],)
                     ),
                       SizedBox(height: size.height*0.03,),
                      Image.asset('assets/mended/Line4.png'),
                      SizedBox(height: size.height*0.02,),
                      Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Subtotal',style: TextStyle(color: Colors.white),),
                           SizedBox(width: size.width*0.06,),
                           Text('\$10',style: TextStyle(color: Colors.white),),

                      ],),
                      SizedBox(height: size.height*0.03,),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Fee',style: TextStyle(color: Colors.white),),
                           SizedBox(width: size.width*0.08,),
                           Text('\$7',style: TextStyle(color: Colors.white),),

                      ],),
                      SizedBox(height: size.height*0.03,),
                       Image.asset('assets/mended/Line4.png'),
                       SizedBox(height: size.height*0.03,),

                       Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                       Text('Total ',style: TextStyle(color: Colors.white),),
                        SizedBox(width: size.width*0.07,),
                            Text('\$17',style: TextStyle(color: Colors.white),)

                      ],),
                        
                    
               
               
                       
               
               
               
               
               
                  
               
                           ],),


            ],),

             
            


           
          ],
        ),
      ),
    );
  }
}



// for the hint of the CVV code


class PopScreen7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Dialog(
      backgroundColor: Colors.transparent, // Make the background transparent
      
      child: Container(
        width: size.width*0.4,
        height: size.height*0.6,
        padding: EdgeInsets.all(16.0),
       
         decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                gradient: const LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color.fromARGB(255, 40, 120, 106),
                                    Color.fromARGB(255, 0, 52, 35),
                                  ],
                                ),
                              ), // Set the color of the Container
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Align(alignment: Alignment.topRight,    child: IconButton(onPressed: (){ Navigator.pop(context);   }, icon: Icon(Icons.close,color: Colors.white,))),
            Text('What is CVV / CVC code?',style: TextStyle(color: Colors.white,fontSize: 20),),
            SizedBox(height:size.height*0.02 ,),
            Container(
              width:size.width*0.2 ,
              height: size.height*0.25,
              decoration: BoxDecoration(
                image: DecorationImage(image:AssetImage('assets/mended/atmcard.png'),fit:BoxFit.cover  )
              ),
            ),
             SizedBox(height:size.height*0.02 ,),
              Text('The CVV/CVC code (Card Verification Value/Code) is located on the back of your credit/debit card on the right side of the white signature strip; it is always the last 3 digits in case of VISA and MasterCard.',style: TextStyle(color: Colors.grey.shade500,fontSize: 15),),

            

             
            


           
          ],
        ),
      ),
    );
  }
}




// for the payment done Dialoge 


class PopScreen8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Dialog(
      backgroundColor: Colors.transparent, // Make the background transparent
      
      child: Container(
        width: size.width*0.5,
        height: size.height*0.75,
        padding: EdgeInsets.all(16.0),
       
         decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                gradient: const LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color.fromARGB(255, 40, 120, 106),
                                    Color.fromARGB(255, 0, 52, 35),
                                  ],
                                ),
                              ), // Set the color of the Container
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          
          children: <Widget>[
             Align(alignment: Alignment.topRight,    child: IconButton(onPressed: (){ 
               Navigator.pop(context);
                             showDialog(
                              context: context,
                             builder: (BuildContext context) {
                              return CustomPopupScreen2();
                                       },
                                      );
              
                }, icon: Icon(Icons.close,color: Colors.white,))),
             Text('Thank you for your purchase',style: TextStyle(color: Colors.white,fontSize: 20),),
             SizedBox(height:size.height*0.07 ,),
             
            Container(
              width:size.width*0.06 ,
              height: size.height*0.12,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
                color: Colors.white,
                 //image: DecorationImage(image:AssetImage('assets/mended/checkicon.png'),fit:BoxFit.fill  )
              
                
              ),
              child: Icon(FontAwesomeIcons.check,color: Colors.green,size:40 ,),
            ),
             SizedBox(height:size.height*0.03 ,),
              Text('Order #123RGR Confirmed',style: TextStyle(color: Colors.grey.shade500,fontSize: 20),),
              SizedBox(height:size.height*0.15 , 
              
              
              child:Image.asset('assets/mended/line2.png',width: size.width*0.2,)),
              Row(
              
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column( crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text('Type',style: TextStyle(fontSize: 17,color: Colors.grey.shade500),),
                     SizedBox(height:size.height*0.01 ,),
                    Text('10 Token (on demand)',style: TextStyle(fontSize: 17,color: Colors.white),),


                  ],),
                  
                   Column( crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text('Card',style: TextStyle(fontSize: 17,color: Colors.grey.shade500),),
                     SizedBox(height:size.height*0.01 ,),
                    Row(
                      children: [
                        Image.asset('assets/mended/mastercard.png'),
                        Text('**** 1234',style: TextStyle(fontSize: 17,color: Colors.white),),
                      ],
                    ),


                  ],),
                  
                   Column( crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text('AMOUNT',style: TextStyle(fontSize: 17,color: Colors.grey.shade500),),
                     SizedBox(height:size.height*0.01 ,),
                    Text('\$17 usd',style: TextStyle(fontSize: 17,color: Colors.white),),


                  ],),

                   Column( crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text('PAYMENT DATE',style: TextStyle(fontSize: 17,color: Colors.grey.shade500),),
                     SizedBox(height:size.height*0.01 ,),
                    Text('13 Jul, 11:17',style: TextStyle(fontSize: 17,color: Colors.white),),


                  ],),



              ],),





            

             
            


           
          ],
        ),
      ),
    );
  }
}




// for the pointment loading dialouge screen


class PopPointmentScreen2 extends StatelessWidget {
   final BuildContext context;

  PopPointmentScreen2(this.context) {
    // Add a delay before navigating to the next screen
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pop(context);
      showDialog(
                                             context: context,
                                                    builder: (BuildContext context) {
                                                             //if user have tokens then 

                                                               return PopPointmentScreen3();
                                                               
                                                               //if token is 0 then call this screen other wise 
                                                               //CustomPopupScreen3(); 
                                                                         },
                                                         );
      // Navigate to the second screen
     
    });
  }



  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Dialog(
      backgroundColor: Colors.transparent, // Make the background transparent
      
      child: Container(
        width: size.width*0.3,
        height: size.height*0.45,
        padding: EdgeInsets.all(16.0),
       
         decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white
                                
                              ), // Set the color of the Container
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width:size.width*0.01 ,),
                Text('Connecting with the Mender',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                IconButton(onPressed: (){ Navigator.pop(context);   }, icon: Icon(Icons.close,color: Colors.black,)),
              ],
            ),
            SizedBox(height: size.width*0.02,),
            Text('Please wait for a mender to approve your session',style: TextStyle(fontSize: 15,color: Colors.black54,fontWeight: FontWeight.bold),),
            SizedBox(height: size.width*0.02,),
           SizedBox(
               height: 100.0, // Set the height to increase the size
                         width: 100.0,  // Set the width to increase the size
                           child: CircularProgressIndicator(
                         backgroundColor: Colors.green,
                       strokeWidth: 8.0,
                        ),
                          ),
                           SizedBox(height: size.width*0.02,),
                           TextButton(onPressed: (){
                             Navigator.pop(context);
                            
                             
                              }, child: Text('cancel',style: TextStyle(color: Colors.black87,fontSize:20 ),))



            
            

             
            


           
          ],
        ),
      ),
    );
  }
}



// for the mender profile 



class PopPointmentScreen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Dialog(
      backgroundColor: Colors.transparent, // Make the background transparent
      
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            width: size.width*0.35,
            height: size.height*0.75,
            padding: EdgeInsets.all(16.0),
           
             decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    gradient: const LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Color.fromARGB(255, 40, 120, 106),
                                        Color.fromARGB(255, 0, 52, 35),
                                      ],
                                    ),
                                  ), // Set the color of the Container
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(width: size.width*0.03,),

                    Text('Find Mender',style: TextStyle(color: Colors.white,fontSize: 20),),
                    Align(alignment: Alignment.topRight,    child: IconButton(onPressed: (){ Navigator.pop(context);   }, icon: Icon(Icons.close,color: Colors.white,))),
                  ],
                ),
                SizedBox(height: size.height*0.08,),

                Container(
                   width: size.width*0.28,
                    height: size.height*0.42,
                   
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.0),
                      
                
                    ),
                    child: Column(children: [
                      SizedBox(height: size.height*0.09,),
                      Text('Dr. Nancy Stark',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold,fontSize: 18),),
                       SizedBox(height: size.height*0.01,),
                      Text('Licensed Professional Counselor PhD, LPC',style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,),),
                      SizedBox(height: size.height*0.02,),
                      Image.asset('assets/mended/Line2.png'),
                       SizedBox(height: size.height*0.01,),
                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal:50.0),
                         child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text('About Doctor',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold,fontSize: 18),),
                              SizedBox(height: size.height*0.01,),
                                Text('Dr. Nancy Stark is a top specialist at London Bridge Hospital at London. She has achieved several awards and recognition for is contribution and service in her own field.',style: TextStyle(color: Colors.black45,fontWeight: FontWeight.bold,fontSize: 12),),
                         
                         
                         
                           ],
                         ),
                       ),
                        SizedBox(height: size.height*0.02,),
                        Image.asset('assets/mended/Line2.png'),
                        SizedBox(height: size.height*0.02,),
                        Row( crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                          
                          children: [
                           Image.asset('assets/mended/Vector.png'),
                              Text('4.5 (1245)',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold,fontSize: 12),),
                               SizedBox(width: size.width*0.03,),
                                   Text('1 Token/Minute',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold,fontSize: 12),),




                        ],)

                        
                        
                      



                    ],),
                
                ),
                SizedBox(height:size.height*0.01 ,),
                Container(height:size.height*0.05 ,
                width: size.width*0.05,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xff458675)
                ),
                child: Center(child: Text('00:29',style: TextStyle(color: Colors.white),)),
                ),
                Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   InkWell(
                    onTap: (){},
                     child: Container(height:size.height*0.06 ,
                                   width: size.width*0.08,
                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(15),
                                     color: Color(0xff008a59)
                                   ),
                                   child: Center(child: Text('Pick another',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                                   ),
                   ),

                 InkWell(
                 
                  onTap: (){
                     // pleasae add the videocall and masseging screen here PopPointmentScreen4
                     Navigator.pop(context);
                       showDialog(
                                             context: context,
                                                    builder: (BuildContext context) {
                                                             

                                                               return PopPointmentScreen5();
                                                               
                                                               
                                                                         },
                                                         );
     
                    


                  },
                   child: Container(height:size.height*0.06 ,
                                 width: size.width*0.08,
                                 decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white
                                 ),
                                 child: Center(child: Text('Start call',style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),)),
                                 ),
                 ),

                ],)
                
                
              

                

                 
                


               
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top:75.0),
            child: Container(
                    width:size.width*0.08 ,
                    height:size.height*0.17 ,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image:DecorationImage(image: AssetImage('assets/mended/doctor.png'),fit: BoxFit.fill)
                    ),
                   
                   
                               ),
          )
        ],
      ),
    );
  }
}






//  Rating pop up Screen is here



class PopPointmentScreen5 extends StatelessWidget {
  
 @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Dialog(
      backgroundColor: Colors.transparent, // Make the background transparent
      
      child: Container(
        width: size.width*0.3,
        height: size.height*0.47,
        padding: EdgeInsets.all(16.0),
       
         decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white
                                
                              ), // Set the color of the Container
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width:size.width*0.01 ,),
                Text('Rate your Mender',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                IconButton(onPressed: (){ Navigator.pop(context);   }, icon: Icon(Icons.close,color: Colors.black,)),
              ],
            ),
            SizedBox(height: size.width*0.02,),
            Text('How would you rate communication between you and  Dr. Kathryn?',style: TextStyle(fontSize: 15,color: Colors.black54,fontWeight: FontWeight.bold),),
            SizedBox(height: size.width*0.03,),
            AnimatedRatingStars(
  initialRating: 3.5,
  minRating: 0.0,
  maxRating: 5.0,
  filledColor: Colors.amber,
  emptyColor: Colors.grey,
  filledIcon: Icons.star,
  halfFilledIcon: Icons.star_half,
  emptyIcon: Icons.star_border,
  onChanged: (double rating) {
    // Handle the rating change here
    print('Rating: $rating');
  },
  
  displayRatingValue: true,
  interactiveTooltips: true,
  customFilledIcon: Icons.star,
  customHalfFilledIcon: Icons.star_half,
  customEmptyIcon: Icons.star_border,
  starSize: size.height*0.06,
  animationDuration: Duration(milliseconds: 300),
  animationCurve: Curves.easeInOut,
  readOnly: false,
),
           
          
                           SizedBox(height: size.width*0.02,),
                           Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               TextButton(onPressed: (){
                                 Navigator.pop(context);
                                
                                 
                                  }, child: Text('skip',style: TextStyle(color: Colors.black87,fontSize:20 ),)),

                                   InkWell(
                    onTap: (){
                      // Rating logic is here
                       Navigator.pop(context);
                    },
                     child: Container(height:size.height*0.06 ,
                                   width: size.width*0.07,
                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(15),
                                     color: Color(0xff008a59)
                                   ),
                                   child: Center(child: Text('submit',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                                   ),
                   ), ],
                           )
             ],
        ),
      ),
    );
  }
}



// pop up screen for the Notifications 





class CustomPopupScreenNotification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Dialog(
      backgroundColor: Colors.transparent, // Make the background transparent
      
      child: Align(
        alignment: Alignment.topRight,
        
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 30),
          width: size.width*0.25,
          height: size.height*0.8,
          padding: EdgeInsets.all(16.0),
         
           decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  gradient: const LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color.fromARGB(255, 40, 120, 106),
                                      Color.fromARGB(255, 0, 52, 35),
                                    ],
                                  ),
                                ), // Set the color of the Container
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
                Align( alignment: Alignment.topRight,  child: IconButton(onPressed: (){Navigator.pop(context);}, icon:Icon(Icons.close,color: Colors.white,))),
                Text('Notifications',style: TextStyle(color: Colors.white,fontSize: 18),),
                SizedBox(height: 20,),
                Image.asset('assets/mended/Line2.png'),
                SizedBox(height: 20,),
                Expanded(child:ListView.builder(          itemBuilder: (BuildContext context, int index){
                  return Column( crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.amber,
                        backgroundImage: AssetImage('assets/mended/imageavatar.png'),
                      ),
                      IconButton(onPressed: (){}, icon: Icon(Icons.close,color: Colors.white,))

                    
                    ],),
                     SizedBox(height: 20,),

                    Text('Joyjammer Recently joined Ansiedad group',style: TextStyle(color: Colors.white),),
                     SizedBox(height: 10,),
                       Image.asset('assets/mended/Line2.png'),
                       SizedBox(height: 10,),

                  ],);
                })),

                ElevatedButton(
                    onPressed: () {},
                      child: Text('Clear all', style: TextStyle(color: Colors.white)),
                     style: ElevatedButton.styleFrom(
                       shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0), // Adjust the radius as needed
                          ),
    
                  ),
                    )

                
              
               
      
              
      
            ],
          ),
        ),
      ),
    );
  }
}


// for the Mender profile popup





class Menderprofilepopup extends StatelessWidget {
 final List<IconData> icons = [
    Icons.share,
    Icons.copy,
    Icons.report,
    Icons.block,
  ];
  final List MenderProfileOptions=['Share this profile','Copy profile URL','Report','Block'];



  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Dialog(
      backgroundColor: Colors.transparent, // Make the background transparent
      
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 30),
        width: size.width*0.3,
        height: size.height*0.6,
        padding: EdgeInsets.all(16.0),
       
         decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                gradient: const LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color.fromARGB(255, 40, 120, 106),
                                    Color.fromARGB(255, 0, 52, 35),
                                  ],
                                ),
                              ), // Set the color of the Container
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
              Align( alignment: Alignment.topRight,  child: IconButton(onPressed: (){Navigator.pop(context);}, icon:Icon(Icons.close,color: Colors.white,))),
              Text('Options',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize:18 ),),
              SizedBox(height: size.height*0.01,),
               Container(
          height:size.height*0.4 ,
          width: size.width*0.25,
          decoration: BoxDecoration(
            color: Color(0xff549586),
            borderRadius: BorderRadius.circular(30)
    
          ),
          child: Center(
            child: ListView.builder( itemCount: 4,   itemBuilder: (BuildContext context ,int index){
              return InkWell(
                onTap: (){
                  print('click on the buttons');
                },
                child: Column(
                  children: [
                    ListTile(
                      
                      leading: Icon(icons[index],color: Colors.white,),
                      title: Text(MenderProfileOptions[index],style: TextStyle(color: Colors.white),),
                     
                      //shape: Border.symmetric(horizontal: BorderSide(color: Colors.white)),
                    ),
                    Container(
                          margin: EdgeInsets.symmetric(vertical: 8.0),
                           height: 1.0, // Adjust the height as needed
                                color: Colors.white, // Line color
                                ),
                  ],
                ),
              );
            }),
          ),
        ),
              
            
      
            
      
          ],
        ),
      ),
    );
  }
}




































// for the popupscreens Button with icons

class MendedCustomElevatedButtonPOPUP extends StatelessWidget {
  final String title;
  final VoidCallback callback;
  final double width;
  final double height;
  final IconData iconData;

  const MendedCustomElevatedButtonPOPUP({
    required this.title,
    required this.callback,
    this.width = 150,
    this.height = 55,
    super.key,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fitHeight,
            image: AssetImage("assets/mended/elevated_button.png"),
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(1.0),
            child: InkWell(
              onTap: callback,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    iconData,
                    color: Colors.white,
                  ),
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


