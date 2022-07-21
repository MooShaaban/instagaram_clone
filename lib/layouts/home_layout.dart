import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
            'Instagram',
          style: GoogleFonts.pacifico(
            textStyle: TextStyle(
              fontSize: 27
            )
          ),
        ),
        actions: [
          Image.asset('assets/images/add.png', color: Colors.white, height: 25, width: 25,),
          SizedBox(width: 20,),
          Image.asset('assets/images/heart.png', color: Colors.white, height: 25, width: 25,),
          SizedBox(width: 20,),
          Image.asset('assets/images/messenger.png', color: Colors.white,height: 25,width: 25,),
          SizedBox(width: 15,),
        ],
        elevation: 0.0,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        backgroundColor: Colors.black,

      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
          elevation: 0,
          currentIndex: 0,

          items: [
        BottomNavigationBarItem(backgroundColor :Colors.black, icon: Image.asset('assets/images/home.png', color: Colors.white, width: 25,height: 25,),label: '',),
        BottomNavigationBarItem(icon: Image.asset('assets/images/search.png', color: Colors.white, width: 25,height: 25,), label: ''),
        BottomNavigationBarItem(icon: Image.asset('assets/images/reels.png', color: Colors.white, width: 25,height: 25,), label: ''),
        BottomNavigationBarItem(icon: Image.asset('assets/images/heart.png', color: Colors.white, width: 25,height: 25,), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle_rounded, color: Colors.white,size: 30), label: ''),
      ]),

      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  children: [
                    myStory(),
                    myStory(),
                    myStory(),
                    myStory(),
                    myStory(),
                    myStory(),
                    myStory(),
                    myStory(),
                    myStory(),
                    myStory(),
                  ],
                ),
              ),
              post(),
              post(),
              post(),
              post(),
              post(),
              post(),
              post(),
              post(),
              post(),
            ],
          ),
        ),
      ),
    );
  }

  Widget myStory(){
    return Row(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [

            Container(
              width: 80.0,
                height: 80.0,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration: BoxDecoration(
                  color: Colors.white,
                    borderRadius: BorderRadiusDirectional.circular(80.0)
                ),
                child: CircleAvatar(child: Image.asset('assets/images/profile.jpg',),)),
            CircleAvatar(
              radius: 10.0,
              backgroundColor: Colors.green,
            )
          ],
        ),
        SizedBox(width: 10,)
      ],
    );
  }

  Widget post(){
    return Column(
      children: [
        SizedBox(height: 15.0,),
        Row(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [

                Container(
                    width: 40.0,
                    height: 40.0,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration: BoxDecoration(

                        borderRadius: BorderRadiusDirectional.circular(40.0)
                    ),
                    child: CircleAvatar(child: Image.asset('assets/images/profile.jpg',),)),
              ],
            ),
            SizedBox(width: 10.0,),
            Text('Mohamed Shaaban'),
          ],
        ),
        SizedBox(height: 15.0,),
        Container(
          width: double.infinity,
          height: 320.0,
          color: Colors.white,
          child: Image.asset('assets/images/profile.jpg'),
        ),
        SizedBox(height: 15.0,),
        Row(
          children: [
            Image.asset('assets/images/heart.png', color: Colors.white, height: 25.0, width: 25.0,),
            SizedBox(width: 15.0,),
            Image.asset('assets/images/comment.png', color: Colors.white, height: 25.0, width: 25.0,),
            SizedBox(width: 15.0,),
            Image.asset('assets/images/dm.png', color: Colors.white, height: 30.0, width: 30.0,),
            SizedBox(width: 200.0,),
            Image.asset('assets/images/bookmark.png', color: Colors.white, height: 25.0, width: 25.0,),
          ],
        )
      ],
    );
  }

}
