import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';
import 'package:ticket_booking_app/widgets/column_layout.dart';
import 'package:ticket_booking_app/widgets/layout_builder_widget.dart';
import 'package:ticket_booking_app/widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  //const TicketView({super.key});
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({Key? key, required this.ticket, required this.isColor}): super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context); // 1.40.51 dk 
    return SizedBox(
      width: size.width*0.85,
      height: GetPlatform.isAndroid==true?174:175,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
            /*
            This container is showing the blue part of the card/ticket
            */
            Container(
              decoration: BoxDecoration(
                color: isColor==true? Color(0xFF526799) : Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(21), topRight: Radius.circular(21))
              ),
              
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text( ticket['from']['code'], 
                        style: isColor==true? Styles.headLineStyle3.copyWith(color: Colors.white): Styles.headLineStyle3,
                      
                      ),
                      Expanded(child: Container()), // bunun yerine bu kullanılabilir const Spacer(),
                      const ThickContainer(isColor: true,),
                      Expanded(child: Stack(
                        children: [
                        const SizedBox(
                        height: 24,
                        child: AppLayoutBuilderWidget(isColor: true, sections: 6), //izColor: false
                        ),
                
                        // transform ile uçak ikonunu rotate yaptık.
                        Center(child: Transform.rotate(angle: 1.5, child: Icon(Icons.local_airport_rounded, color: isColor==true? Colors.white: Color(0xFF8ACCF7),),),)
                        ],
                      )),

                      const ThickContainer(isColor: true,),
                      Expanded(child: Container()),
                      Text(ticket['to']['code'], style: isColor==true? Styles.headLineStyle3.copyWith(color: Colors.white): Styles.headLineStyle3),
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100, child: Text(ticket['from']['name'], style: isColor==true? Styles.headLineStyle4.copyWith(color: Colors.white): Styles.headLineStyle4,),
                      ),
                      Text(ticket['flying_time'], style: isColor==true? Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4, ),
                      SizedBox(
                        width: 100, child: Text(ticket['to']['name'], textAlign: TextAlign.end, style: isColor==true? Styles.headLineStyle4.copyWith(color: Colors.white): Styles.headLineStyle4,),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            /*
            This container is showing the orange part of the card/ticket
            */
            Container(
              color: isColor==true? Styles.orangeColor: Colors.white, //const Color(0xFFF37B67),
              child: Row(
                children: [
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        )
                      ),
                    ),
                  ),
                  Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: LayoutBuilder(
                      builder: (BuildContext context, BoxConstraints constraints){
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate((constraints.constrainWidth()/15).floor(), (index) => SizedBox(
                            width: 5, height: 1,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: isColor==true?Colors.white: Colors.grey.shade300
                              ),
                            ),
                          )),
                        );
                      } ,
                    )
                 ,
                  
                  ),  
                  ),
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        )
                      ),
                    ),
                  )
                
                ],
              ),
            ),
            /*
            This container is showing the bottom orange part of the card/ticket
            */
            Container(
              decoration: BoxDecoration(
                color: isColor==true? Styles.orangeColor:Colors.white,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(isColor==true?21:0), bottomRight: Radius.circular(isColor==true?21:0))
              ),
              padding: const EdgeInsets.only(left: 16, top: 10, right: 16, bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                        firstText: ticket['date'], 
                        secondText: "Date", 
                        alignment: CrossAxisAlignment.start,
                        isColor: isColor==true? true: false
                      ),
                      AppColumnLayout(
                        firstText: ticket['departure_time'], 
                        secondText: "Departure time", 
                        alignment: CrossAxisAlignment.center,
                        isColor: isColor==true? true: false
                      ),
                      AppColumnLayout(
                        firstText: ticket['number'].toString(), 
                        secondText: "Number", 
                        alignment: CrossAxisAlignment.end,
                        isColor: isColor==true? true: false,
                      ),                   
                    ],
                  )
                ],
              ),
            )
          
          ],
        ),
      ),
    );
  }
}