import 'package:flutter/material.dart';
import 'package:learningdart/Responsive/Dashbord%20Screen/dashboard_option_models.dart';

class DashboardOptions extends StatelessWidget {
  const DashboardOptions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final list = DashboardOptionModels.list;
    return SizedBox(
      height: 45,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: list.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) =>
          GestureDetector(
            onTap: () => list [index].onPress,
            child: SizedBox(
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
                        list[index].title,
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
                          list[index].heading,
                          style: Theme.of(context).textTheme.subtitle1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          list[index].subHeading,
                          style: Theme.of(context).textTheme.bodyText2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),

          // SizedBox(
          //   width: 170,
          //   height: 45,
          //   child: Row(
          //     children: [
          //       Container(
          //         width: 45,
          //         height: 45,
          //         decoration: BoxDecoration(
          //             borderRadius: BorderRadius.circular(10),
          //             color: Colors.black),
          //         child: Center(
          //           child: Text(
          //             'JS',
          //             style: Theme.of(context)
          //                 .textTheme
          //                 .headline6
          //                 ?.apply(color: Colors.white),
          //           ),
          //         ),
          //       ),
          //       const SizedBox(
          //         width: 5.0,
          //       ),
          //       Flexible(
          //         child: Column(
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           mainAxisAlignment: MainAxisAlignment.center,
          //           children: [
          //             Text(
          //               'Java Script',
          //               style: Theme.of(context).textTheme.subtitle1,
          //               overflow: TextOverflow.ellipsis,
          //             ),
          //             Text(
          //               '10 Lessons',
          //               style: Theme.of(context).textTheme.bodyText2,
          //               overflow: TextOverflow.ellipsis,
          //             ),
          //           ],
          //         ),
          //       )
          //     ],
          //   ),
          // ),
          // SizedBox(
          //   width: 170,
          //   height: 45,
          //   child: Row(
          //     children: [
          //       Container(
          //         width: 45,
          //         height: 45,
          //         decoration: BoxDecoration(
          //             borderRadius: BorderRadius.circular(10),
          //             color: Colors.black),
          //         child: Center(
          //           child: Text(
          //             'JS',
          //             style: Theme.of(context)
          //                 .textTheme
          //                 .headline6
          //                 ?.apply(color: Colors.white),
          //           ),
          //         ),
          //       ),
          //       const SizedBox(
          //         width: 5.0,
          //       ),
          //       Flexible(
          //         child: Column(
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           mainAxisAlignment: MainAxisAlignment.center,
          //           children: [
          //             Text(
          //               'Java Script',
          //               style: Theme.of(context).textTheme.subtitle1,
          //               overflow: TextOverflow.ellipsis,
          //             ),
          //             Text(
          //               '10 Lessons',
          //               style: Theme.of(context).textTheme.bodyText2,
          //               overflow: TextOverflow.ellipsis,
          //             ),
          //           ],
          //         ),
          //       )
          //     ],
          //   ),
          // ),
  
        
       
      ),
    );
  }
}


