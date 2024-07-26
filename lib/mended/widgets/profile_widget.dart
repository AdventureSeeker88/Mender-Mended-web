
import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:mended_mender/mended/widgets/custom_gridWidget.dart';

import 'package:mended_mender/mended/widgets/next_session_widget.dart';
import 'package:mended_mender/mended/widgets/nextsession_reuablecardonly.dart';
import 'package:mended_mender/mended/widgets/popupScreen_widget.dart';
import 'package:mended_mender/mended/widgets/Flickcard_widget.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  bool isvisible= true;
  bool isvisible2= false;
  bool isvisible3= false;
  bool isvisible4=false;
  bool isvisible5= false;
  
  @override
  void initState() {
    super.initState();
    // Initialize TabController
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
     print('isvisible: $isvisible, isvisible2: $isvisible2, isvisible3: $isvisible3,isvisible4: $isvisible4 , isvisible5: $isvisible5');
    Size size = MediaQuery.of(context).size;
    // for the main profile screen
   

    return Stack(
      children: [
        Visibility(
          visible: isvisible,
          child: Column( mainAxisSize: MainAxisSize.max,
          children: [
          
            Image.asset('assets/mended/profiletext.png'),
          Stack( alignment: Alignment.center,
          children: [
          Image.asset('assets/mended/pathprofile.png'),
          Padding(
          padding: const EdgeInsets.only(left:115.0),
          child: ListTile(
            leading: ClipRRect(
              
              borderRadius: BorderRadius.circular(24),
              child:CircleAvatar(
                     radius: 24.0,
                     backgroundImage: AssetImage(
                   'assets/mender/images1.jpg'),
                     ),
              
          
            ),
            title: Text('Magicwhirl Star',style: TextStyle(color: Colors.white),),
            subtitle: Text('The sun always shine the next morning',style: TextStyle(color: Colors.grey.shade500),
          
           ) ),
          ),
          
          
          ],),
          Row( mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Image.asset('assets/mended/token5.png'),
          SizedBox(width: 5,),
          Text('120 token-',style: TextStyle(color: Colors.grey.shade500),),
          TextButton(onPressed: (){
          showDialog(context: context, builder: (BuildContext context){
            return  CustomPopupScreen4();
          });
          
          
          
          }, child:Text('buy more',style: TextStyle(color: const Color.fromARGB(255, 40, 149, 48)),), )
          
          
          ],),
          SizedBox(height: size.height*0.02,),
          
          Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Container(
          height: size.height*0.07,
          width: size.width*0.1,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(40),
            border: Border.all(color: Color.fromARGB(255, 5, 162, 78))
          ),
          child: Column( mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text('8.1 M',style: TextStyle(color: Colors.white),),
            Text('views',style: TextStyle(color: Colors.grey.shade500),),
          
          ],),
          ),
           Container(
          height: size.height*0.07,
          width: size.width*0.1,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(40),
            border: Border.all(color:Color.fromARGB(255, 5, 162, 78))
          ),
          child: Column( mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text('4237',style: TextStyle(color: Colors.white),),
            Text('support',style: TextStyle(color: Colors.grey.shade500),),
          
          ],),
          )
          
          ],),
           SizedBox(height: size.height*0.04,),
          
          Row( mainAxisAlignment: MainAxisAlignment.center,
          children: [
          InkWell(
          onTap: (){
            setState(() {
              isvisible=!isvisible;
              isvisible2= !isvisible2;
            });
          },
          child: Column(
            children: [
              Icon(FontAwesomeIcons.users,color: Colors.white,),
              Text('Buddy list',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
            ],
          ),
          ),
          SizedBox(width: size.width*0.02,),
          Image.asset('assets/mended/Line5.png'),
          SizedBox(width: size.width*0.02,),
          
          
           InkWell(
           onTap: (){
            setState(() {
             isvisible=!isvisible;
             isvisible3=!isvisible3;  
                 
                 
            });
           },
          child: Column(
            children: [
              Icon(FontAwesomeIcons.user,color: Colors.white,),
              Text('mender list',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
            ],
          ),
          ),
          SizedBox(width: size.width*0.02,),
          Image.asset('assets/mended/Line5.png'),
          SizedBox(width: size.width*0.02,),
          
           InkWell(
           onTap: (){
            setState(() {
              isvisible=!isvisible;
              isvisible4=!isvisible4;
            });
           },
          child: Column(
            children: [
              Icon(FontAwesomeIcons.message,color: Colors.white,),
              Text('Messages',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
            ],
          ),
          ),
          
          
          
          ],),
          SizedBox(height: size.height*0.01,),
          // TabBar for the icons
          Stack( alignment: Alignment.center,
            children: [
                Image.asset('assets/mended/mask.png'),
          
          
             TabBar(
                controller: _tabController,
                indicatorColor: Colors.transparent,
                indicatorSize: TabBarIndicatorSize.label,
                //isScrollable: true,
                tabs: [
                  Tab(icon: Image.asset('assets/mended/icon1.png')),
                  
                
                  Tab(icon: Image.asset('assets/mended/icon2.png')),
                  Tab(icon: Image.asset('assets/mended/icon3.png')),
                ],
              ),
            ],
          ),
          
          // TabBarView for the content
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                // Content for the first icon (index 0)
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: getMemeWidget(size),
                ),
                // Content for the second icon (index 1)
                ListView.builder(itemBuilder: (BuildContext context, int index){
                  return getLikepage(size);
                }),
                // SingleChildScrollView(
                //   child: getLikepage(size),
                // ),
                // Content for the third icon (index 2)
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: getSessionDetails(),
                ),
              ],
            ),
          ),
          
          ],
          ),
        ),
        
        
        
        
        // for the buddy list




        Visibility(
        visible: isvisible2,
        child: Column(
          
          children: [
            Row( mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Padding(
                padding: const EdgeInsets.only(bottom:15.0),
                child: IconButton(onPressed: (){
                  setState(() {
                    isvisible2=!isvisible2;
                    isvisible=true;
                  });
              
                
                }, icon: Icon(Icons.arrow_back_ios,color: Colors.white,size: 35,)),
              ),
              Image.asset('assets/mended/BuddyList.png')
            ],),
            SizedBox(height:size.height*0.02 ,),

            Expanded(
             
              child: ListView.builder(     itemBuilder: (BuildContext context, int index){
                return Container(
                   margin: EdgeInsets.symmetric(vertical: 8.0),
                height:size.height*0.1 ,
                width:size.width*0.25 ,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white
                ),
                child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/mended/imageavatar.png'),
                        backgroundColor: Colors.amber,
                      ),
                      SizedBox(width: size.width*0.01,),
                      TextButton( 
                        onPressed: (){ 
                          setState(() {
                            isvisible2=!isvisible2;
                          isvisible5=!isvisible5; 
                          });   



                        },         
                      
                      
                      
                       child: Text('Snugglebug',style: TextStyle(color: Colors.green),))    
                  
                    ],),
                  ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Row(children: [
                      InkWell(
                                   onTap: () {
                      // Add your onTap logic here
                                   },
                                   child: Container(
                      height: 30,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color(0xffe6f7f1),
                      ),
                      child: const Center(
                        child: Text(
                          'messages',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff0fbf80),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                                   ),
                                 ),
                     
                                   
                      SizedBox(width: size.width*0.01,),
                      InkWell(
                                   onTap: () {
                      // Add your onTap logic here
                                   },
                                   child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xfffdecef),
                      ),
                      child: const Center(
                        child: Icon(Icons.delete_outline,color: Colors.red,)
                      ),
                                   ),
                                 ),
                      
                     
                   
                                   ],),
                   ),
            
            
                ],),
            
              );
            
              }),
            )
            
            

        
          ],
          
          ),
      ),

      // for the mender list

       Visibility(
        visible:isvisible3,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        // Add any necessary logic here
                        isvisible3=!isvisible3;
                        isvisible=!isvisible;
                      });
                    },
                    icon: Icon(Icons.arrow_back_ios, color: Colors.white, size: 35),
                  ),
                ),
                Image.asset('assets/mended/menderlist.png'),
              ],
            ),


            // Additional widgets for the buddy list content go here

            SizedBox(height: size.height*0.01,),
            Expanded(
              child: ListView.builder(       itemBuilder: (BuildContext context, int index){
                return Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical:10.0 ),
                      height:size.height*0.30 ,
                      width:size.width*0.3 ,
                     
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(35),

                      ),
                      child: Column( mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                        Row( mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                          Padding(
                            padding: const EdgeInsets.only(left:40.0),
                            child: Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(top:10.0),
                                child: Container(
                                   height:size.height*0.14 ,
                                   width:size.width*0.07 ,
                                   decoration: BoxDecoration(
                                    
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(image: AssetImage('assets/mender/images1.jpg'),fit: BoxFit.cover)
                                   ),
                                               
                                ),
                              ),
                              SizedBox(height: size.height*0.01,),
                              Row(children: [
                                Image.asset('assets/mended/Vector.png',),
                                Text('4.5 (1245)',style: TextStyle(color: Colors.black54),)
                              ],)
                          
                          
                            ],),
                          ),
                         SizedBox(width: 10,),
                          Column( crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            Text('Dr. Shruti Kedia',style: TextStyle(color: Colors.black87,fontSize: 15,fontWeight: FontWeight.bold),),
                           Text('Licensed Professional Counselor PhD, LPC',softWrap: true,style: TextStyle(color: Colors.green),)

                          ],),
                          
                        ],),
                        Row( mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                           // SizedBox(width: size.width*0.15,),
                          Padding(
                            padding: const EdgeInsets.only(left:60.0),
                            child: Text('1 Token/Minute',style: TextStyle(color: Colors.black54),),
                          ),
                          
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: ElevatedButton(style: ElevatedButton.styleFrom(fixedSize:Size(100, 35),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),    onPressed: (){}, child: Text('Contact',style: TextStyle(color: Colors.white),)),
                          )
                        ],)
                      ],),
                    ),
                  ],
                );
              }),
            )
          ],
        ),
      ),

      // for the Message screen widgets 

      Visibility(
        visible:isvisible4,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        // Add any necessary logic here
                        isvisible4=!isvisible4;
                        isvisible=!isvisible;
                      });
                    },
                    icon: Icon(Icons.arrow_back_ios, color: Colors.white, size: 35),
                  ),
                ),
                Image.asset('assets/mended/Messages.png'),
              ],
            ),


            // Additional widgets for the buddy list content go here

            SizedBox(height: size.height*0.01,),
            Container(
                  margin: EdgeInsets.symmetric(vertical:10.0 ),
                  height:size.height*0.07 ,
                  width:size.width*0.4 ,
                 
                  decoration: BoxDecoration(
                    color: Color(0xff45695f),
                    borderRadius: BorderRadius.circular(10),

                  ),
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        hintStyle: TextStyle(color: Colors.grey.shade100),
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search,color: Colors.grey.shade100,size: 30,)
                      ),
                    ),
                  )
                ),
                 SizedBox(height: size.height*0.01,),
            Expanded(
              child: ListView.builder(       itemBuilder: (BuildContext context, int index){
                return Container(
                  margin: EdgeInsets.symmetric(vertical:10.0 ),
                  height:size.height*0.15 ,
                  width:size.width*0.4 ,
                 
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(35),

                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right:40.0),
                        child: Align( alignment: Alignment.topRight,    child: Text('9:40 AM',style: TextStyle(color: Colors.white),)),
                      ),
                      ListTile(
                        leading: Image.asset('assets/mended/imageavatar.png',),
                        title: Text('Snugglebug',style: TextStyle(color: Colors.white),),
                        subtitle: Text('That\'s great, I can help you with that! What type of product are you...',style: TextStyle(color: Colors.grey.shade100),),
                        trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,color: Colors.white,),)
                        
                      ),
                      SizedBox(height: 10,),
                      Image.asset('assets/mended/Line2.png')
                    ],
                  ),
                );
              }),
            )
          ],
        ),
      ),

     
     
     
      // for the Mender profle 

        Visibility(
          visible: isvisible5,
          child: menderProfile(),
        ),
        


      



      
      ],
    ); 
  }

  void handleTap(int index) {
    // Update the TabController to switch to the corresponding tab
    _tabController.animateTo(index);
  }
}






// for the memes that a shown in the profile 








// for the favourite or like on the memes


Widget getLikepage (Size size){
  return Column(children: [
    Container(
      height:size.height*0.14 ,
      width: size.width*0.32,
      color: Colors.transparent,
      child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column( mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Image.asset('assets/mended/imageavatar.png'),
            SizedBox(height: size.height*0.01,),
            Text('Roy Smith and Kai Liu liked your meme #naruto',style: TextStyle(color: Colors.white),),
          ],),
          Container(
            height: size.height*0.10,
            width:size.width*0.05 ,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/mended/funny2.jpg'),fit: BoxFit.fill) ,
              borderRadius: BorderRadius.circular(15),
            ),
          )


        ],
       
      ),
    ),
    SizedBox(height: size.height*0.03,),
    Image.asset('assets/mended/Line2.png'),
    

  
  ],);
}


// for the session in profile 

Widget getSessionDetails(){
  return Column(children: [
     SessionCard(date: '07 September 2023', buddyName: 'Dr. Alejandra Vega', time: '12.00 - 16.00',width:350 ,),
      SessionCard(date: '08 September 2023', buddyName: 'Dr. Alejandra Vega', time: '12.00 - 16.00',width:350 ,),
       SessionCard(date: '09 September 2023', buddyName: 'Dr. Alejandra Vega', time: '12.00 - 16.00',width:350 ,),
        SessionCard(date: '10 September 2023', buddyName: 'Dr. Alejandra Vega', time: '12.00 - 16.00',width:350 ,),
  ],);
}



// for the Mender profile 

class menderProfile extends StatefulWidget {
  const menderProfile({super.key});

  @override
  State<menderProfile> createState() => _menderProfileState();
}

class _menderProfileState extends State<menderProfile> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    // Initialize TabController
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Image.asset('assets/mended/profiletext.png'),
        Stack(
          alignment: Alignment.center,
          children: [
            Image.asset('assets/mended/pathprofile.png'),
            Column(children: [
              Align( alignment: Alignment.topRight,   child: IconButton(onPressed: (){
                showDialog(context: context, builder: (BuildContext context){
                  return Menderprofilepopup();
                });


              }, icon: Icon(FontAwesomeIcons.ellipsis,color:Colors.white ,))),
               CircleAvatar(
                  radius: 30.0,
                  backgroundColor: Colors.amber,
                  backgroundImage: AssetImage('assets/mended/imageavatar.png'),
                ),
                SizedBox(height: size.height*0.01,),
                Text('Magicwhirl Star', style: TextStyle(color: Colors.white)),
              
            ],),
          ],
        ),
        Text(
                  'The sun always shines the next morning',
                  style: TextStyle(color: Colors.grey.shade500),
                ),
        SizedBox(height: size.height * 0.02),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: size.height * 0.07,
              width: size.width * 0.1,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(40),
                border: Border.all(color: Color.fromARGB(255, 5, 162, 78)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('8.1 M', style: TextStyle(color: Colors.white)),
                  Text('views', style: TextStyle(color: Colors.grey.shade500)),
                ],
              ),
            ),
            Container(
              height: size.height * 0.07,
              width: size.width * 0.1,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(40),
                border: Border.all(color: Color.fromARGB(255, 5, 162, 78)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('4237', style: TextStyle(color: Colors.white)),
                  Text('support', style: TextStyle(color: Colors.grey.shade500)),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: size.height * 0.04),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                setState(() {});
              },
              child: Column(
                children: [
                  Icon(FontAwesomeIcons.user, color: Colors.white),
                  Text('Given Tokens', style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            SizedBox(width: size.width * 0.02),
            Image.asset('assets/mended/Line5.png'),
            
            
            SizedBox(width: size.width * 0.02),
            InkWell(
              onTap: () {
                setState(() {
                  // Handle tap for Messages
                });
              },
              child: Column(
                children: [
                  Icon(FontAwesomeIcons.message, color: Colors.white),
                  Text('Messages', style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: size.height * 0.01),
        Stack(
          alignment: Alignment.center,
          children: [
            Image.asset('assets/mended/Maskgroup.png'),
            Image.asset('assets/mended/Line5.png'),
            TabBar(
              controller: _tabController,
              indicatorColor: Colors.transparent,
              indicatorSize: TabBarIndicatorSize.label,
              tabs: [
                Tab(icon: Image.asset('assets/mended/Memes1.png')),
                Tab(icon: Image.asset('assets/mended/Flicks1.png')),
              ],
            ),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: getMemeWidget(size),
              ),
              Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return getflickCard(size);
                  }),
            ),
            ],
          ),
        ),
      ],
    );
  }
}

