import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:steel_trap_app/database/itemDatabase.dart';
import 'package:steel_trap_app/pages/fabricator/menu/menu_item.dart';
import 'package:steel_trap_app/pages/fabricator/tabs/analytics_tab.dart';
import 'package:steel_trap_app/pages/fabricator/tabs/cart_tab.dart';
import 'package:steel_trap_app/pages/fabricator/tabs/notification_tab.dart';
import 'package:steel_trap_app/pages/fabricator/tabs/profile_tab.dart';
import 'package:steel_trap_app/pages/signup_page.dart';

import 'tabs/home_tab.dart';

class FabricatorHome extends StatefulWidget {
  static const routeName = '/fabricator_home_page';
  const FabricatorHome({Key? key}) : super(key: key);

  @override
  _FabricatorHomeState createState() => _FabricatorHomeState();
}

class _FabricatorHomeState extends State<FabricatorHome> {
  int _selectedItemIndex = 0;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'EBEXSOFT',
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w700),
        ),
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
        actions: [
          InkWell(
            onTap: () {
              setState(() {
                _selectedItemIndex = 3;
              });
            },
            child: Container(
              height: 10,
              width: 35,
              decoration: BoxDecoration(
                // color: Colors.red,
                borderRadius: BorderRadius.circular(35)
              ),
              child: Center(
                  child: Text(
                '!',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              )),
            ),
          ),
          PopupMenuButton<MenuItem>(
              onSelected: (item) => onSelected(context, item),
              itemBuilder: (context) => [
                    ...MenuItems.firstMenuList.map(buildItem).toList(),
                    // const PopupMenuDivider(),
                    ...MenuItems.secondMenuList.map(buildItem).toList(),
                  ]),
        ],
      ),
      backgroundColor: Theme.of(context).colorScheme.secondary,
      body: GetBody(
        selectedIndex: _selectedItemIndex,
      ),
      bottomNavigationBar: Row(
        children: [
          Flexible(
            flex: 1,
            child: InkWell(
              onTap: () {
                setState(() {
                  _selectedItemIndex = 0;
                });
              },
              child: CustomBottomNavigationBarItem(
                selectedItem: _selectedItemIndex,
                index: 0,
                size: size,
                icon: Icon(
                  Icons.home,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: InkWell(
              onTap: () {
                setState(() {
                  _selectedItemIndex = 1;
                });
              },
              child: CustomBottomNavigationBarItem(
                selectedItem: _selectedItemIndex,
                index: 1,
                size: size,
                icon: Icon(
                  Icons.add_shopping_cart,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: InkWell(
              onTap: () {
                setState(() {
                  _selectedItemIndex = 2;
                });
              },
              child: CustomBottomNavigationBarItem(
                selectedItem: _selectedItemIndex,
                index: 2,
                size: size,
                icon: Icon(
                  Icons.analytics_outlined,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
          ),
          // Flexible(
          //   flex: 1,
          //   child: InkWell(
          //     onTap: () {
          //       setState(() {
          //         _selectedItemIndex = 3;
          //       });
          //     },
          //     child: CustomBottomNavigationBarItem(
          //       selectedItem: _selectedItemIndex,
          //       index: 3,
          //       size: size,
          //       icon: Center(
          //           child: Text(
          //         '!',
          //         style: TextStyle(
          //           fontSize: 25,
          //           fontWeight: FontWeight.w800,
          //           color: Theme.of(context).primaryColor,
          //         ),
          //       )),
          //     ),
          //   ),
          // ),
          Flexible(
            flex: 1,
            child: InkWell(
              onTap: () {
                setState(() {
                  _selectedItemIndex = 4;
                });
              },
              child: CustomBottomNavigationBarItem(
                selectedItem: _selectedItemIndex,
                index: 4,
                size: size,
                icon: Icon(
                  Icons.person,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  PopupMenuItem<MenuItem> buildItem(MenuItem item) => PopupMenuItem<MenuItem>(
        value: item,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(item.icon, color: Theme.of(context).primaryColor, size: 25),
            const SizedBox(
              width: 10,
            ),
            Text(item.text),
          ],
        ),
      );

  onSelected(BuildContext context, MenuItem item) {
    switch (item) {
      case MenuItems.settings:
        {
          print('settings');
          break;
        }
      case MenuItems.updateApp:
        {
          print('updateappp');
          break;
        }
      case MenuItems.fileAComplaint:
        {
          print('filing a complaint');
          break;
        }
      case MenuItems.logOut:
        {
          Navigator.pushNamedAndRemoveUntil(
              context, SignUpPage.routeName, (route) => false);
        }
    }
  }
}

class GetBody extends StatefulWidget {
  GetBody({Key? key, required this.selectedIndex}) : super(key: key);
  int selectedIndex;

  @override
  _GetBodyState createState() => _GetBodyState();
}

class _GetBodyState extends State<GetBody> {
  @override
  Widget build(BuildContext context) {
    int index = widget.selectedIndex;
    if (index == 0) {
      return HomeTab();
    } else if (index == 1) {
      return cart_tab();
    } else if (index == 2) {
      return analytics_tab();
    } else if (index == 3) {
      return notification_tab();
    } else if (index == 4) {
      return profile_tab();
    }
    return Container(
      height: double.infinity,
      width: double.infinity,
      // color: Colors.pink,
    );
  }
}

class CustomBottomNavigationBarItem extends StatelessWidget {
  CustomBottomNavigationBarItem(
      {Key? key,
      required this.size,
      required this.icon,
      required this.index,
      required this.selectedItem})
      : super(key: key);

  final Size size;
  final Widget icon;
  int index;
  int selectedItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: size.width,
      decoration: BoxDecoration(
        color: selectedItem == index ? Colors.blue : Colors.white,
      ),
      child: icon,
    );
  }
}
