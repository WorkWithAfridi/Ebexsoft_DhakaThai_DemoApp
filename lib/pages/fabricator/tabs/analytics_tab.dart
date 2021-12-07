
import 'package:flutter/material.dart';

class analytics_tab extends StatelessWidget {
  const analytics_tab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Color(0xffEFEEEF),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5),
                child: Text('Compare Sales Strategy: ', style: TextStyle(fontSize: 15),),
              ),
              Container(
                height: 200,
                width: double.infinity,
                // color: Colors.green,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  elevation: 5,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset('assets/images/charts/barchart_1.png', fit: BoxFit.cover,),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5),
                child: Text('Barchart: ', style: TextStyle(fontSize: 15),),
              ),
              Container(
                height: 200,
                width: double.infinity,
                // color: Colors.green,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  elevation: 5,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset('assets/images/charts/barchart.png', fit: BoxFit.cover,),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5),
                child: Text('Experimental Chart: ', style: TextStyle(fontSize: 15),),
              ),
              Container(
                height: 200,
                width: double.infinity,
                // color: Colors.green,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  elevation: 5,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset('assets/images/charts/monthly-sales.png', fit: BoxFit.cover,),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5),
                child: Text('Compare Sales Strategy: ', style: TextStyle(fontSize: 15),),
              ),
              Container(
                height: 300,
                width: double.infinity,
                // color: Colors.green,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  elevation: 5,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset('assets/images/charts/charts_experimentation.png', fit: BoxFit.cover,),
                  ),
                ),
              ),
              SizedBox(height: 10,)
            ],
          ),
        ),
      ),
    );
  }
}
