import 'package:flutter/material.dart';

class expander extends StatefulWidget {
  @override
  _expander createState() => _expander();
}

class _expander extends State<expander> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Uncomment if you need to make use of the appBar widget
      //     appBar: AppBar(
      //   centerTitle: true,
      //   titleSpacing: 1,
      //   title: Text("expander Widget"),
      // ),
      body: ListView(
        children: <Widget>[
          Row(
            children: <Widget>[
              //flex for container 1
              expanded_container1(context),

              //flex for container 2
              expanded_container2(context),
            ],
          )
        ],
      ),
    );
  }

  Expanded expanded_container1(BuildContext context) {
    return Expanded(
        flex: 0 * 1,
        child: Container(
          color: Colors.black,
          height: MediaQuery.of(context).size.height,
          width: 60,
          child: SafeArea(
            child: Column(
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(top: 2),
                    child: IconButton(
                      icon: Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    )),
                SizedBox(
                  height: 100,
                ),
                Side_icon(Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 20,
                )),
                SizedBox(
                  height: 30,
                ),
                Side_icon(Icon(
                  Icons.file_download,
                  color: Colors.white,
                  size: 20,
                )),
                SizedBox(
                  height: 30,
                ),
                Side_icon(Icon(
                  Icons.share,
                  color: Colors.white,
                  size: 20,
                )),
                SizedBox(
                  height: 30,
                ),
                Side_icon(Icon(
                  Icons.settings,
                  color: Colors.white,
                  size: 20,
                )),
              ],
            ),
          ),
        ));
  }

  Expanded expanded_container2(BuildContext context) {
    return Expanded(
        flex: 3,
        child: Container(
          height: MediaQuery.of(context).size.height,
          // height: double.infinity,
          width: double.infinity,
          child: SafeArea(
            child: ListView(
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 250.0, top: 10),
                      child: Side_icon(Icon(Icons.search)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 20),
                      child: Text(
                        'Gallary X ',
                        style: TextStyle(
                          // fontFamily: 'Tempus Sans ITC',
                          fontSize: 33,
                          fontWeight: FontWeight.w300,
                          color: const Color(0xff000000),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 1.0, left: 20),
                      child: SizedBox(
                        width: 70,
                        child: Divider(
                          color: Colors.black.withOpacity(0.7),
                          thickness: 2,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.all(8),
                    //   child: Text(
                    //     "The right app to get the pictures of your dreams",
                    //     textAlign: TextAlign.left,
                    //     style: TextStyle(fontSize: 15),
                    //   ),
                    // ),
                    display_images("images/5355.jpg"),
                    display_images2("images/15460.jpg"),
                    display_images("images/5355.jpg"),
                    display_images2("images/15460.jpg"),
                  ],
                ),
              ],
            ),
          ),
        ));
  }

  Padding display_images(String mage) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          // Adobe XD layer: '5355' (shape)
          Expanded(
            child: Container(
              width: 150.0,
              height: 250.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18.0),
                image: DecorationImage(
                  image: AssetImage(mage),
                  alignment: Alignment.bottomCenter,
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x91000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                Container(
                  width: 120.0,
                  height: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: AssetImage(mage),
                      alignment: Alignment.bottomCenter,
                      fit: BoxFit.cover,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x91000000),
                        offset: Offset(0, 3),
                        blurRadius: 6,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 120.0,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: AssetImage(mage),
                      alignment: Alignment.bottomCenter,
                      fit: BoxFit.cover,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x91000000),
                        offset: Offset(0, 3),
                        blurRadius: 6,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Padding display_images2(String mage) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          // Adobe XD layer: '5355' (shape)

          Expanded(
            child: Column(
              children: <Widget>[
                Container(
                  width: 120.0,
                  height: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: AssetImage(mage),
                      alignment: Alignment.bottomCenter,
                      fit: BoxFit.cover,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x91000000),
                        offset: Offset(0, 3),
                        blurRadius: 6,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 120.0,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: AssetImage(mage),
                      alignment: Alignment.bottomCenter,
                      fit: BoxFit.cover,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x91000000),
                        offset: Offset(0, 3),
                        blurRadius: 6,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: 150.0,
              height: 250.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18.0),
                image: DecorationImage(
                  image: AssetImage(mage),
                  alignment: Alignment.bottomCenter,
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x91000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );

//method for the sidebar container icons
  }

  Widget Side_icon(Icon numme) {
    return GestureDetector(
      child: Container(
        width: 40.0,
        height: 40.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.black12,
          border: Border.all(color: const Color(0xa8cec7c7).withOpacity(0.4)),
        ),
        child: numme,
      ),
    );
  }
}
