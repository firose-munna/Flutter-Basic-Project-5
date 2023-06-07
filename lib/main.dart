import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      darkTheme: ThemeData(primarySwatch: Colors.teal),
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
      color: Colors.teal,
    );
  }

}
class HomeActivity extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        toolbarOpacity: 0.7,
        titleSpacing: 0,
        elevation: 7,
        title: Text("Assignment Five", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),),
        centerTitle: true,

      ),


      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Message"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
        ],

        onTap: (int index){
          if(index == 0){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> PageOne()));
          }
          else if(index == 1){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> PageTwo()));
          }
          else if(index == 2){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> PageThree()));
          }
        },




      ),
      body: Center(child: Text("Page No 1", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),)),
      drawer: Drawer(
        child: ListView(
          children: [
            Center(
              child: UserAccountsDrawerHeader(
                accountName: Text("Firose Munna", style: TextStyle(fontSize: 20, color: Colors.white),),
                accountEmail: Text("munnafirose@gmail.com", style: TextStyle(fontSize: 13, color: Colors.grey),),
                decoration: BoxDecoration(color: Colors.deepPurple),
               // margin: EdgeInsets.all(20),

                currentAccountPicture: Image.network("https://th.bing.com/th/id/OIP.CGCV-SOAaNv2SrRQSpGeHwHaHa?pid=ImgDet&rs=1"),
              ),
            ),

            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> PageOne()));
              },
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text("Message"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> PageTwo()));
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Account"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> PageThree()));
              },
            ),

          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.deepPurple,
        onPressed: (){},
      ),

    );
  }



}

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        toolbarOpacity: 0.7,
        titleSpacing: 0,
        elevation: 7,
        title: Text("Assignment Five", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),),
        centerTitle: true,

      ),


      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Message"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),

        ],
        onTap: (int index){
          if(index == 0){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> PageOne()));
          }
          else if(index == 1){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> PageTwo()));
          }
          else if(index == 2){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> PageThree()));
          }
        },


      ),
      body: Center(child: Text("Page No 1", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),)),
      drawer: Drawer(
          child: ListView(
            children: [
              Center(
                child: UserAccountsDrawerHeader(
                  accountName: Text("Firose Munna", style: TextStyle(fontSize: 20, color: Colors.white),),
                  accountEmail: Text("munnafirose@gmail.com", style: TextStyle(fontSize: 13, color: Colors.grey),),
                  decoration: BoxDecoration(color: Colors.deepPurple),
                  // margin: EdgeInsets.all(20),

                  currentAccountPicture: Image.network("https://th.bing.com/th/id/OIP.CGCV-SOAaNv2SrRQSpGeHwHaHa?pid=ImgDet&rs=1"),
                ),
              ),

              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> PageOne()));
                },),
              ListTile(
                leading: Icon(Icons.message),
                title: Text("Message"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> PageTwo()));
                },
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Account"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> PageThree()));
                },
              ),

            ],
          )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.deepPurple,
        onPressed: (){},
      ),


    );;
  }
}



class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        toolbarOpacity: 0.7,
        titleSpacing: 0,
        elevation: 7,
        title: Text("Assignment Five", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),),
        centerTitle: true,

      ),


      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Message"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),

        ],
        onTap: (int index){
          if(index == 0){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> PageOne()));
          }
          else if(index == 1){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> PageTwo()));
          }
          else if(index == 2){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> PageThree()));
          }
        },


      ),
      body: Center(child: Text("Page No 2", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),)),
      drawer: Drawer(
          child: ListView(
            children: [
              Center(
                child: UserAccountsDrawerHeader(
                  accountName: Text("Firose Munna", style: TextStyle(fontSize: 20, color: Colors.white),),
                  accountEmail: Text("munnafirose@gmail.com", style: TextStyle(fontSize: 13, color: Colors.grey),),
                  decoration: BoxDecoration(color: Colors.deepPurple),
                  // margin: EdgeInsets.all(20),

                  currentAccountPicture: Image.network("https://th.bing.com/th/id/OIP.CGCV-SOAaNv2SrRQSpGeHwHaHa?pid=ImgDet&rs=1"),
                ),
              ),

              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> PageOne()));
                },),
              ListTile(
                leading: Icon(Icons.message),
                title: Text("Message"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> PageTwo()));
                },
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Account"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> PageThree()));
                },
              ),

            ],
          )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.skip_next),
        backgroundColor: Colors.blue,
        onPressed: (){},
      ),


    );;
  }
}



class PageThree extends StatelessWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        toolbarOpacity: 0.7,
        titleSpacing: 0,
        elevation: 7,
        title: Text("Assignment Five", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),),
        centerTitle: true,

      ),


      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Message"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),

        ],
        onTap: (int index){
          if(index == 0){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> PageOne()));
          }
          else if(index == 1){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> PageTwo()));
          }
          else if(index == 2){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> PageThree()));
          }
        },


      ),
      body: Center(child: Text("Page No 3", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),)),
      drawer: Drawer(
          child: ListView(
            children: [
              Center(
                child: UserAccountsDrawerHeader(
                  accountName: Text("Firose Munna", style: TextStyle(fontSize: 20, color: Colors.white),),
                  accountEmail: Text("munnafirose@gmail.com", style: TextStyle(fontSize: 13, color: Colors.grey),),
                  decoration: BoxDecoration(color: Colors.deepPurple),
                  // margin: EdgeInsets.all(20),

                  currentAccountPicture: Image.network("https://th.bing.com/th/id/OIP.CGCV-SOAaNv2SrRQSpGeHwHaHa?pid=ImgDet&rs=1"),
                ),
              ),

              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> PageOne()));
                },),
              ListTile(
                leading: Icon(Icons.message),
                title: Text("Message"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> PageTwo()));
                },
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Account"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> PageThree()));
                },
              ),

            ],
          )
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_call),
        backgroundColor: Colors.teal,
        onPressed: (){},
      ),


    );;
  }
}


