import 'package:flutter/material.dart';
import 'package:solmusic/Style/Style.dart';

class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth >= 1200) {
          //Desktop
          return DesktopNavBar();
        } else if (constraints.maxWidth >= 800 &&
            constraints.maxWidth <= 1200) {
          //Tablet
          return DesktopNavBar();
        } else {
          //Mobile
          return MobileNavBar();
        }
      },
    );
  }
}

class DesktopNavBar extends StatefulWidget {
  @override
  _DesktopNavBarState createState() => _DesktopNavBarState();
}

class _DesktopNavBarState extends State<DesktopNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.15,
      color: Color(0xff08192D),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Wrap( 
                     alignment: WrapAlignment.center,
                    children: [
                      Text(
                        "Sol".toUpperCase(),
                        style: ThemText.titlePinkText,
                      ),
                      Text("Music".toUpperCase(), 
                      style: ThemText.titleWhiteText
                    )
                    ],
                  ),
                  Text("Home", style: ThemText.navBarWhiteTab),
                  Text("About", style: ThemText.navBarWhiteTab),
                  Text("Pages", style: ThemText.navBarWhiteTab),
                  Text("News", style: ThemText.navBarWhiteTab),
                  Text("Contact", style: ThemText.navBarWhiteTab),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(),
            ),
            Flexible(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Text("Help", 
                          style: ThemText.helpGreyText
                         ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              width: 0.75, 
                              height: 16, 
                              color: Colors.white
                            ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Text("Login", 
                          style: ThemText.loginWhiteText
                         ),
                        ),
                      ],
                    ),
                  ),
                  Text("Create an account",
                      style: ThemText.createAccountPinkText),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//Mobile NavBar

class MobileNavBar extends StatefulWidget {
  @override
  _MobileNavBarState createState() => _MobileNavBarState();
}

class _MobileNavBarState extends State<MobileNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
