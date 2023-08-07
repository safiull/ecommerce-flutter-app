import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      darkTheme: ThemeData(primarySwatch: Colors.blue),
      color: Colors.amber,
      debugShowCheckedModeBanner: false,
      home: HomeActivity()
    );
  }
}

class HomeActivity extends StatelessWidget {
  HomeActivity({super.key});

  MySnackBar(message, context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );
  }

  MyAlertDialog(context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Expanded(
          child: AlertDialog(
            title: Text("Alert!"),
            content: Text('Are you sure?'),
            actions: [
              TextButton(
                onPressed: () {
                  MySnackBar("Deleted successfully.", context);
                  Navigator.of(context).pop();
                }, 
                child: Text("Yes")
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                }, 
                child: Text("No")
              ),
            ],
          ),
        );
      }
    );
  }

  var jsonList = [
    {"img": "https://images.pexels.com/photos/2156311/pexels-photo-2156311.jpeg?auto=compress&cs=tinysrgb&w=350", "title": "Shakil Vai"},
    {"img": "https://images.pexels.com/photos/213399/pexels-photo-213399.jpeg?auto=compress&cs=tinysrgb&w=350", "title": "Pabel Vai"},
    {"img": "https://images.pexels.com/photos/2109800/pexels-photo-2109800.jpeg?auto=compress&cs=tinysrgb&w=350", "title": "Subtoto Vai"},
    {"img": "https://images.pexels.com/photos/2109800/pexels-photo-2109800.jpeg?auto=compress&cs=tinysrgb&w=350", "title": "Arif Vai"},
    {"img": "https://images.pexels.com/photos/2109800/pexels-photo-2109800.jpeg?auto=compress&cs=tinysrgb&w=350", "title": "Prince Vai"},
    {"img": "https://images.pexels.com/photos/1145274/pexels-photo-1145274.jpeg?auto=compress&cs=tinysrgb&w=350", "title": "Alif Vai"},
    {"img": "https://images.pexels.com/photos/2109800/pexels-photo-2109800.jpeg?auto=compress&cs=tinysrgb&w=350", "title": "Jongol Vai Vai"},
  ];

  @override
  Widget build(BuildContext context) {

    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      padding: EdgeInsets.all(10),
      backgroundColor: Colors.green,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(40))
      )
    );

    ButtonStyle buttonStyle2 = ElevatedButton.styleFrom(
      minimumSize: Size(double.infinity, 60)
    );
    
    return Scaffold(
      appBar: AppBar(
        title: Text("My Bazar."),
        titleSpacing: 10,
        // centerTitle: true,
        toolbarHeight: 50,
        toolbarOpacity: 1,
        elevation: 0,
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            onPressed: () {
              MySnackBar('I am comment', context);
            }, 
            icon: Icon(Icons.comment)
          ),
          IconButton(
            onPressed: () {
              MySnackBar('I am search', context);
            }, 
            icon: Icon(Icons.search)
          ),
          IconButton(
            onPressed: () {
              MySnackBar('I am settings', context);
            }, 
            icon: Icon(Icons.settings)
          ),
          IconButton(
            onPressed: () {
              MySnackBar('I am email', context);
            }, 
            icon: Icon(Icons.email)
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
        onPressed: () {
          MySnackBar("I'm from floating action button.", context);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home), 
            label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message), 
            label: 'Contact'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person), 
            label: 'Profile'
          ),
        ],
        onTap: (int index) {
          if (index == 0) {
            MySnackBar('I am home button menu', context);
          }
          if (index == 1) {
            MySnackBar('I am contact button menu', context);
          }
          if (index == 2) {
            MySnackBar('I am profile button menu', context);
          }
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.white
                ),
                accountName: Text("Safiull Alam", style: TextStyle(color: Colors.black)), 
                accountEmail: Text('safiullalam9931@gmail.com', style: TextStyle(color: Colors.black)),
                currentAccountPicture:Image.network('https://img.icons8.com/?size=2x&id=7I3BjCqe9rjG&format=png') ,
                onDetailsPressed: () {
                  MySnackBar("I'm from the profile.", context);
                },
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                MySnackBar("I am Home", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_mail),
              title: Text('Contact'),
              onTap: () {
                MySnackBar("I am Contact", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {
                MySnackBar("I am Profile", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('Email'),
              onTap: () {
                MySnackBar("I am Email", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
              onTap: () {
                MySnackBar("I am Phone", context);
              },
            ),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.white
                ),
                accountName: Text("Safiull Alam", style: TextStyle(color: Colors.black)), 
                accountEmail: Text('safiullalam9931@gmail.com', style: TextStyle(color: Colors.black)),
                currentAccountPicture:Image.network('https://img.icons8.com/?size=2x&id=7I3BjCqe9rjG&format=png') ,
                onDetailsPressed: () {
                  MySnackBar("I'm from the profile.", context);
                },
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                MySnackBar("I am Home", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_mail),
              title: Text('Contact'),
              onTap: () {
                MySnackBar("I am Contact", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {
                MySnackBar("I am Profile", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('Email'),
              onTap: () {
                MySnackBar("I am Email", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
              onTap: () {
                MySnackBar("I am Phone", context);
              },
            ),
          ],
        ),
      ),
      // This is only text
      // body: Text('Hello word'),
      // This is centered image and text in body.
      // body: Center(
      //   // child: Text("Hello wrold"),
      //   child: Image.network('https://images.pexels.com/photos/326055/pexels-photo-326055.jpeg?auto=compress&cs=tinysrgb&w=600'),
      // ),
      // This is container in body
      // body: Container(
      //   height: 300,
      //   width: 300,
      //   alignment: Alignment.topCenter,
      //   // margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
      //   margin: EdgeInsets.all(30),
      //   padding: EdgeInsets.all(40),
      //   decoration: BoxDecoration(
      //     color: Colors.blue,
      //     border: Border.all(color: Colors.red, width: 5)
      //   ),
      //   child: Image.network('https://images.pexels.com/photos/326055/pexels-photo-326055.jpeg?auto=compress&cs=tinysrgb&w=600'),
      // ),

      // Images in rows
      
      // body: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceAround,
      //   children: [
      //     Container(
      //       height: 150, 
      //       width: 150,
      //       child: Image.network('https://images.pexels.com/photos/326055/pexels-photo-326055.jpeg?auto=compress&cs=tinysrgb&w=600'),
      //     ),
      //     Container(
      //       height: 150, 
      //       width: 150,
      //       child: Image.network('https://images.pexels.com/photos/326055/pexels-photo-326055.jpeg?auto=compress&cs=tinysrgb&w=600'),
      //     ),
      //     Container(
      //       height: 150, 
      //       width: 150,
      //       child: Image.network('https://images.pexels.com/photos/326055/pexels-photo-326055.jpeg?auto=compress&cs=tinysrgb&w=600'),
      //     ),
      //   ],
      // ),

      // Buttons in rows.
      // body: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   children: [
      //     TextButton(
      //       onPressed: () {
      //         MySnackBar("I am text button.", context);
      //       },
      //       child: Text("Text button.")
      //     ),
      //     ElevatedButton(
      //       onPressed: () {
      //         MySnackBar("I am elevated button.", context);
      //       },
      //       child: Text("Elevated button."),
      //       style: buttonStyle,
      //     ),
      //     OutlinedButton(
      //       onPressed: () {
      //         MySnackBar("I am outlined button.", context);
      //       },
      //       child: Text("Outlined button.")
      //     ),
      //   ],
      // ),

      // Show alert button and dialog/

      // body: Center(
      //   child: ElevatedButton(
      //       onPressed: () {
      //         MyAlertDialog(context);
      //       },
      //       child: Text("Show Alert."),
      //       style: buttonStyle,
      //     ),
      // ),
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.start,
      //   children: [
      //     Padding(
      //       padding: EdgeInsets.all(10),
      //       child: TextField(
      //         decoration: InputDecoration(
      //           border: OutlineInputBorder(),
      //           labelText: "First Name",
      //         ),
      //       ),
      //     ),
      //     Padding(
      //       padding: EdgeInsets.all(10),
      //       child: TextField(
      //         decoration: InputDecoration(
      //           border: OutlineInputBorder(),
      //           labelText: "Last Name",
      //         ),
      //       ),
      //     ),
      //     Padding(
      //       padding: EdgeInsets.all(10),
      //       child: TextField(
      //         decoration: InputDecoration(
      //           border: OutlineInputBorder(),
      //           labelText: "Email Address",
      //         ),
      //       ),
      //     ),
      //     Padding(
      //       padding: EdgeInsets.all(10),
      //       child: ElevatedButton(
      //         onPressed: () {
      //           MySnackBar("Submitted successfully.", context);
      //         },
      //         child: Text("Submit"),
      //         style: buttonStyle2,
      //       ),
      //     ),
      //   ],
      // ),
      // body: ListView.builder(
      //   itemCount: jsonList.length,
      //   itemBuilder: (context, index) {
      //     return GestureDetector(
      //       onTap: () {
      //         MySnackBar(jsonList[index]['title']!, context);
      //       },
      //       child: Container(
      //         margin: EdgeInsets.all(10),
      //         width: double.infinity,
      //         height: 300,
      //         child: Image.network(
      //           jsonList[index]['img']!, 
      //           fit: BoxFit.fill
      //         ),
      //       ),
      //     );
      //   },
      // ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 0,
          childAspectRatio: 1.2
        ),
        itemCount: jsonList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              MySnackBar(jsonList[index]['title']!, context);
            },
            child: Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              height: 300,
              child: Image.network(
                jsonList[index]['img']!, 
                fit: BoxFit.fill
              ),
            ),
          );
        },
      ),
    );
  }
}