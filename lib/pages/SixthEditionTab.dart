import 'package:fear_of_god/models/ShopItemType.model.dart';
import 'package:fear_of_god/utils/FogIcons.dart';
import 'package:fear_of_god/widgets/LooksList.dart';
import 'package:fear_of_god/widgets/ShopList.dart';
import 'package:fear_of_god/widgets/SixthCollectionHeader.dart';
import 'package:flutter/material.dart';

class SixthEditionTab extends StatefulWidget {
  static const String routeName = "/sixth";

  @override
  _SixthEditionTabState createState() => _SixthEditionTabState();
}

class _SixthEditionTabState extends State<SixthEditionTab>
    with SingleTickerProviderStateMixin {
  Animation<Offset> offset;
  AnimationController animator;
  Animation<Offset> secondOffset;
  bool animated = false;

  @override
  void initState() {
    animator =
        AnimationController(vsync: this, duration: Duration(milliseconds: 1000));
    offset = Tween<Offset>(begin: Offset(1, 0), end: Offset.zero).animate(
        CurvedAnimation(
            curve: Interval(0.2, 0.7, curve: Curves.easeOut), parent: animator));

    secondOffset = Tween<Offset>(begin: Offset(-1, 0), end: Offset.zero)
        .animate(CurvedAnimation(
            curve: Interval(0.5, 1, curve: Curves.easeIn), parent: animator));
    super.initState();
  } 

  @override
  void didChangeDependencies() {
    if (!animated) {
      animator.forward();
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;

    return SafeArea(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        // color: Colors.yellow,
        child: SingleChildScrollView(
          child: Stack(
            overflow: Overflow.visible,
            children: [
              Column(
                children: [
                  AspectRatio(
                    aspectRatio: 1.1,
                    child: Hero(
                      tag: "SIXTH",
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40),
                        ),
                        child: Image.asset(
                          "assets/images/SIXTH01.jpg",
                          fit: BoxFit.cover,
                          alignment: Alignment.topCenter,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.2),
                  SlideTransition(
                    position: secondOffset,
                    child: Column(
                      children: [
                        const ShopList(type: ShopItemType.BOTTOM),
                        const SizedBox(height: 30),
                        const ShopList(type: ShopItemType.TOP),
                        const SizedBox(height: 60),
                      ],
                    ),
                  )
                ],
              ),
              SixthCollectionHeader(),
              Positioned(
                top: height * 0.32,
                left: 0,
                width: width,
                child: SlideTransition(
                    position: offset,
                    child: LooksList(showTitle: true, textColor: Colors.white)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
