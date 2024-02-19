import 'package:flutter/material.dart';
class Explore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Place List'),
          backgroundColor: Colors.teal,
        ),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text('list of places to explore',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child:
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children:[
                  Text('Places', style:
                  TextStyle(fontSize :18 , fontWeight : FontWeight.bold)
                  ),
                  InkWell(child :
                  Text('See all ->' ,
                      style :
                      TextStyle( fontSize :16 , color : Colors.grey)),
                    onTap : (){
                    },

                  )
                ]),
              ),

              Expanded(child :
              ListView.builder(itemBuilder:(context,index){
                return Card(
                    margin : EdgeInsets.symmetric(horizontal :16.0, vertical :8.0),
                    shape :
                    RoundedRectangleBorder(borderRadius : BorderRadius.circular(10)),
                    elevation :4,

                    child :

                    Padding(padding :
                    const EdgeInsets.all(12),
                        child :

                        Row(children:[
                          Image.network('https://via.placeholder.com/100',
                              width : 100,
                              height:100
                          ),
                          SizedBox(width:12),

                          Column(

                            crossAxisAlignment:
                            CrossAxisAlignment.start,

                            children:[

                              Text('Istanbul' , style:

                              TextStyle(fontSize :18)

                              ),

                              SizedBox(height :4),

                              Row(children:[

                                Icon(Icons.location_on, color:

                                Colors.green),

                                SizedBox(width :4),

                                Text('19.2km away')
                              ],)
                            ],
                          ),
                          Spacer(),
                        ])
                    )
                );
              }),
              )
            ]
        )
    );
  }
}