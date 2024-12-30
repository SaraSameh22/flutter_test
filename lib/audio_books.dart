import 'package:flutter/material.dart';


Color primary = Color(0XFF010104);
Color secondary = Color(0XFF4838D1);


class AudioBooks extends StatelessWidget {
   AudioBooks({super.key});
  List<String> categories =[
    "Art", "Business" , "Comedy" , "Drama" ,];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFFFFFF),
      appBar: AppBar(
        title: Image(image: AssetImage('assets/images/Logo.png')),
        backgroundColor: Color(0XFFFFFFFF),
        actions: [
          IconButton(
            icon: ImageIcon( AssetImage('assets/images/Setting.png'),
              size: 50.0, color: secondary,
            ), onPressed: () {  },
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              SizedBox(height: 16,),
              Row(
                children: [
                  Text('Categories' , style: TextStyle( fontSize: 16 , fontWeight: FontWeight.bold),),
                  Spacer(),
                  Text('See more' , style: TextStyle( fontSize: 14 ,color: secondary),)
                ],
              ),
              SizedBox(height: 16,),
              SizedBox(
                  height: 40,
                  child: ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(width: 16,),
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      return
                        Padding(
                          padding: EdgeInsets.all(8),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0XFFF5F5FA),
                            ),
                            child: Text(categories[index], style: TextStyle(
                                fontSize: 16 ,fontWeight: FontWeight.w400 , color: Color(0XFF2E2E5D)), ),
                          ),
                        );
                    },
                  ),
                ) ,
              SizedBox(height: 16,),
              Row(
                children: [
                  Text('Recommended For You' , style: TextStyle( fontSize: 16 , fontWeight: FontWeight.bold),),
                  Spacer(),
                  Text('See more' , style: TextStyle( fontSize: 14 ,color: secondary),)
                ],
              ),
              SizedBox(height: 16,),
              SizedBox(
                height: 300,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) => SizedBox(height: 16,),
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return  Padding(
                      padding: EdgeInsets.all(8),
                      child: Row(
                        children: [
                          Container(
                              width: 200.0,  height: 300.0,
                              child: Image(image: AssetImage('assets/images/image1.png' ,) , fit: BoxFit.cover,)),
                          SizedBox(width: 10,),
                          Image(image: AssetImage('assets/images/image2.png')),
                        ],
                      ),
                    );
                  },
                ),
              ) ,
              SizedBox(height: 16,),
              Row(
                children: [
                  Text('Best Seller' , style: TextStyle( fontSize: 16 , fontWeight: FontWeight.bold),),
                  Spacer(),
                  Text('See more' , style: TextStyle( fontSize: 14 ,color: secondary),)
                ],
              ),
              SizedBox(height: 16,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0XFFF5F5FA),
                    ),
                    width: 350, height: 144,
                child: Row(
                  children:[
                  Container(
                    padding: EdgeInsets.all(12),
                          width: 150.0,  height: 250.0,
                          child:
                          Image(image: AssetImage('assets/images/image1.png' ,) ,
                            fit: BoxFit.fill,),),
                    SizedBox(width: 16,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Light Mage" , style: TextStyle( fontSize: 24 , fontWeight: FontWeight.bold),),
                        Text("Laurie Forest " ,style: TextStyle( fontSize: 16 ,
                            fontWeight: FontWeight.bold , color: Color(0XFF6A6A8B)),)
                      ],
                    )

                  ],
                ),
              ),
            ),

             //  SizedBox(
             //    // height: 300,
             //    child: ListView.separated(
             //      scrollDirection: Axis.horizontal,
             //      separatorBuilder: (context, index) => SizedBox(width: 16,),
             //      itemCount: 1,
             //      itemBuilder: (context, index) {
             //        return
             //        Row(
             //          children:[
             //            // Padding(
             //            //    padding: EdgeInsets.symmetric(horizontal: 16),
             //            //  child:
             //            Container(
             //                width: 150.0,  height: 250.0,
             //                child:
             //                Image(image: AssetImage('assets/images/image1.png' ,) ,
             //                  fit: BoxFit.fill,),),
             //          // ),
             //            SizedBox(width: 16,),
             //            Column(
             //              mainAxisAlignment: MainAxisAlignment.center,
             //              crossAxisAlignment: CrossAxisAlignment.start,
             //              children: [
             //                Text("Light Mage" , style: TextStyle( fontSize: 24 , fontWeight: FontWeight.bold),),
             //                Text("Laurie Forest " ,style: TextStyle( fontSize: 16 ,
             //                    fontWeight: FontWeight.bold , color: Color(0XFF6A6A8B)),)
             //              ],
             //            )
             //
             //          ],
             //        );
             //
             //
             //
             //
             //          Container(
             //            decoration: BoxDecoration(
             //              borderRadius: BorderRadius.circular(12),
             //              color: Color(0XFFF5F5FA),
             //            ),
             //            //width: 350, height: 144,
             //            child:
             //
             //            Container(
             //              width: 150.0,  height: 250.0,
             //              child:
             //              Image(image: AssetImage('assets/images/image1.png' ,) ,
             //                fit: BoxFit.fill,),),
             //
             //
             //
             //
             //
             //
             //
             //            Row(
             //              children:[
             //                // Padding(
             //                //    padding: EdgeInsets.symmetric(horizontal: 16),
             //                //  child:
             //                Container(
             //                    width: 150.0,  height: 250.0,
             //                    child:
             //                    Image(image: AssetImage('assets/images/image1.png' ,) ,
             //                      fit: BoxFit.fill,),),
             //              // ),
             //                SizedBox(width: 16,),
             //                Column(
             //                  mainAxisAlignment: MainAxisAlignment.center,
             //                  crossAxisAlignment: CrossAxisAlignment.start,
             //                  children: [
             //                    Text("Light Mage" , style: TextStyle( fontSize: 24 , fontWeight: FontWeight.bold),),
             //                    Text("Laurie Forest " ,style: TextStyle( fontSize: 16 ,
             //                        fontWeight: FontWeight.bold , color: Color(0XFF6A6A8B)),)
             //                  ],
             //                )
             //
             //              ],
             //            ),
             //        );
             //     },
             //   ),
             // ) ,

            ]
          ),
        ),
      ),



      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon( AssetImage('assets/images/Home.png'),color:secondary ), label: 'Home', ),
          BottomNavigationBarItem(
            icon: ImageIcon( AssetImage('assets/images/Search.png'), ), label: 'Search', ),
          BottomNavigationBarItem(
            icon: ImageIcon( AssetImage('assets/images/Document.png'), ), label: 'Document', ),
        ],
        showSelectedLabels: true,
        showUnselectedLabels: true
        ,
        onTap: (index) { },
      ),

    );
  }
}




