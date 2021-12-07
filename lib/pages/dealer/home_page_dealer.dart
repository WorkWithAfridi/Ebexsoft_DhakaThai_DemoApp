import 'package:flutter/material.dart';
import 'package:steel_trap_app/pages/dealer/tabs/analytics_tab.dart';
import 'package:steel_trap_app/pages/dealer/tabs/cart_tab.dart';
import 'package:steel_trap_app/pages/dealer/tabs/home_tab.dart';
import 'package:steel_trap_app/pages/dealer/tabs/inventory_tab.dart';
import 'package:steel_trap_app/pages/dealer/tabs/notification_tab.dart';
import 'package:steel_trap_app/pages/dealer/tabs/profile_tab.dart';

import '../signup_page.dart';
import 'menu/menu_item.dart';

class DealerHome extends StatefulWidget {
  static const routeName = '/dealer_home_page';
  const DealerHome({Key? key}) : super(key: key);

  @override
  _DealerHomeState createState() => _DealerHomeState();
}

class _DealerHomeState extends State<DealerHome> {
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
                _selectedItemIndex = 6;
              });
            },
            child: Container(
              height: 10,
              width: 35,
              decoration: BoxDecoration(
                  // color: Colors.red,
                  borderRadius: BorderRadius.circular(35)),
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
      floatingActionButton: _selectedItemIndex == 1
          ? FloatingActionButton(
              backgroundColor: Theme.of(context).primaryColor,
              onPressed: () {},
              child: const Icon(Icons.add),
            )
          : null,
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
                  Icons.insights,
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
                  Icons.inventory_2_outlined,
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
                  _selectedItemIndex = 3;
                });
              },
              child: CustomBottomNavigationBarItem(
                selectedItem: _selectedItemIndex,
                index: 3,
                size: size,
                icon: Icon(
                  Icons.add_shopping_cart,
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
      case MenuItems.requestFabricatorAccount:
        {
          print('requesting fab acoount');
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
      return analytics_tab();
    } else if (index == 1) {
      return Inventory();
    } else if (index == 2) {
      return HomeTab();
    } else if (index == 3) {
      return cart_tab();
    } else if (index == 6) {
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
