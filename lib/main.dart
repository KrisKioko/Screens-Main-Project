import 'package:flutter/material.dart';
import 'package:screens/util/color.dart';
import 'package:screens/util/theme.dart';
import 'package:flutter_svg/svg.dart';
import 'package:screens/components/settingListtile.dart';



void main() {
  runApp(const Settings());
}

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themeData(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Settings'),
          actions: const [
            IconButton(
              onPressed: null,
              icon: Icon(Icons.more_vert_rounded),
              //  Icons.add_circle_outline_outlined,
              // tooltip: 'User',
            ),
          ],
        ),

        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ListTile(
                    leading: const CircleAvatar(
                      radius: 24,
                      backgroundImage: AssetImage('assets/Images/avatar.png'),
                      backgroundColor: (Colors.grey),
                    ),
                    title: Text(
                      'Hon.Babu Owino',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    subtitle: const Text(
                      'babuowino@parliaament.go.ke',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: black,
                      size: 12,
                    ),
                  ),

                  const SizedBox(height: 10),
                  const Divider(),
                  const SizedBox(height: 20),
                  
                  settingListtile(
                    context: context,
                    title: 'Status',
                    leading: SvgPicture.asset("assets/Images/ok.svg"),
                    trailing: const Icon(
                      Icons.circle,
                      size: 5,
                      color: Colors.greenAccent,
                    )),
                    settingListtile(
                      ontap: (){
                          Navigator.pushNamed(context, 'firstscreen');
                          // Navigator.pushNamed(context, 'secondscreen');
                      },
                      title: 'Notifications',
                      context: context,
                      leading: SvgPicture.asset("assets/Images/notification.svg"),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                        color: black,
                      )),
                      settingListtile(
                        ontap: (){
                          Navigator.pushNamed(context, 'secondscreen');
                          // Navigator.pushNamed(context, 'secondscreen');
                        },
                        title: 'Meetings',
                        context: context,
                        leading: SvgPicture.asset("assets/Images/video.svg"),
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                          color: black,
                        ),
                      ),
                      settingListtile(
                        ontap: (){
                          Navigator.pushNamed(context, 'secondscreen');
                          // Navigator.pushNamed(context, 'secondscreen');
                        },
                        title: 'Chats',
                        context: context,
                        leading: SvgPicture.asset("assets/Images/Chat.svg"),
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                          color: black,
                        )
                      ),
                      settingListtile(
                        ontap: (){
                          Navigator.pushNamed(context, 'thirdscreen');
                          // Navigator.pushNamed(context, 'thirdscreen');
                        },
                        title: 'Security',
                        context: context,
                        leading: SvgPicture.asset("assets/Images/security-safe.svg"),
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                          color: black,
                        ),
                      ),
                      
                      settingListtile(
                        ontap: (){
                          Navigator.pushNamed(context, 'forthscreen');
                          // Navigator.pushNamed(context, 'secondscreen');
                        },
                        title: 'Language',
                        context: context,
                        leading: SvgPicture.asset("assets/Images/language-square 1.svg"),
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                          color: black,
                        ),
                      ),

                      settingListtile(
                        ontap: (){
                          Navigator.pushNamed(context, 'fifthscreen');
                          // Navigator.pushNamed(context, 'secondscreen');
                        },
                        title: 'Help Center',
                        context: context,
                        leading: SvgPicture.asset("assets/Images/info-circle.svg"),
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                          color: black,
                        ),
                      ),

                      settingListtile(
                        ontap: (){
                          Navigator.pushNamed(context, 'sixthscreen');
                          // Navigator.pushNamed(context, 'secondscreen');
                        },
                        title: 'Logout',
                        context: context,
                        leading: SvgPicture.asset("assets/Images/logout.svg"),
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                          color: black,
                        ),
                      ),
                    ]
                  ),
                ),
              ),
            ),
          ),
        );
      }
    }
