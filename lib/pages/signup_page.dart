import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:steel_trap_app/pages/login_page.dart';
import 'package:steel_trap_app/pages/register_page.dart';

class SignUpPage extends StatelessWidget {
  static const routeName='/sign_up_page';
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: Text('SignUp'),
          elevation: 0,
        ),
      ),
      body: Container(
        color: Theme.of(context).primaryColor,
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Flexible(
                  flex: 3,
                  child: Container(
                    height: double.infinity,
                    width: double.infinity,
                    child: Center(
                      child: ClipRRect(
                        child: Image.asset(
                          'assets/images/signup2.jpg',
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                  )),
              Flexible(
                  flex: 2,
                  child: Container(
                    height: double.infinity,
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                          text: TextSpan(children: [
                            TextSpan(
                              text: 'EBEX',
                              style: TextStyle(
                                  fontSize: 55,
                                  fontWeight: FontWeight.w900,
                                  color: Theme.of(context).colorScheme.secondary),
                            ),
                            TextSpan(
                              text: '\nSOFT',
                              style: TextStyle(
                                  fontSize:55,
                                  fontWeight: FontWeight.w900,
                                  color: Theme.of(context).colorScheme.secondary),
                            ),
                            // TextSpan(
                            //   text: '.',
                            //   style: TextStyle(
                            //       fontSize: 35,
                            //       fontWeight: FontWeight.w900,
                            //       color: Theme.of(context).colorScheme.secondary),
                            // ),
                          ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 5),
                          child: Text(
                            'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros. Nullam malesuada erat ut turpis. Suspendisse urna nibh, viverra non, semper suscipit, posuere a, pede.',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Theme.of(context)
                                    .colorScheme
                                    .secondary
                                    .withOpacity(0.4)),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  )),
              Flexible(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white12,
                          borderRadius: BorderRadius.circular(15)),
                      height: MediaQuery.of(context).size.width * .13,
                      width: MediaQuery.of(context).size.width * .75,
                      child: Row(
                        children: [
                          Flexible(
                            flex: 1,
                            child: InkWell(
                              onTap: (){
                                Navigator.pushNamed(context, RegisterPage.routeName, arguments: {});
                              },
                              child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.white70,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: const Center(
                                  child: Text(
                                    'Register',
                                    style: TextStyle(
                                        color: Color(0xff1F1D25),
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: InkWell(
                              onTap: (){
                                Navigator.pushNamed(context, SignInPage.routeName,arguments: {});
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: const Center(
                                  child: Text(
                                    'Sign in',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
