
import 'package:expance_traker/custom_Painter/chart_circle.dart';
import 'package:expance_traker/widgets/list_item.dart';
import 'package:flutter/material.dart';

import 'constants.dart';
import 'model/Transaction_data.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool _isHidden = true;
  final String _cardNumber = '4355 8701 1092 8705';
  final Transactions transactions = Transactions();


  String get _displayCardNumber {
    if (_isHidden) {
      return _cardNumber.replaceRange(0, _cardNumber.length - 4, '**** **** **** ');
    }
    return _cardNumber;
  }

  void _toggleVisibility() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }


  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return  Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
          minimum: const EdgeInsets.only(top: 20,left: 10,bottom: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
           //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  children: [
                    const Text("Michael's Account",style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 25
                    ),),
                    const Spacer(),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                          color: neuLightBgColor,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(-5, -5),
                              blurRadius: 15,
                              spreadRadius: 10,
                              color: bgColor,
                            ),
                          ]
                      ),
                      child: Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFB89033),
                        ),
                        child: Center(
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: const BoxDecoration(
                              color: neuLightBgColor,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(Icons.notifications_rounded),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const Text('Selected Caxdsrd',style: TextStyle(
                fontSize: 15,fontWeight: FontWeight.bold,
              ),),
              Padding(
                padding: const EdgeInsets.only(right: 10,top: 15),
                child: Container(
                    height: 220,
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: customColor.withOpacity(0.7),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white.withOpacity(0.9), // Light shadow for top-left
                          offset: const Offset(-6, -6),
                          blurRadius: 16,
                        ),
                        const BoxShadow(
                          color: shadowColor,
                          offset: Offset(7, 7),
                          blurRadius: 26,
                        ),
                      ]
                    ),
                    child: Stack(
                      children: [
                        //left side circle
                       Positioned(
                          bottom: -200,
                          right: -20,
                          child: Container(
                            height: 300,
                            width: 300,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        //right side circle
                        Positioned(
                          top: -90,
                          right: 140,
                          child: Container(
                            height: 400,
                            width: 400,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.3),
                              shape: BoxShape.circle,
                            ),
                          ),),
                        Positioned(
                          top: -140,
                          right: -100,
                          child: Container(
                            height: 300,
                            width: 300,
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.white.withOpacity(0.7),
                                  width: 1.5,
                                  style: BorderStyle.solid,
                                )
                            ),
                          ),),
                        Positioned(
                          top: 20,
                          left: 20,
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: const BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 20,
                          left: 45,
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.orangeAccent.withOpacity(0.8),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        const Positioned(
                            top: 25,
                            left: 95,
                            child: Text('mastercard',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),)
                        ),
                        Positioned(
                          bottom: 30,
                          left: 20,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(_displayCardNumber,style: const TextStyle(fontSize: 17,fontWeight: FontWeight.w600)),
                                  const SizedBox(width: 10,),
                                  GestureDetector(
                                      onTap: _toggleVisibility,
                                      child: Opacity(
                                        opacity: 0.4,
                                          child: Text(_isHidden ? 'Show' : 'Hide',style: const TextStyle(fontWeight: FontWeight.bold),)),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 5,),
                              const Text('PLATINUM CARD',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w600)),
                            ],
                          ),
                        )
                      ],
                    )
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                child: Row(
                  children: [
                    Text('Momthly Expenses',style: TextStyle(fontWeight: FontWeight.w700),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15,bottom:10),
                child: Row(
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListItem(color: deepPurple, itemName: 'Groceries',),
                        ListItem(color: blueAccent, itemName: 'Online Shopping',),
                        ListItem(color: green, itemName: 'Eating Out',),
                        ListItem(color: amber, itemName: 'Bills',),
                        ListItem(color: red, itemName: 'Subscriptions',),
                        ListItem(color: blueGrey, itemName: 'Fees',),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      height: 180,
                      width: 180,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: bgColor,
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(-9, -9),
                            blurRadius: 15,
                            color: Colors.white.withOpacity(.5),
                          ),
                          const BoxShadow(
                            offset: Offset(9, 9),
                            blurRadius: 15,
                            color: Colors.black12,
                          )
                        ]
                      ),
                      child: CustomPaint(
                        size: const Size(60, 60),
                        painter: ChartCircle(
                            percent: [56,16,11,8,6,3], outerRadius: 40,
                            innerRadius: 10,
                            color: [blueAccent,deepPurple,green,amber,red,blueGrey]
                        ),
                        child:  Center(
                          child: Container(
                            height: 80,
                            width: 80,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: bgColor,
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(-9, -9),
                                    blurRadius: 15,
                                    color: Colors.white12,
                                  ),
                                  BoxShadow(
                                    offset: Offset(5, 5),
                                    blurRadius: 15,
                                    color: Colors.black12,
                                  )
                                ]
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const Row(
                children: [
                  Text('Transactions',style:
                  TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                  Spacer(),
                  Text('See All',style:
                  TextStyle(fontWeight: FontWeight.w700,fontSize: 15,color: Colors.brown)),
                  SizedBox(width: 15,)
                ],
              ),
              Flexible(
                child: ListView.builder(
                  itemCount: transactions.transactions.length,
                  itemBuilder: (context, index) {
                    final transaction = transactions.transactions[index];
                    return ListTile(
                      leading: transaction.icon,
                      title: Text(transaction.title,
                        style: const TextStyle(fontWeight: FontWeight.bold),),
                      subtitle: Opacity(
                        opacity: 0.5,
                          child: Text(transaction.subtitle)),
                      trailing: Text(transaction.amount.toString(),
                        style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.red,fontSize: 15),),
                    );
                  },
                ),
              ),
            ],
          )
      ),
    );
  }
}
