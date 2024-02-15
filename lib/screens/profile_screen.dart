import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';
import 'package:ticket_booking_app/widgets/column_layout.dart';
import 'package:ticket_booking_app/widgets/layout_builder_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const Gap(20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: AssetImage(
                      "assets/images/img_1.png"
                    )
                  ),
                ),
              ),
              const Gap(5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Book Tickets", style: Styles.headLineStyle1,),
                  const Gap(1),
                  Text("New-York", style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade500,

                  )),
                  //const Gap(2),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: const Color(0xFFFEF4F3)
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 3, vertical: 3),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF526799)
                          ),
                          child: const Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        const Gap(1),
                        const Text("Premium status", style: TextStyle(
                          color: Color(0xFF526799),
                          fontWeight: FontWeight.w600,

                        ),),
                        const Gap(5),
                      ],
                    ),
                  ),

                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: (){
                      print(" You are tapped");
                    },
                    child: Text("Edit", 
                      style: Styles.textStyle.copyWith(color: Styles.primaryColor, fontWeight: FontWeight.w300 ) ,)
                    
                  ),
                  ],
              ),
            ]
          ),
          const Gap(8),
          Divider(color: Colors.grey.shade300,),
          const Gap(2),
          Stack(
            children: [
              Container(
                height: 90,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(18)
                ),
              ),
              Positioned(
                right: -45,
                top: -40,
                child: Container(
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(width: 18, color: Color(0xFF264CD2)),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal:17, vertical: 17 ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                      color: Styles.primaryColor, size: 27,),
                    ),
                    const Gap(12),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "You\'v got a new award",
                          style: Styles.headLineStyle2.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "You have 95 flights in a year",
                          style: Styles.headLineStyle2.copyWith(
                            fontWeight: FontWeight.w500,
                            color: Colors.white.withOpacity(0.9),
                            fontSize: 16,
                          ),
                          
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              
            ],
          ),
          const Gap(25),
          Text("Accumulated miles", style: Styles.headLineStyle2,),
          const Gap(20),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: Styles.bgColor,
              boxShadow: [ 
                BoxShadow(
                  color: Colors.grey.shade200,
                  blurRadius: 1,
                  spreadRadius: 1,
                ),
              ]
            ),
            child: Column(
              children: [
                const Gap(15),
                Text(
                  "192802",
                  style: TextStyle(
                    fontSize: 45, color: Styles.textColor, fontWeight: FontWeight.w600,
                  ),
                ),
                const Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Miles accrued", style: Styles.headLineStyle4.copyWith(fontSize: 16),),
                    Text("23 May 2021", style: Styles.headLineStyle4.copyWith(fontSize: 16),),
                  ],
                ),
                const Gap(4),
                Divider(color: Colors.grey.shade300),
                const Gap(4),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(
                      firstText: "23 042", 
                      secondText: "Miles", 
                      alignment: CrossAxisAlignment.start, 
                      isColor: false
                    ),
                    AppColumnLayout(
                      firstText: "Airline CO", 
                      secondText: "Received from", 
                      alignment: CrossAxisAlignment.end, 
                      isColor: false
                    ),
                    

                  ],
                ),
                const Gap(12),
                const AppLayoutBuilderWidget(isColor: false, sections: 12),
                const Gap(12),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(
                      firstText: "24", 
                      secondText: "Miles", 
                      alignment: CrossAxisAlignment.start, 
                      isColor: false
                    ),
                    AppColumnLayout(
                      firstText: "McDonal\'s", 
                      secondText: "Received from", 
                      alignment: CrossAxisAlignment.end, 
                      isColor: false
                    ),
                    

                  ],
                ),
                const Gap(12),
                const AppLayoutBuilderWidget(isColor: false, sections: 12),
                const Gap(12),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(
                      firstText: "52 340", 
                      secondText: "Miles", 
                      alignment: CrossAxisAlignment.start, 
                      isColor: false
                    ),
                    AppColumnLayout(
                      firstText: "Exuma", 
                      secondText: "Received from", 
                      alignment: CrossAxisAlignment.end, 
                      isColor: false
                    ),
                    

                  ],
                ),


              ],
            ),
          ),
          const Gap(20),
          InkWell(
            onTap: ()=>print("You are tapped"),
            child: Center(
              child: Text(
                "How to get more miles",
                style: Styles.textStyle.copyWith(
                  color: Styles.primaryColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}