import 'package:flutter/material.dart';
import 'package:steel_trap_app/database/notifications.dart';

class notification_tab extends StatelessWidget {
  const notification_tab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Color(0xffEFEEEF),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
        child: ListView.builder(
          itemCount: notifications.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              elevation: 4,
              child: Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: Container(
                        height: double.infinity,
                        width: double.infinity,
                        child: ClipRRect(
                          child: Image.asset(notifications[index].imageUrl, fit: BoxFit.cover,),
                        ),
                      ),
                    ),
                    Flexible(
                        flex: 3,
                        child: Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(notifications[index].title),
                              Text(notifications[index].message, overflow: TextOverflow.ellipsis, maxLines: 4,),
                            ],
                          ),
                        )
                    ),
                    Flexible(
                        flex: 1,
                        child: Container(
                          child: Center(child: Text(notifications[index].hoursAgo)),
                        )
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
