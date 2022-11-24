import 'package:flutter/material.dart';

class DashboardBanner extends StatelessWidget {
  const DashboardBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 10),
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
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 10),
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
                        image: AssetImage('assets/images/java.png'),
                        height: 100.0,
                      )),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Flutter',
                    style: Theme.of(context).textTheme.headline6,
                   
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    '100 Lessons',
                    style: Theme.of(context).textTheme.bodyText2,
                    
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 90),
          child: SizedBox(
                width: 100.0,
                height: 40.0,
                child: OutlinedButton(
                  onPressed: () {}, 
                  child: Text('View All', style: TextStyle(color: Colors.black),),
                  style: OutlinedButton.styleFrom(side: const BorderSide(width: 1.0, color: Colors.black),),
                  ),
          ),
        ),
      ],
    );
  }
}

