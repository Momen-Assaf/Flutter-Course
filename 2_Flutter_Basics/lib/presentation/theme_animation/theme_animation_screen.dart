import 'package:basics/application/theme_services.dart';
import 'package:basics/presentation/theme_animation/widgets/moon.dart';
import 'package:basics/presentation/theme_animation/widgets/star.dart';
import 'package:basics/presentation/theme_animation/widgets/sun.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemeAnimationScreen extends StatelessWidget {
  const ThemeAnimationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Theme Animation"),
        ),
        body: Consumer<ThemeService>(builder: ((context, themeService, child) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Material(
                elevation: 20,
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  height: 500,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: themeService.isDarkModeOn
                            ? const Color.fromARGB(221, 26, 26, 26)
                            : Colors.grey,
                        offset: const Offset(0, 3),
                        blurRadius: 5,
                        spreadRadius: 3,
                      )
                    ],
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                      colors: themeService.isDarkModeOn
                          ? const [
                              Color(0xFF94A9FF),
                              Color(0xFF6B66CC),
                              Color(0xFF200F75),
                            ]
                          : const [
                              Color(0xDDFFFA66),
                              Color(0xDDFFA057),
                              Color(0xDD940B99),
                            ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                    color: Colors.blue,
                  ),
                  child: Stack(
                    children: [
                      const Positioned(top: 100, right: 40, child: Star()),
                      const Positioned(top: 90, left: 70, child: Star()),
                      const Positioned(top: 70, right: 180, child: Star()),
                      const Positioned(top: 160, right: 90, child: Star()),
                      AnimatedPositioned(
                        duration: const Duration(milliseconds: 400),
                        top: themeService.isDarkModeOn ? 100 : 130,
                        right: themeService.isDarkModeOn ? 150 : -50,
                        child: AnimatedOpacity(
                            opacity: themeService.isDarkModeOn ? 1 : 0,
                            duration: const Duration(milliseconds: 500),
                            child: const Moon()),
                      ),
                      AnimatedPadding(
                        duration: const Duration(milliseconds: 500),
                        padding: EdgeInsets.only(
                            top: themeService.isDarkModeOn ? 120 : 60),
                        child: const Center(child: Sun()),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 225,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: themeService.isDarkModeOn
                                ? Colors.grey[800]
                                : Colors.white,
                            borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15)),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                themeService.isDarkModeOn
                                    ? 'To dark'
                                    : 'To bright',
                                style: const TextStyle(
                                    fontSize: 21, fontWeight: FontWeight.w600),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Text(
                                themeService.isDarkModeOn
                                    ? 'Let the sun rise'
                                    : 'Let it be night',
                                style: const TextStyle(
                                    fontSize: 21, fontStyle: FontStyle.italic),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Switch(
                                  value: themeService.isDarkModeOn,
                                  onChanged: (_) {
                                    themeService.toggleTheme();
                                  }),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        })));
  }
}
