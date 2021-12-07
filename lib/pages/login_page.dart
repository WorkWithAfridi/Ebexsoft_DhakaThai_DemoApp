import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:steel_trap_app/database/users.dart';
import 'package:steel_trap_app/pages/admin/home_page_admin.dart';
import 'package:steel_trap_app/pages/register_page.dart';

import 'dealer/home_page_dealer.dart';
import 'fabricator/home_page_fabricator.dart';

class SignInPage extends StatefulWidget {
  static const routeName = '/log_in_page';
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool isEmailCorrect=true;
  bool isPasswordCorrect=true;
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
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
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_outlined,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        'Lets sign you in.',
                        style: TextStyle(
                            color: Theme.of(context)
                                .colorScheme
                                .secondary
                                .withOpacity(0.9),
                            fontSize: 35,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        'Welcome back.',
                        style: TextStyle(
                            color: Theme.of(context)
                                .colorScheme
                                .secondary
                                .withOpacity(0.9),
                            fontSize: 25,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 15),
                      child: TextFormField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        maxLines: 1,
                        style: TextStyle(color: Theme.of(context).colorScheme.secondary),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white70.withOpacity(0.2)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white70),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          filled: true,
                          errorText: isEmailCorrect? null: 'Incorrect credentials, please try again.',
                          fillColor: Theme.of(context).primaryColor,
                          hintText: ' Phone, email or username',
                          hintStyle: const TextStyle(
                              color: Colors.white38,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 0),
                      child: TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        controller: passwordController,
                        maxLines: 1,
                        obscureText: true,
                        style: TextStyle(color: Theme.of(context).colorScheme.secondary),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white70.withOpacity(0.2)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white70),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          filled: true,
                          errorText: isPasswordCorrect? null: 'Incorrect password, please try again.',
                          fillColor: Theme.of(context).primaryColor,
                          hintText: ' Password',
                          hintStyle: const TextStyle(
                              color: Colors.white38,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  height: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account? ",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context)
                                  .colorScheme
                                  .secondary
                                  .withOpacity(0.4),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.popAndPushNamed(context, RegisterPage.routeName, arguments: {});
                            },
                            child: const Text(
                              "Register",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: (){
                            String email=emailController.text;
                            String password=passwordController.text;
                            if(email.isEmpty){
                              isEmailCorrect=false;
                              setState(() {});
                            }
                            else if(password.isEmpty){
                              isPasswordCorrect=false;
                              setState(() {});
                            }
                            else{
                              adminDatabase.forEach((user) {
                                if(user.id==email){
                                  if(user.password==password){
                                    Navigator.pushReplacementNamed(context, AdminHome.routeName, arguments: { 'id': email});
                                  }
                                }
                              });
                              dealerDatabase.forEach((user) {
                                if(user.id==email){
                                  // if(user.password==password){
                                  //   Navigator.pushReplacementNamed(context, FabricatorHome.routeName, arguments: { 'id': email});
                                  // }
                                  if(user.password==password){
                                    Navigator.pushNamedAndRemoveUntil(context, DealerHome.routeName, (route) => false);
                                  }
                                }
                              });
                              fabricatorDatabase.forEach((user) {
                                if(user.id==email){
                                  // if(user.password==password){
                                  //   Navigator.pushReplacementNamed(context, FabricatorHome.routeName, arguments: { 'id': email});
                                  // }
                                  if(user.password==password){
                                    Navigator.pushNamedAndRemoveUntil(context, FabricatorHome.routeName, (route) => false);
                                  }
                                }
                              });
                            }
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.width * .13,
                          width: MediaQuery.of(context).size.width * .75,
                          decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Center(
                              child: Text(
                            'Sign in',
                            style: TextStyle(
                                color: Color(0xff1F1D25),
                                fontSize: 17,
                                fontWeight: FontWeight.w700),
                          )),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
