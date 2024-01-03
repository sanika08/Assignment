import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {

  CustomCard({
    required this.name,
    required this.source,
    required this.sourceName,
    required this.profile,
    required this.logo,
    required this.detail,
    required this.office
  });

  String name;
  String source;
  String sourceName;
  String profile;
  String logo;
  String? detail;
  String? office;


  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 15, right: 15,top: 15),
      child: Card(
        elevation: 3,
        shadowColor: Colors.grey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          ),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(top: 8,left: 8,right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 12,
                            child: ClipOval(
                                child: Image.asset(profile)
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            name,
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700
                            ),
                          )
                        ],
                      ),
                      if(office!=null)...[
                        SizedBox(height: 7),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 12,
                              child: ClipOval(
                                  child: Image.asset('assets/officeLogo.jpg')
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              office!,
                              style: TextStyle(
                                  fontSize: 14,
                                fontWeight: FontWeight.w400
                              ),
                            )
                          ],
                        )
                      ],
                      SizedBox(height: 7),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 12,
                            child: ClipOval(
                              child: Image.asset(logo)
                            ),
                          ),
                          SizedBox(width: 5),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                source,
                                style: TextStyle(
                                    fontSize: 12
                                ),
                              ),
                              Text(
                                sourceName,
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                              SizedBox(height: 3),
                              if(detail!=null)...[
                                Container(
                                  padding: EdgeInsets.all(3),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.lightBlue.shade50,
                                    border: Border.all(
                                      color: Colors.lightBlue.shade100
                                    )
                                  ),
                                  child: Text(
                                    detail!,
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                )
                              ]
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 7),
                      Row(
                        children: [
                          Icon(Icons.calendar_month_rounded,size: 20,color: Colors.grey),
                          SizedBox(width: 5),
                          Text(
                            'Sep 25, 2021',
                            style: TextStyle(
                                fontSize: 14,
                              fontWeight: FontWeight.w400
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 7),
                      Row(
                        children: [
                          Icon(Icons.account_balance_rounded,size: 20,color: Colors.grey),
                          SizedBox(width: 5),
                          Text(
                            'FHA',
                            style: TextStyle(
                                fontSize: 14,
                              fontWeight: FontWeight.w400
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 7),
                      Row(
                        children: [
                          Icon(Icons.attach_money_rounded,size: 20,color: Colors.grey),
                          SizedBox(width: 5),
                          Text(
                            'Purchase',
                            style: TextStyle(
                                fontSize: 14,
                              fontWeight: FontWeight.w400
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                 Column(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     CircleAvatar(
                       backgroundColor: Colors.green,
                       radius: 4,
                     ),
                     SizedBox(height: 70),
                     Container(
                       width: 50,
                       height: 100,
                        padding: EdgeInsets.only(top:6,left: 6,right: 6),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Colors.green, // Border color
                            width: 1, // Border width
                          ),
                        ),
                       child: Column(
                         children: [
                           Image.asset('assets/img1.jpeg'),
                           Icon(Icons.arrow_upward_rounded,size: 20,color: Colors.green),
                           Image.asset('assets/img2.jpeg'),
                         ],
                       ),
                     )
                   ],
                 )

                ],
              ),
            ),
            SizedBox(height: 7),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 35,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                      ),
                    ),
                    child: TextButton(
                        onPressed: (){},
                        style: TextButton.styleFrom(
                          primary: Colors.white, // Set button text color
                        ),
                        child: Text('Accept', style: TextStyle(fontSize: 14))
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 35,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: TextButton(
                        onPressed: (){},
                        style: TextButton.styleFrom(
                          primary: Colors.black, // Set button text color
                        ),
                        child: Text('Reject',style: TextStyle(fontSize: 14))
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
