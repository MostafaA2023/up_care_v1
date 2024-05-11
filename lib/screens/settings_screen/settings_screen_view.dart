import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:up_care_v1/providers/settings_providers.dart';
import 'package:up_care_v1/screens/login_screen/login_screen_view.dart';
import 'package:up_care_v1/screens/settings_screen/feedback_screen_view.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsScreenView extends StatefulWidget {
  const SettingsScreenView({super.key});

  static const routeName = "settings_screen";

  @override
  State<SettingsScreenView> createState() => _SettingsScreenViewState();
}

class _SettingsScreenViewState extends State<SettingsScreenView> {
  bool isSwitch = false;
  bool isDarkSwitch = false;
  late SettingProvider provider;

  @override
  Widget build(BuildContext context) {
    provider = Provider.of(context);

    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            height: 40,
          ),
          Text(
            AppLocalizations.of(context)!.settings,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.38,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  offset: Offset.zero,
                  blurRadius: 10.0,
                  spreadRadius: 0.0,
                )
              ],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: const Color(0xFFCC28D8),
                          ),
                          child: Image.asset("assets/images/globe.png")),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppLocalizations.of(context)!.language,
                            style: const TextStyle(fontSize: 17),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(AppLocalizations.of(context)!.english,
                              style: const TextStyle(color: Colors.grey)),
                        ],
                      ),
                      Switch(value: isSwitch,
      onChanged: (newValue) {
        setState(() {
          isSwitch = newValue;
        });
        if (newValue) {
          provider.setCurrentLocale("ar");
        } else {
          provider.setCurrentLocale("en");
        }
      },
    )
                    ],
                  ),
                ),
                const Divider(
                  color: Color(0xFFF6F6F7),
                  height: 6.0,
                  thickness: 5.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color(0xFFF83434),
                        ),
                        child: Image.asset(
                          "assets/images/moon-fill.png",
                        ),
                      ),
                      Text(
                        AppLocalizations.of(context)!.darkMood,
                        style: const TextStyle(fontSize: 17),
                      ),
                      Switch(
                          value: isDarkSwitch,
                          onChanged: (value) {
                            setState(() {
                              isDarkSwitch = value;
                            });
                          })
                    ],
                  ),
                ),
                const Divider(
                  color: Color(0xFFF6F6F7),
                  height: 6.0,
                  thickness: 5.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const SizedBox(
                        width: 1.4,
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color(0xFFFDC573),
                        ),
                        child: Image.asset(
                          "assets/images/chat-circle-fill.png",
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppLocalizations.of(context)!.sendFeedback,
                            style: const TextStyle(fontSize: 17),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text("let us know how we can make\n up care ",
                              style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, FeedbackScreenView.routName);
                          },
                          icon: const Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.grey,
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            AppLocalizations.of(context)!.account,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.10,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  offset: Offset.zero,
                  blurRadius: 10.0,
                  spreadRadius: 0.0,
                )
              ],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const ImageIcon(AssetImage("assets/images/sign-out.png")),
                      const SizedBox(
                        width: 20,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              context, LoginScreenView.routeName);
                        },
                        child: Text(
                          AppLocalizations.of(context)!.logOut,
                          style: const TextStyle(
                              fontSize: 17,
                              color: Colors.black,
                              fontWeight: FontWeight.w400),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
