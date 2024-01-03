import 'package:assignment/Widgets/CustomCard.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:toggle_switch/toggle_switch.dart';

class ScreenApplicationMode extends StatelessWidget {

  List<Map<String, dynamic>> Data = [
    {
      'name': 'Mario Lane',
      'source': 'Sub Source',
      'sourceName': 'Zillow',
      'office': 'Home Office',
      'profile': 'assets/img1.jpeg',
      'logo': 'assets/logo.png'
    },
    {
      'name': 'Henry Jonas',
      'source': 'Partner',
      'detail': 'Persident Circle',
      'sourceName': 'Eddie Anguilar',
      'profile': 'assets/img2.jpeg',
      'logo': 'assets/img1.jpeg'
    },
    {
      'name': 'John Smith',
      'source': 'Client',
      'detail': 'Aspairant',
      'sourceName': 'Emma Wolfe',
      'profile': 'assets/img2.jpeg',
      'logo': 'assets/img1.jpeg'
    },
    {
      'name': 'Paula Hudson',
      'source': 'Sub Source',
      'sourceName': 'Realtor.com',
      'profile': 'assets/img1.jpeg',
      'logo': 'assets/RealtorLogo.png'
    }
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 6),
            child: CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 15, // Adjust the radius to your desired size
            ),
          ),
          Spacer(),
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.menu)
          ),
          Stack(
            children:[
              IconButton(
                onPressed: (){},
                icon: Icon(Icons.notifications_outlined),
              ),
              Positioned(
                  top: 6,
                  right: 12,
                  child: Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red
                    ),
                  )
              )
            ]
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.search),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(20),
          child: Container(
            height: 40,
            color: Color(0xFF05445E),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ToggleSwitch(
                  labels: [
                    'Bot Mode',
                    'Application Mode'
                  ],
                  minHeight: 20,
                  minWidth: 120,
                  fontSize: 12,
                  cornerRadius: 30,
                  radiusStyle: true,
                  activeBgColor: [Color(0xFF0A758F)],
                  inactiveBgColor: Colors.white,
                )
              ],
            ),
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 70,
              color: Color(0xFF0A758F),
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.arrow_back_ios_outlined, color: Colors.white,size: 17),
                      SizedBox(width: 120),
                      Text(
                        'Lead Kanban',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                      ),
                      Spacer(),
                      Icon(Symbols.list, color: Colors.white, size: 19),
                      SizedBox(width: 10),
                      Icon(Icons.filter_alt_rounded, color: Colors.white,size: 19),
                      SizedBox(width: 10),
                      Icon(Icons.search_rounded, color: Colors.white,size: 19)
                    ],
                  ),
                  SizedBox(height: 5),
                  Text(
                    'You have 6 new leads on which action is required!',
                    style: TextStyle(
                      color: Colors.white
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                    _Categories('New Leads', true,true),
                   _Categories('Initial Meetings', false,false),
                   _Categories('Discovery Consultation', false,false)
                ],
              ),
            ),
            Expanded( // Wrap the Column with Expanded
              child: Container(
                height: 160,
                child: ListView.builder(
                  itemCount: Data.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) => CustomCard(
                    name: Data[index]['name'],
                    source: Data[index]['source'],
                    sourceName: Data[index]['sourceName'],
                    profile: Data[index]['profile'],
                    logo: Data[index]['logo'],
                    detail: Data[index]['detail'],
                    office: Data[index]['office'],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _Categories(String categoryName, bool isSelected, bool hasNotification) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
          decoration: BoxDecoration(
            color: isSelected ? Color(0xFF0A758F) : Colors.transparent,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Colors.lightBlue.shade900,
              width: 1,
            ),
          ),
          child: Center(
            child: Text(
              categoryName,
              style: TextStyle(
                fontSize: 14,
                color: isSelected ? Colors.white : Colors.lightBlue[900],
              ),
            ),
          ),
        ),
        if (hasNotification)
          Positioned(
            top: -9,
            right: -9,
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green,
              ),
              child: Center(
                child: Text(
                  '20',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }


}
