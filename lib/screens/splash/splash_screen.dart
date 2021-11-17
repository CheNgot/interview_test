import 'package:flutter/material.dart';
import 'package:interview_test/dimens.dart';
import 'package:interview_test/screens/widgets/button_lage.dart';
import 'package:interview_test/screens/widgets/info_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Container(
              width: double.infinity,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/background.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Align(
                alignment: Alignment.center,
                child: Image.asset("assets/images/ic_logo.png")),
          ),
          Positioned(
              bottom: 83.w,
              child: Padding(
                padding: EdgeInsets.only(left: 15.w),
                child: InfoWidget("Pawel Czerwinski", "@pawel_czerwinski"),
              )),
          Positioned(
            bottom: 15.w,left: 12.w,
            child: InkWell(
              onTap: (){
              print("Login");
              Navigator.pushNamed(context, '/login_screen');
              },
              child: ButtonLage(
                  title:AppLocalizations.of(context)!.login , colorText: Colors.black, color: Colors.white),
            ),
          ),
          Positioned(
            bottom: 15.w,right: 12.w,
            child: InkWell(
              onTap: (){
                print("register");
                Navigator.pushNamed(context, '/register_screen');
              },
              child: ButtonLage(
                  title: AppLocalizations.of(context)!.register, colorText: Colors.white, color: Colors.black),
            ),
          )

        ],
      ),
    );
  }
}
