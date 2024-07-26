import 'package:flutter/material.dart';

Widget getMemeWidget(Size size) {
    // Replace these with actual image URLs from your backend
    List<String> imageUrls = [
      'assets/mended/funny3.jpg',
      'assets/mended/funny2.jpg',
      'assets/mended/funny4.jpeg',
      'assets/mended/funny5.jpeg',
      'assets/mended/funny6.jpg',
      'assets/mended/funny7.jpg',
      'assets/mended/funny8.jpg',
      'assets/mended/funny9.jpeg',
      'assets/mended/funny10.jpeg',
     'assets/mended/funny3.jpg',
      'assets/mended/funny2.jpg',
      'assets/mended/funny4.jpeg',
      'assets/mended/funny5.jpeg',
      'assets/mended/funny6.jpg',
      'assets/mended/funny7.jpg',
      'assets/mended/funny8.jpg',
      'assets/mended/funny9.jpeg',
      'assets/mended/funny10.jpeg',
      'assets/mended/funny3.jpg',
      'assets/mended/funny2.jpg',
      'assets/mended/funny4.jpeg',
      'assets/mended/funny5.jpeg',
      'assets/mended/funny6.jpg',
      'assets/mended/funny7.jpg',
      
      
          
      
    ];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 3,
                      spreadRadius: 1.0,
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Place your image here using CachedNetworkImage or Image.network
                    GridView.builder(
                      
                        shrinkWrap: true,
                           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                 crossAxisCount: 4,
                                 mainAxisExtent: 120,
                                      crossAxisSpacing: 24,
                                      mainAxisSpacing: 0
                                      
                                ),
                           itemCount: imageUrls.length, // Replace "imageUrls." with "imageUrls.length"
                                     itemBuilder: (context, index) {
                                           return Image.asset(imageUrls[index],width:size.width*0.3 ,height:size.height*0.2 ,fit: BoxFit.cover,); // Use index to display different images
                                                       },
                                                            )
                            
                    
                    
                    // Image.asset(
                    //   imageUrls[0], // Use an actual image URL
                    //   width: size.width,
                    //   height: size.height * 0.53,
                    //   fit: BoxFit.cover,
                    // ),
                    // // Other widgets and text can be added as per your requirements
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Color(0xff29E2A0),
                      shape: BoxShape.circle,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black38,
                          blurRadius: 4,
                          spreadRadius: 3.0,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }




