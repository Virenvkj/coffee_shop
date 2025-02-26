import 'package:flutter/material.dart';

class PageViewEx extends StatefulWidget {
  const PageViewEx({super.key});

  @override
  State<PageViewEx> createState() => _PageViewExState();
}

class _PageViewExState extends State<PageViewEx> {
  final pageController = PageController();
  final textList = ['Hello', 'How', 'Are', 'You', 'Doing'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width * 0.5,
                child: PageView.builder(
                  itemBuilder: (context, index) {
                    return Text(textList[index]);
                  },
                  itemCount: textList.length,
                  controller: pageController,
                ),
                // child: PageView(
                //   controller: pageController,
                //   children: const [
                //     Text("Hello"),
                //     Text("How"),
                //     Text("Are"),
                //     Text("You"),
                //   ],
                // ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      pageController.previousPage(
                        duration: const Duration(microseconds: 1),
                        curve: Curves.elasticInOut,
                      );
                    },
                    icon: const Icon(
                      Icons.last_page,
                      size: 34,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      pageController.nextPage(
                        duration: const Duration(microseconds: 1),
                        curve: Curves.elasticInOut,
                      );
                    },
                    icon: const Icon(
                      Icons.next_plan,
                      size: 34,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
