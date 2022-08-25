import 'package:flutter/material.dart';
import 'package:hti_caffee/screens/allpopular.dart';
import 'package:hti_caffee/screens/drawer/aboutus.dart';
import 'package:hti_caffee/screens/drawer/appointment.dart';
import 'package:hti_caffee/screens/drawer/contactus.dart';
import 'package:hti_caffee/screens/drawer/profile.dart';
import 'package:hti_caffee/screens/drawer/settings.dart';
import 'package:hti_caffee/screens/drawer/wishlist.dart';
import 'package:hti_caffee/theme/sharedstyle.dart';
import 'package:hti_caffee/widgets/popularorderwidget.dart';
import 'package:hti_caffee/widgets/searchicon.dart';
import 'package:hti_caffee/widgets/order.dart';
import 'package:hti_caffee/demodata.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> drawerData = [
    {'txt': 'Wishlist', 'icon': Icons.favorite, 'class': Wishlist()},
    {'txt': 'Appointment', 'icon': Icons.bookmark, 'class': Appointment()},
    {'txt': 'Settings', 'icon': Icons.settings, 'class': Settings()},
    {'txt': 'About Us', 'icon': Icons.info, 'class': AboutUs()},
    {'txt': 'Contact Us', 'icon': Icons.phone, 'class': ContactUs()},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'Welcome',
          style: primaryTextStyle,
        ),
        iconTheme: IconThemeData(color: primaryColor, size: 30.0),
        actions: [SearchButton()],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://ichef.bbci.co.uk/news/976/cpsprodpb/2C08/production/_120327211_gettyimages-900233708.jpg'),
                      fit: BoxFit.fill),
                ),
                alignment: Alignment.center,
                child: ListTile(
                  leading: CircleAvatar(
                    maxRadius: 30,
                    minRadius: 30,
                    backgroundImage: NetworkImage(
                        'https://avatars.githubusercontent.com/u/90569015?v=4'),
                    backgroundColor: Colors.white,
                  ),
                  title: Text('mohamed yaser',
                      style: TextStyle(color: Colors.black)),
                  subtitle: Text('My Profile',
                      style: TextStyle(color: Colors.black87)),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: primaryColor,
                    size: 20,
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return Profile();
                    }));
                  },
                ),
              ),
            ),
            for (Map<String, dynamic> i in drawerData)
              ListTile(
                leading: Icon(i['icon'], color: primaryColor, size: 30),
                title: Text(i['txt'], style: primaryTextStyle),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: primaryColor,
                  size: 20,
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return i['class'];
                  }));
                },
              ),
          ],
        ),
      ),
      body: ListView(scrollDirection: Axis.vertical, children: [
        item('snacks', AllPopular()),
        Container(
          height: 125.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: orderImages.length,
            itemBuilder: (context, index) {
              return PopularOrderWidget(orderImages[index]);
            },
          ),
        ),
        item('hot drinks', AllPopular()),
        Container(
          height: 125.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: orderImages.length,
            itemBuilder: (context, index) {
              return PopularOrderWidget(orderImages[index]);
            },
          ),
        ),
        item('cold drinks', AllPopular()),
        Container(
          height: 125.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: orderImages.length,
            itemBuilder: (context, index) {
              return PopularOrderWidget(orderImages[index]);
            },
          ),
        ),
      ]),
    );
  }

  ListTile item(String title, Widget screen) {
    return ListTile(
      title: Text(
        '$title',
        style: primaryTextStyle,
      ),
      trailing: Text(
        'view all',
        style: primaryColorTextStyle,
      ),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) {
          return screen;
        }));
      },
    );
  }
}
