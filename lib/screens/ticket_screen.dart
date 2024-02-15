import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/screens/ticket_view.dart';
import 'package:ticket_booking_app/utils/app_info_list.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';
import 'package:ticket_booking_app/widgets/column_layout.dart';
import 'package:ticket_booking_app/widgets/layout_builder_widget.dart';
import 'package:ticket_booking_app/widgets/widget_tabs.dart';
import 'package:barcode_widget/barcode_widget.dart';
class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [ 
          ListView(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            children: [
              const Gap(40),
              Text("Tickets", style: Styles.headLineStyle1,),
              const Gap(20),
              const AppTicketTabs(firstTab: "Upcoming", secondeTab: "Previous"),
              const Gap(20),
              Container(
                padding: EdgeInsets.only(left: 15),
                child: TicketView(ticket: ticketList[0], isColor: false,),
              ),
              const SizedBox(height: 1,),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                margin: EdgeInsets.symmetric(horizontal: 15),
                color: Colors.white,
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      
                      children: [
                        AppColumnLayout(
                          firstText: "Flutter DB", 
                          secondText: "Passenger" ,
                          alignment: CrossAxisAlignment.start,
                          isColor: false,
                          ),
                        AppColumnLayout(
                          firstText: "5221 364869", 
                          secondText: "Passport" ,
                          alignment: CrossAxisAlignment.end,
                          isColor: false,
                        ),
                      ],
                    ),
                    const Gap(20),
                    const AppLayoutBuilderWidget(isColor: true, sections: 15, width: 5,),
                    const Gap(20),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      
                      children: [
                        AppColumnLayout(
                          firstText: "364738 28274478", 
                          secondText: "Number of E-ticket" ,
                          alignment: CrossAxisAlignment.start,
                          isColor: false,
                          ),
                        AppColumnLayout(
                          firstText: "B2SG28", 
                          secondText: "Booking code" ,
                          alignment: CrossAxisAlignment.end,
                          isColor: false,
                        ),
                        
                      ],
                    ),
                    const Gap(20),
                    const AppLayoutBuilderWidget(isColor: true, sections: 15, width: 5,),
                    const Gap(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset("assets/images/visa.png", scale: 11,),
                                Text(" *** 2462", style: Styles.headLineStyle3,)
                              ],

                            ),
                            const Gap(5),
                            Text("Payment method", style: Styles.headLineStyle4,),

                          ],
                        ),
                        const AppColumnLayout(
                          firstText: "\$249.99", 
                          secondText: "Price" ,
                          alignment: CrossAxisAlignment.end,
                          isColor: false,
                          ),
                      ],
                    ),
                    const SizedBox(height: 1,),
                    const Gap(20),

                  ],
                )

              ), 

              /*
              bar code
               */
              const SizedBox(height: 1,),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(21),
                    bottomRight: Radius.circular(21),
                  ),
                ),
                margin: EdgeInsets.only(left: 15, right: 15),
                padding: EdgeInsets.only(top: 15, bottom: 15),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: BarcodeWidget(
                        barcode: Barcode.code128(),
                        data: 'https://github.com/martinovovo',
                        drawText: false,
                        color: Styles.textColor,
                        width: double.infinity,
                        height: 70,
                      ),
                  ),
                ),
              ),
              const Gap(20),
              Container(
                padding: EdgeInsets.only(left: 15),
                child: TicketView(ticket: ticketList[0], isColor: true,),
              ),
              

              
              
                        
            
            ],

        ),
        Positioned(
          left: 22,
          top: 295,
          child: Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Styles.textColor, width: 2)
            ),
            child: CircleAvatar(
              maxRadius: 4,
              backgroundColor: Styles.textColor,

            ),
          ),
        ),
        Positioned(
          right: 22,
          top: 295,
          child: Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Styles.textColor, width: 2)
            ),
            child: CircleAvatar(
              maxRadius: 4,
              backgroundColor: Styles.textColor,

            ),
          ),
        ),        
      
      ],
      ),
    );
  }
}