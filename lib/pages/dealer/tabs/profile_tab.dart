
import 'package:flutter/material.dart';

class profile_tab extends StatelessWidget {
  const profile_tab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffEFEEEF),
      height: double.infinity,
      width: double.infinity,
      // color: Colors.grey,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 230,
              width: double.infinity,
              // color: Colors.green,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      height: 150,
                      // width:double.infinity,
                      width: MediaQuery.of(context).size.width,
                      child: ClipRRect(
                        child: Image.asset(
                            'assets/images/banner/profile_banner.jpg',
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 15,
                    left: 0,
                    child: SizedBox(
                      width: 150,
                      height: 150,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(150),
                        child: Image.asset(
                            'assets/images/banner/profile.png'),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 30,
                    right: 10,
                    child: Container(
                      height: 40,
                      width: 150,
                      color: Color(0xff14221C),
                      child: const Center(
                        child: Text(
                          'Edit Profile',
                          style: TextStyle(
                              color: Color(0xffEFEEEF),
                              fontWeight: FontWeight.w500,
                              fontSize: 15),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Center(
              child: Text(
                'Random Dealer',
                style: TextStyle(
                  color: Color(0xff14221C),
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Center(
              child: Text(
                'Verified by EBEXSOFT.',
                style: TextStyle(
                  color: Color(0xff14221C),
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                height: 210,
                // color: Colors.red,
                child: Stack(
                  children: [
                    Positioned(
                      top: 10,
                      right: 0,
                      left: 0,
                      child: Container(
                        height: 200,
                        decoration: BoxDecoration(
                          // color: Colors.cyan,
                            border:
                            Border.all(width: 3, color: Colors.black12),
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 25,
                      child: Container(
                        color: const Color(0xffEFEEEF),
                        child: const Text(
                          ' About Me: ',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
                            color: Color(0xff14221C),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      right: 0,
                      left: 0,
                      child: Container(
                        padding: EdgeInsets.all(20),
                        height: 200,
                        child: const Center(
                          child: Text(
                            'Praesent dapibus, neque id cursus faucibus, tortor neque egestas auguae,'
                                ' eu vulputate magna eros eu erat. Aliquam erat volutpat.'
                                ' Nam dui mi, tincidunt',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xff14221C), fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Center(
                child: Text(
                  'Member Since: 20-Oct.-2021',
                  style: TextStyle(color: Color(0xff14221C), fontSize: 15, fontWeight: FontWeight.w600),
                ))
          ],
        ),
      ),
    );
  }
}

