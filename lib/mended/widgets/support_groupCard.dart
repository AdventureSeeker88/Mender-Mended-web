import 'package:flutter/material.dart';


class SupportGroupCard extends StatelessWidget {
  final String title;
  final String labelText1;
  final String labelText2;
  final String backgroundImageName;

  SupportGroupCard({
    required this.title,
    required this.labelText1,
    required this.labelText2,
    required this.backgroundImageName,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.37,
      width: size.width * 0.22,
      child: Stack(
        children: [
          Container(
            color: Colors.transparent,
            padding: EdgeInsets.all(30),
            child: Container(
              padding: EdgeInsets.all(5).copyWith(top: 24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.lock,
                      size: 20,
                      color: Colors.black45,
                    ),
                    title: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: labelText1,
                            style: TextStyle(
                              color: Colors.black45,
                              fontSize: 12,
                            ),
                          ),
                          TextSpan(
                            text: ' Group',
                            style: TextStyle(
                              color: Colors.black45,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.group,
                      size: 20,
                      color: Colors.black45,
                    ),
                    title: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: labelText2,
                            style: TextStyle(
                              color: Colors.black45,
                              fontSize: 12,
                            ),
                          ),
                          TextSpan(
                            text: ' Members',
                            style: TextStyle(
                              color: Colors.black45,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      showDialog(context: context, builder: (BuildContext context){
            return  PopPointmentScreen2(context);
          });
                    },
                    child: Container(
                      height: 30,
                      width: 150,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/mended/joinGroup.png'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: -10,
            left: size.width * 0.07,
            child: Image.asset(backgroundImageName),
          ),
        ],
      ),
    );
  }
}



class PopPointmentScreen2 extends StatelessWidget {
   final BuildContext context;

  PopPointmentScreen2(this.context) {
    // Add a delay before navigating to the next screen
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pop(context);
     
     
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
                Text('Connecting to the support group',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                IconButton(onPressed: (){ Navigator.pop(context);   }, icon: Icon(Icons.close,color: Colors.black,)),
              ],
            ),
            SizedBox(height: size.width*0.02,),
            Text('Please wait for you join the group',style: TextStyle(fontSize: 15,color: Colors.black54,fontWeight: FontWeight.bold),),
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
