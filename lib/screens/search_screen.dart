import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';
import 'package:ticket_booking_app/widgets/double_text_widget.dart';
import 'package:ticket_booking_app/widgets/icon_text_widget.dart';
import 'package:ticket_booking_app/widgets/widget_tabs.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const Gap(20),
          Text("What are\nyou looking for?", style: Styles.headLineStyle1.copyWith(fontSize: 35)),
          const Gap(20),
          AppTicketTabs(),
          const Gap(25),
          const AppIconText(icon: Icons.flight_takeoff_rounded, text: "Departure"),
          const Gap(15),
          const AppIconText(icon: Icons.flight_takeoff_rounded, text: "Arrival"),
          const Gap(25),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 18, horizontal:15 ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xD91130CE),
            ),
            child: Center(
              child: Text("Find tickets", style: Styles.textStyle.copyWith(color:Colors.white)),
            ),
          ),
          const Gap(40),
          const AppDoubleTextWidget(bigText: "Upcoming Flights", smallText: "View all"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 430,
                width: size.width*0.42,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 1,
                    )
                  ]
                ),
                child: Column(
                  children: [
                    Container(
                      height: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/sit.png")
                        
                        )
                      ),

                    ),
                    const Gap(12),
                    Text(
                      "20% discount on the early booking of flight. Don't miss.",
                      style: Styles.headLineStyle2,
                      ),
                  ],
                ),
              ),
              Column(
                children: [
                 Stack(
                  children: [
                  Container(
                    width: size.width*0.44,
                    height: 210,
                    decoration: BoxDecoration(
                      color: Color(0xFF3Ab8BB),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                    child: Column(
                      children: [
                        Text("Discount\nfor survey", style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold, color: Colors.white),),
                        const Gap(10),
                        Text("Take the survey about our services and get discount", style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.w500, color: Colors.white, fontSize: 18),),
                      ],
                    ),
                  ),
                  Positioned(
                    right: -45,
                    top: -40,
                    child: Container(
                      padding: EdgeInsets.all(30),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 18,color: Color(0xFF189999)),
                        color: Colors.transparent
                      ),
                    ),)
                  ],
                 ),
                 const Gap(10),
                 Container(
                  width: size.width*0.44,
                  height: 210,
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal :15 ),
                  
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: const Color(0xFFEC6545) 
                  ),
                  child: Column(
                    children: [
                      Text("Take love", style: Styles.headLineStyle2.copyWith(color: Colors.white, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                      const Gap(5),
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: '😘',
                              style: TextStyle(fontSize: 35),
                            ),
                            TextSpan(
                              text: '🥰',
                              style: TextStyle(fontSize: 45),
                            ),
                            TextSpan(
                              text: '😍',
                              style: TextStyle(fontSize: 35),
                            ),
                          ],
                        )
                      )
                    ],
                  ),
                 ), 
                ],
              ),
            ],
          ),    
        ],

      ),
    );
  }
}