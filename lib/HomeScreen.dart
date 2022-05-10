import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Color(0xffcbcbcb),
      drawer: Drawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text('Home',style: TextStyle(
          color: Colors.black
        ),),
        actions: [
          CircleAvatar(
            radius: 12,
            backgroundColor: Color(0xffd4d181),
            child: Icon(
              Icons.search,size: 17,color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              radius: 12,
              backgroundColor: Color(0xffd4d181),
              child: Icon(
                Icons.shop,size: 17,color: Colors.black,
              ),
            ),
          ),
        ],
        backgroundColor: Color(0xffd6b738),

      ),
body: Padding(
  padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
  child:   Column(

    children: [

      Container(


        height: 150,

        decoration: BoxDecoration(
image: DecorationImage(
  fit: BoxFit.cover,
  image: NetworkImage('data:image/jpeg;base64,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')
),
          color: Colors.red,

          borderRadius: BorderRadius.circular(10),

        ),

child: Row(
  children: [
    Expanded(child: Container(
     // color: Colors.red,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 128,bottom: 10),
            child: Container(
              height: 50,
                width: 50,

              decoration: BoxDecoration(
                  color: Color(0xffd1ad17),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30)
                )
              ),
              child: Center(
                child: Text('Vegi',
                style: TextStyle(
                  fontSize: 21,
                  color: Colors.white,
                  shadows: [
                    BoxShadow(
                      color: Colors.green,
                      blurRadius: 3,
                      offset: Offset(3,3),
                    )
                  ]
                ),),
              ),

            )

          ),
          Text(
            '30% Off',
            style: TextStyle(
                fontSize: 40,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'On all vegetables products',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    ),),

    Expanded(child: Container(

    ),),
  ],
),

      ),
Padding(
  padding: const EdgeInsets.symmetric(vertical: 5),
  child:   Row(

    mainAxisAlignment: MainAxisAlignment.spaceBetween,

    children: [

      Text('Herbs Seasonings'),

      Text(

        'view all',

        style: TextStyle(color: Colors.grey),

      ),

    ],

  ),

),

Row(
  children: [
    Container(
      height: 230,
      width: 160,

      decoration: BoxDecoration(
          color: Color(0xffd9dad9),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment:CrossAxisAlignment.start ,
        children: [
          Expanded(

              child: Image.network(

          'data:image/jpeg;base64,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'),
          ),
Expanded(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,
      vertical: 5,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Fresh Basil',
            style: TextStyle(
                color: Colors.black),),
          Text('Fresh Basil',
            style: TextStyle(
                color: Colors.black),),

          Container(
              height: 30,
              child: OutlineButton(

                onPressed: (){},))
        ],
      ),
    ))
        ],
      )
    )
  ],
)
    ],

  ),
)


    );
  }
}
