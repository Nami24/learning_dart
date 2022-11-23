import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Dashboard',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        elevation: 0,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.person,
              ),
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
          child: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hey, explore your idea.',
              style: Theme.of(context).textTheme.bodyText2,
            ),
            Text(
              'Start Coding',
              style: Theme.of(context).textTheme.headline2,
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              decoration: const BoxDecoration(
                  border: Border(left: BorderSide(width: 4))),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Search.....',
                    style: Theme.of(context)
                        .textTheme
                        .headline2
                        ?.apply(color: Colors.grey.withOpacity(0.5)),
                  ),
                  const Icon(
                    Icons.mic,
                    size: 25,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),

            //options
            SizedBox(
              height: 45,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: [
                  SizedBox(
                    width: 170,
                    height: 45,
                    child: Row(
                      children: [
                        Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black),
                          child: Center(
                            child: Text(
                              'JS',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  ?.apply(color: Colors.white),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Java Script',
                                style: Theme.of(context).textTheme.headline6,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                '10 Lessons',
                                style: Theme.of(context).textTheme.bodyText2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 170,
                    height: 45,
                    child: Row(
                      children: [
                        Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black),
                          child: Center(
                            child: Text(
                              'JS',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  ?.apply(color: Colors.white),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Java Script',
                                style: Theme.of(context).textTheme.headline6,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                '10 Lessons',
                                style: Theme.of(context).textTheme.bodyText2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 170,
                    height: 45,
                    child: Row(
                      children: [
                        Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black),
                          child: Center(
                            child: Text(
                              'JS',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  ?.apply(color: Colors.white),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Java Script',
                                style: Theme.of(context).textTheme.headline6,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                '10 Lessons',
                                style: Theme.of(context).textTheme.bodyText2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const SizedBox(height: 20.0,),
            // Banners
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.yellow[100]),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Flexible(
                                child: Image(
                              image: AssetImage('assets/images/bookmark.png'),
                              height: 30.0,
                            )),
                            Flexible(
                                child: Image(
                              image: AssetImage('assets/images/android.png'),
                              height: 100.0,
                            )),
                          ],
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Text(
                          'Android for Beginers',
                          style: Theme.of(context).textTheme.headline6,
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          '10 Lessons',
                          style: Theme.of(context).textTheme.bodyText2,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                    child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.yellow[100]),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Flexible(
                                  child: Image(
                                image: AssetImage('assets/images/bookmark.png'),
                                height: 30.0,
                              )),
                              Flexible(
                                  child: Image(
                                image: AssetImage('assets/images/android.png'),
                                height: 100.0,
                              )),
                            ],
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Text(
                            'JAVA',
                            style: Theme.of(context).textTheme.headline6,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            '10 Lessons',
                            style: Theme.of(context).textTheme.bodyText2,
                            overflow: TextOverflow.ellipsis,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 150.0,
                      height: 40.0,
                      child: OutlinedButton(
                        onPressed: () {}, 
                        child: const Text('View All'),
                        ),
                    ),
                  ],
                ))
              ],
            ),
            const SizedBox(height: 20.0,),

            // top course
            Text('Top Course', style: Theme.of(context).textTheme.headline4?.apply(fontSizeFactor: 1.2),),
            SizedBox(
              width: 320,
              height: 200,
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
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
