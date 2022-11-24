import 'package:flutter/material.dart';

class DashboardTopcourse extends StatelessWidget {
  const DashboardTopcourse({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: [
          SizedBox(
            width: 320,
            height: 200,
            child: Padding(
              padding: const EdgeInsets.only(right:10, top: 5),
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color:Colors.yellow[100],),
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: 
                          Text("Flutter Crash Course",
                          style: Theme.of(context).textTheme.headline6, 
                          maxLines: 2, overflow: 
                          TextOverflow.ellipsis,),
                          ),
                          const Flexible(child: Image(image: AssetImage('assets/images/img4.jpg'), height: 110,))
                      ],
                    ),
                  Row(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(shape: const CircleBorder(), backgroundColor: Colors.black),
                        onPressed: () {}, 
                        child: const Icon(Icons.play_arrow,),
                        ),
                        const SizedBox(width: 10.0,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('4 Sections', style: Theme.of(context).textTheme.headline4, overflow: TextOverflow.ellipsis,),
                            Text('Programming Langauge', style: Theme.of(context).textTheme.bodyText2, overflow: TextOverflow.ellipsis,)
                          ],
                        )
                    ],
                  )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: 320,
            height: 200,
            child: Padding(
              padding: const EdgeInsets.only(right:10, top: 5),
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color:Colors.yellow[100],),
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: 
                          Text("HTML/CSS Crash Course",
                          style: Theme.of(context).textTheme.headline6, 
                          maxLines: 2, overflow: 
                          TextOverflow.ellipsis,),
                          ),
                          const Flexible(child: Image(image: AssetImage('assets/images/html.jpg'), height: 110,))
                      ],
                    ),
                  Row(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(shape: const CircleBorder(), backgroundColor: Colors.black),
                        onPressed: () {}, 
                        child: const Icon(Icons.play_arrow),
                        ),
                        const SizedBox(width: 10.0,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('4 Sections', style: Theme.of(context).textTheme.headline4, overflow: TextOverflow.ellipsis,),
                            Text('Programming Langauge', style: Theme.of(context).textTheme.bodyText2, overflow: TextOverflow.ellipsis,)
                          ],
                        )
                    ],
                  )
                  ],
                ),
              ),
            ),
          ),
          
         
        ],
      ),
    );
  }
}