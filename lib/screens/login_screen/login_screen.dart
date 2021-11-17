import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:interview_test/dimens.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 30.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Image.asset(
                  "assets/images/ic_back.png",
                  height: 16.w,
                  width: 16.w,
                )),
            Padding(
              padding: EdgeInsets.only(top: 30.w),
              child: _title(context),
            ),
            _textFieldUserName(),
            _textFieldPassword(),
            _buttonLogin(context),
          ],
        ),
      ),
    );
  }

  _textFieldUserName() {
    return Container(
      margin: EdgeInsets.only(top: 32.w),
      width: 343.w,
      height: 52.w,
      child: TextFormField(
        autofocus: true,
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black, width: 2.w),
                borderRadius: BorderRadius.zero)),
      ),
    );
  }

  _textFieldPassword() {
    return Container(
      margin: EdgeInsets.only(top: 16.w),
      width: 343.w,
      height: 52.w,
      child: TextFormField(
        autofocus: true,
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black, width: 2.w),
                borderRadius: BorderRadius.zero)),
      ),
    );
  }

  _buttonLogin(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16.w),
      width: 343.w,
      height: 52.w,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(6.r))),
      child: Text(
        AppLocalizations.of(context)!.register.toUpperCase(),
        style: GoogleFonts.roboto(
            fontSize: 13.t, fontWeight: FontWeight.w900, color: Colors.white),
      ),
    );
  }

  _title(BuildContext context) {
    return Text(AppLocalizations.of(context)!.login,
        style: GoogleFonts.comfortaa(
          fontSize: 36.t,
          fontWeight: FontWeight.w400,
        ));
  }
}
