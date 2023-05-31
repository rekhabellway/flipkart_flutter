import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class AppScreen extends StatefulWidget {
  const AppScreen({Key? key}) : super(key: key);

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  ScrollController? _scrollController;
  bool lastStatus = true;
  double height = 200;

  void _scrollListener() {
    if (_isShrink != lastStatus) {
      setState(() {
        lastStatus = _isShrink;
      });
    }
  }

  bool status = false;

  bool get _isShrink {
    return _scrollController != null &&
        _scrollController!.hasClients &&
        _scrollController!.offset > (height - kToolbarHeight);
  }

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()..addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController?.removeListener(_scrollListener);
    _scrollController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final TextTheme textTheme = Theme.of(context).textTheme;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Horizons Weather',
      home: Scaffold(
        body: NestedScrollView(
          controller: _scrollController,
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                elevation: 0,
                pinned: true,
                expandedHeight: 150,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.parallax,
                  title: _isShrink
                      ? Container(
                          padding: const EdgeInsets.all(5),
                          child: Row(
                            children: [
                              SizedBox(
                                // width: Get.width/5,
                                child: FlutterSwitch(
                                  activeColor: const Color(0x18ffffff),
                                  activeTextColor: Colors.black,
                                  activeToggleColor: Colors.blueAccent,
                                  width: 60.0,
                                  height: 30.0,
                                  valueFontSize: 15.0,
                                  toggleSize: 15.0,
                                  value: status,
                                  borderRadius: 20.0,
                                  padding: 6.0,
                                  showOnOff: true,
                                  onToggle: (val) {
                                    setState(() {
                                      status = val;
                                    });
                                  },
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const SizedBox(
                                width: 330,
                                height: 50,
                                child: TextField(
                                  decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 1, color: Colors.grey),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 1, color: Colors.grey),
                                      ),
                                      hintText: 'Search for products',
                                      prefixIcon: Icon(
                                        Icons.mic,
                                        color: Colors.grey,
                                      ),
                                      suffixIcon: Icon(
                                        Icons.camera_alt_rounded,
                                        color: Colors.grey,
                                      ),
                                      suffix: Icon(
                                        Icons.search_off_outlined,
                                        color: Colors.grey,
                                      )),
                                ),
                              ),
                            ],
                          ),
                        )
                      : null,
                  background: SafeArea(
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/img_10.png",
                          height: 50,
                          width: 50,
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          child: Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(5),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      // width: Get.width/5,
                                      child: FlutterSwitch(
                                        activeColor: const Color(0x18ffffff),
                                        activeTextColor: Colors.black,
                                        activeToggleColor: Colors.blueAccent,
                                        width: 60.0,
                                        height: 30.0,
                                        valueFontSize: 15.0,
                                        toggleSize: 15.0,
                                        value: status,
                                        borderRadius: 20.0,
                                        padding: 6.0,
                                        showOnOff: true,
                                        onToggle: (val) {
                                          setState(() {
                                            status = val;
                                          });
                                        },
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const SizedBox(
                                      width: 330,
                                      height: 50,
                                      child: TextField(
                                        decoration: InputDecoration(
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  width: 1, color: Colors.grey),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  width: 1, color: Colors.grey),
                                            ),
                                            hintText: 'Search for products',
                                            prefixIcon: Icon(
                                              Icons.mic,
                                              color: Colors.grey,
                                            ),
                                            suffixIcon: Icon(
                                              Icons.camera_alt_rounded,
                                              color: Colors.grey,
                                            ),
                                            suffix: Icon(
                                              Icons.search_off_outlined,
                                              color: Colors.grey,
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ];
          },
          body: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return Container();
                  },
                  childCount: 1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
