import 'package:best_flutter_ui_templates/design_course/home_design_course.dart';
import 'package:best_flutter_ui_templates/widgets/q_button.dart';
import 'package:best_flutter_ui_templates/widgets/q_button_outline.dart';
import 'package:flutter/material.dart';

class InputPrompt extends StatefulWidget {
  const InputPrompt({super.key});

  @override
  State<InputPrompt> createState() => _InputPromptState();
}

class _InputPromptState extends State<InputPrompt> {
  TextEditingController? scantextController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate([
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, top: 40.0, right: 20.0, bottom: 40.0),
                  child: Text(
                    "What are your requirements?",
                    style: const TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff8C0909),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Container(
                    height: 460.0,
                    padding: const EdgeInsets.only(
                        left: 20.0, top: 12.0, right: 20.0, bottom: 20.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2.0,
                        color: const Color(0xff8C0909),
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(16.0),
                      ),
                    ),
                    child: TextField(
                      maxLines: null,
                      controller: scantextController,
                      style: const TextStyle(
                        color: Color(0xff6d5271),
                        fontSize: 16.0,
                        letterSpacing: 0.2,
                        wordSpacing: 0.5,
                        height: 1.2,
                      ),
                      decoration: const InputDecoration(
                        isDense: true,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffd3d3d3),
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffd3d3d3),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, top: 20.0, right: 20.0, bottom: 32.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: QButtonOutline(
                              label: "Cancel",
                              onPress: () {
                                Navigator.pop(context);
                              }),
                        ),
                        const SizedBox(width: 20.0),
                        Expanded(
                          child: QButton(
                            label: "Search",
                            onPress: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      DesignCourseHomeScreen()));
                            },
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
    );
  }
}
