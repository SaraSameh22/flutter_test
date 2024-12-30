import 'package:flutter/material.dart';
import 'package:projects/exercise.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';



class Moody extends StatelessWidget {
   Moody({super.key});
  final controller = PageController(viewportFraction: 1, keepPage: true);

  @override
  Widget build(BuildContext context) {

    final pages = List.generate( 3,
          (index) =>
          Container(
           margin: EdgeInsets.symmetric(horizontal: 5,),
            decoration: BoxDecoration(
             color: Color(0XFFECFDF3),
              borderRadius: BorderRadius.circular(16),
            ),

            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color(0XFFECFDF3),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Positive vibes',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0XFF344054),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Boost your mood with \npositive vibes',
                          style: TextStyle(fontSize: 16, color: Colors.black , ),
                        ),
                        SizedBox(height:24,),
                        Row(
                            children:[
                              Icon(Icons.play_circle_fill, color: Colors.green, size: 30),
                              SizedBox(width: 8,),
                              Text(
                                '10 mins',
                                style: TextStyle(color: Colors.grey, fontSize: 14),),
                            ]
                          // Spacer(), // Space to push text to the bottom
                        ),
                      ],
                    ),
                  ),
                ),
                Image.asset('assets/images/character.png')
              ],
            ),
          ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Padding( padding: EdgeInsets.only(left: 20.0),  child: Image(image: AssetImage('assets/images/logo2.png')),),
        title: Text("Moody" ,
          style: TextStyle(
              fontWeight: FontWeight.bold ,
              fontSize: 24),),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: ImageIcon( AssetImage('assets/images/bell.png'),
              size: 50.0,
            ), onPressed: () {  },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('Hello,',  style: TextStyle(
                      fontSize: 20),),
                  SizedBox(height: 8),
                  Text('Sara Rose',  style: TextStyle(
                      fontWeight: FontWeight.bold ,
                      fontSize: 20),)
                ],
              ),
              Text('How are you feeling today ?'
                ,  style: TextStyle(
                  fontWeight: FontWeight.w400 ,
                  fontSize: 16),),
              SizedBox(height: 20),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(image: AssetImage('assets/images/fram1.png')),
                  Image(image: AssetImage('assets/images/fram2.png')),
                  Image(image: AssetImage('assets/images/fram3.png')),
                  Image(image: AssetImage('assets/images/fram4.png')),
                ],
              ) ,
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Love' , style: TextStyle(
                      fontWeight: FontWeight.bold ,
                      fontSize: 20),),
                  Text('Cool', style: TextStyle(
                      fontWeight: FontWeight.bold ,
                      fontSize: 20),),
                  Text('Happy', style: TextStyle(
                      fontWeight: FontWeight.bold ,
                      fontSize: 20),),
                  Text('Sad' , style: TextStyle(
                      fontWeight: FontWeight.bold ,
                      fontSize: 20),),
                ],
              ),
              SizedBox(height: 16,),
              Row(
                children: [
                  Text('Features' , style: TextStyle( fontSize: 16 , fontWeight: FontWeight.bold , color: Colors.black),),
                  Spacer(),
                  Text('See more >' , style: TextStyle( fontSize: 14  , color: Color(0XFF027A48)),)
                ],
              ),
              SizedBox(height: 16,),
              SizedBox(
                height: 180,
                child: PageView.builder(
                  controller: controller,
                  itemBuilder: (_, index) {
                    return pages[index % pages.length];
                  },
                ),
              ),
              SizedBox(height: 10),
              Center(
                  child: SmoothPageIndicator(
                    controller: controller,
                    count:  3,
                    axisDirection: Axis.horizontal,
                    effect:  SlideEffect(
                        spacing:  6.0,
                        radius:  10.0,
                        dotWidth:  6.0,
                        dotHeight:  6.0,
                        paintStyle:  PaintingStyle.fill,
                        strokeWidth: 50,
                        dotColor:  Color(0XFFD9D9D9),
                        activeDotColor:  Color(0XFF98A2B3)
                    ),
                  ),
                //     SizedBox(height: 10),
              ) ,
              SizedBox(height: 10),
              Row(
                children: [
                  Text('Exercise' , style: TextStyle( fontSize: 16 , fontWeight: FontWeight.bold , color: Colors.black),),
                  Spacer(),
                  Text('See more >' , style: TextStyle( fontSize: 14  , color: Color(0XFF027A48)),)
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Exercise(
                            exerImage: 'relax' ,
                            exerColor: Color(0XFFF9F5FF) ,
                            exerName: 'Relaxation'),
                  ),
                  SizedBox(width: 24,),
                  Expanded(
                    child: Exercise(
                            exerImage: 'meditate' ,
                            exerColor: Color(0XFFFDF2FA) ,
                            exerName: 'Meditation'),
                  )

                  ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Exercise(
                        exerImage: 'breath' ,
                        exerColor: Color(0XFFFFFAF5) ,
                        exerName: 'Breathing'),
                  ),
                  SizedBox(width: 24,),
                  Expanded(
                    child: Exercise(
                        exerImage: 'yoga' ,
                        exerColor: Color(0XFFF0F9FF) ,
                        exerName: 'Yoga'),
                  )
                ],
              ),
            ],
          ),
        ),
      ) ,








      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,

        items: [
          BottomNavigationBarItem(
            icon: ImageIcon( AssetImage('assets/images/Home_icon.png'),color: Colors.green, ), label: '', ),
          BottomNavigationBarItem(
            icon: ImageIcon( AssetImage('assets/images/grid_icon.png'), ), label: '', ),
          BottomNavigationBarItem(
            icon: ImageIcon( AssetImage('assets/images/calender_icon.png'), ), label: '',  ),
          BottomNavigationBarItem(
          icon: ImageIcon( AssetImage('assets/images/user.png'), ), label: '', ),
        ],
        // showSelectedLabels: false,
        // showUnselectedLabels: false,
        onTap: (index) { },
      ),


    );



  }
}
