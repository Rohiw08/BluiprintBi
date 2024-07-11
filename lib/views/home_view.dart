// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_login_ui/core/common/button_icon.dart';
import 'package:responsive_login_ui/core/common/create_button.dart';
import 'package:responsive_login_ui/core/common/icon_button.dart';
import 'package:responsive_login_ui/core/common/search_bar.dart';
import 'package:responsive_login_ui/core/common/sidebar_content_bar.dart';
import 'package:responsive_login_ui/core/common/square_icon_button.dart';
import 'package:responsive_login_ui/core/utils/button_text.dart';
import 'package:responsive_login_ui/core/utils/screen_width.dart';
import 'package:responsive_login_ui/views/chat_view.dart';
import 'package:responsive_login_ui/views/download_pdf_view.dart';

// Generate a random invitation code
String generateInvitationCode() {
  return "jgjvbhahblkSJVkDASLSVCHVBA";
}

// Show the invitation dialog
void showInvitationDialog(BuildContext context) async {
  String invitationCode = generateInvitationCode();

  await showDialog(
    context: context,
    builder: (_) => AlertDialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      content: Builder(
        builder: (context) {
          // Get available height and width of the build area of this widget. Make a choice depending on the size.
          // var height = MediaQuery.of(context).size.height;
          // var width = MediaQuery.of(context).size.width;

          return SizedBox(
            height: 200,
            width: 400,
            child: Column(
              children: [
                const Text("Invite people to this workspace"),
                const SizedBox(
                  height: 20,
                ),
                buttonText("Enter email IDs"),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  // controller: controller,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 10.0),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.grey[500]!, width: 0.1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.grey[500]!, width: 0.1),
                    ),
                    filled: true,
                    fillColor: const Color(0xfff2f2f2),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                CreateButton(
                    height: 40,
                    width: 100,
                    text: "Send",
                    onPressed: () {},
                    icon: Icons.send)
              ],
            ),
          );
        },
      ),
    ),
  );
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = getScreenWidth(context);

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: PreferredSize(
          preferredSize: const Size(double.infinity, 60),
          child: SideBar(
            height: 50,
            width: screenWidth,
            minWidth: screenWidth,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Center(
                    child: CustomButtonIcon(
                      height: 25,
                      width: 150,
                      text: "Workspace",
                      onPressed: () {},
                      icon: Icons.keyboard_arrow_down_sharp,
                    ),
                  ),
                ),
                if (screenWidth > 700) // Conditionally display CustomSearchBar
                  const Expanded(
                    child: Center(
                      child: CustomSearchBar(
                        height: 33,
                        width: 180,
                        hintText: "Search directory",
                      ),
                    ),
                  ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (screenWidth <=
                          700) // Conditionally display CustomSearchBar
                        CustomIconButton(
                          // Conditionally display CustomIconButton for 300px screen
                          onPressed: () {},
                          icon: Icons.search_outlined,
                          size: 20,
                        ),
                      const SizedBox(width: 5),
                      screenWidth < 700
                          ? CustomIconButton(
                              // Conditionally display CustomIconButton for 300px screen
                              onPressed: () {},
                              icon: Icons.person_add_alt,
                              size: 20,
                            )
                          : CreateButton(
                              // Display CreateButton for other screen sizes
                              text: "Invite",
                              icon: Icons.person_add_alt,
                              height: 25,
                              width: 95,
                              onPressed: () {
                                showInvitationDialog(context);
                              },
                            ),
                      const SizedBox(
                        width: 5,
                      ),
                      CustomIconButton(
                        icon: Icons.settings_outlined,
                        onPressed: () {},
                        size: 20,
                      ),
                      CustomIconButton(
                        icon: Icons.notifications_none_outlined,
                        onPressed: () {},
                        size: 20,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const CircleAvatar(
                        backgroundColor: Colors.deepPurpleAccent,
                        radius: 13,
                        child: Icon(Icons.person),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
      body: Row(
        children: [
          // const Expanded(flex: 1, child: Placeholder()),
          const SideBar(
            minWidth: 45,
            width: 80,
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                SquareIconButton(
                    icon: Icons.folder_open_sharp,
                    text: "Reports",
                    height: 45,
                    maxHeight: 80,
                    iconSize: 25),
                SizedBox(
                  height: 5,
                ),
                SquareIconButton(
                  icon: Icons.history_sharp,
                  text: "History",
                  height: 45,
                  maxHeight: 80,
                  iconSize: 25,
                )
              ],
            ),
          ),
          SideBar(
            minWidth: 270,
            width: 270,
            height: double.infinity,
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 5,
                    ),
                    const CustomSearchBar(
                      height: 25,
                      width: 150,
                      hintText: "Search file",
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    CreateButton(
                      icon: Icons.add,
                      text: "Create",
                      height: 25,
                      width: 100,
                      onPressed: () {},
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                ListTile(
                  title: buttonText("project_plan"),
                  trailing: Icon(Icons.segment_outlined),
                ),
                // const SizedBox(height: 310),
                // buttonText("Create file")
              ],
            ),
          ),
          Expanded(
              flex: 4,
              child: ListView(
                children: [
                  Image.asset("assets/Document1_page-0001.jpg"),
                  Image.asset("assets/Document1_page-0002.jpg"),
                  Image.asset("assets/Document1_page-0003.jpg"),
                  Image.asset("assets/Document1_page-0004.jpg"),
                ],
              )
              // Container(
              //   height: double.infinity,
              //   width: double.infinity,
              //   color: Color(0xffffffff),
              //   child: Center(
              //     child: Image.asset("lib/assets/no_data.jpg"),
              //   ),
              // ),
              ),
          SideBar(
            minWidth: 45,
            width: 45,
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                CustomIconButton(
                  icon: Icons.insert_drive_file_outlined,
                  onPressed: () {},
                  size: 20,
                  tooltip: "Change input data",
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomIconButton(
                  icon: Icons.chat_outlined,
                  onPressed: () {},
                  size: 20,
                  tooltip: "Chatbot",
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomIconButton(
                  icon: Icons.picture_as_pdf_outlined,
                  onPressed: () {},
                  size: 20,
                  tooltip: "Save report",
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomIconButton(
                  icon: Icons.info_outline,
                  onPressed: () {},
                  size: 20,
                  tooltip: "info",
                ),
              ],
            ),
          ),
          // const SideBar(
          //   minWidth: 350,
          //   width: 350,
          //   height: double.infinity,
          //   child: ChatScreen(),
          // )
        ],
      ),
    );
  }
}
