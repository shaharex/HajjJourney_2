import 'package:flutter/material.dart';

class TourPage extends StatelessWidget {
  TourPage({super.key});

  List<List> tour = [
    [
      'Mekka', 
      '7 day',
      '1000\$'
      'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwelcomesaudi.com%2Fru%2Factivity%2Fal-masjid-al-haram-makkah&psig=AOvVaw2ejT31oWE2kn0lMs5lFZv3&ust=1722253422453000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCPjquI3UyYcDFQAAAAAdAAAAABAJ'
    ],
    [
      'Mekka, Dubai', 
      '14 day',
      '1500\$'
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsWdYvlSHTeQ_EycT588IwUuGdB0BYdlO-7kvRoAsuuwdccTy8-nLBsu9H2TYB7qHF8NQ&usqp=CAU'
    ],
    [
      'Mekka, Medina, Dubai', 
      '21 day',
      '1700\$'
      'https://cf.bstatic.com/xdata/images/hotel/max1024x768/384044827.jpg?k=27890acdbf3add36fc24ba405d7fc532b52015a94e4699e1bb8c3cce82f80b3b&o=&hp=1'
    ]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeec94a),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //1



              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Row(
                  children: [
                    Container(
                      clipBehavior: Clip.hardEdge,
                      width: 120,
                      height: double.infinity,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsWdYvlSHTeQ_EycT588IwUuGdB0BYdlO-7kvRoAsuuwdccTy8-nLBsu9H2TYB7qHF8NQ&usqp=CAU'),
                          fit: BoxFit.cover
                        )
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('12 day', style: TextStyle(color: Color(0xffeec94a), fontSize: 20, fontWeight: FontWeight.w700),),
                              Text('Mekka, Medina', style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),),
                              Expanded(child: SizedBox()),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Price: 1200\$', style: TextStyle()),
                                  SizedBox(width: 10,),
                                  Container(
                                    width: 90,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Color(0xffeec94a),
                                      borderRadius: BorderRadius.circular(20)
                                    ),
                                    child: Center(child: Text('Buy', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),),),
                                  )
          
          
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                        
                  ],
                ),
              ),
              SizedBox(height: 20,),
              //2



              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Row(
                  children: [
                    Container(
                      clipBehavior: Clip.hardEdge,
                      width: 120,
                      height: double.infinity,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage('https://cf.bstatic.com/xdata/images/hotel/max1024x768/384044827.jpg?k=27890acdbf3add36fc24ba405d7fc532b52015a94e4699e1bb8c3cce82f80b3b&o=&hp=1'),
                          fit: BoxFit.cover
                        )
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('21 day', style: TextStyle(color: Color(0xffeec94a), fontSize: 20, fontWeight: FontWeight.w700),),
                              Container(
                                width: 150,
                                child: Text('Mekka, Medina, Dubai', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                              ),
                              Expanded(child: SizedBox()),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Price: 2300\$', style: TextStyle()),
                                  SizedBox(width: 10,),
                                  Container(
                                    width: 90,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Color(0xffeec94a),
                                      borderRadius: BorderRadius.circular(20)
                                    ),
                                    child: Center(child: Text('Buy', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),),),
                                  )
          
          
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                        
                  ],
                ),
              ),
              SizedBox(height: 20,),
              //3



              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Row(
                  children: [
                    Container(
                      clipBehavior: Clip.hardEdge,
                      width: 120,
                      height: double.infinity,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage('https://imgtest.mir24.tv/uploaded/images/crops/2023/June/870x489_0x0_detail_crop_20230628074302_65ee66f6_ae34ac61acd6e2aff844c379e76ff9091d210b82a1c99108a1981f5c4fd6a525.jpg'),
                          fit: BoxFit.cover
                        )
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('12 day', style: TextStyle(color: Color(0xffeec94a), fontSize: 20, fontWeight: FontWeight.w700),),
                              Text('Mekka, Medina', style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),),
                              Expanded(child: SizedBox()),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Price: 1200\$', style: TextStyle()),
                                  SizedBox(width: 10,),
                                  Container(
                                    width: 90,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Color(0xffeec94a),
                                      borderRadius: BorderRadius.circular(20)
                                    ),
                                    child: Center(child: Text('Buy', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),),),
                                  )
          
          
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                        
                  ],
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}