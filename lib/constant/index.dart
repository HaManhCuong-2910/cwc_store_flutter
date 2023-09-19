import 'package:flutter/material.dart';

redirectLink(BuildContext context, String path) {
  Navigator.pushNamed(context, path);
}

redirectScreen(BuildContext context, Route<Object?> routerBuilder) {
  Navigator.push(context, routerBuilder);
}

onShowBottomSheetCustom(BuildContext context, Widget widgetCustom) {
  showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(16))),
      builder: (context) {
        return widgetCustom;
      });
}

String formatTwoNumber(int num) {
  return num < 10 ? '0${num}' : '$num';
}

List<double> listWaveTest = [
  0.0895390585064888,
  0.11049763858318329,
  0.11244437098503113,
  0.1502116471529007,
  0.15641087293624878,
  0.15042975544929504,
  0.12714800238609314,
  0.16800081729888916,
  0.14511996507644653,
  0.16691391170024872,
  0.1580294966697693,
  0.14542360603809357,
  0.14798180758953094,
  0.19073623418807983,
  0.16086359322071075,
  0.17921720445156097,
  0.18104352056980133,
  0.22955743968486786,
  0.20144197344779968,
  0.21822233498096466,
  0.23808439075946808,
  0.24272871017456055,
  0.23670068383216858,
  0.23503738641738892,
  0.241432785987854,
  0.2200976014137268,
  0.21951568126678467,
  0.25187647342681885,
  0.23100896179676056,
  0.23857425153255463,
  0.25539547204971313,
  0.22932633757591248,
  0.23818980157375336,
  0.23092298209667206,
  0.2264392077922821,
  0.20199470221996307,
  0.14483661949634552,
  0.15040424466133118,
  0.16910380125045776,
  0.20333878695964813,
  0.2267293632030487,
  0.2181873321533203,
  0.18976497650146484,
  0.20179228484630585,
  0.2022784799337387,
  0.21492649614810944,
  0.2037137746810913,
  0.20797325670719147,
  0.21486270427703857,
  0.2051207423210144,
  0.17528323829174042,
  0.18574295938014984,
  0.25840070843696594,
  0.23878198862075806,
  0.2179979830980301,
  0.2166392058134079,
  0.24606625735759735,
  0.24294190108776093,
  0.22376994788646698,
  0.24612142145633698,
  0.23744136095046997,
  0.21939510107040405,
  0.22906579077243805,
  0.23858314752578735,
  0.2478942722082138,
  0.23412981629371643,
  0.24725264310836792,
  0.2268887162208557,
  0.2290993332862854,
  0.23633521795272827,
  0.2229733020067215,
  0.22977624833583832,
  0.18079710006713867,
  0.19175554811954498,
  0.19894558191299438,
  0.1931024044752121,
  0.20017124712467194,
  0.1970747411251068,
  0.21300964057445526,
  0.2619369924068451,
  0.23235610127449036,
  0.24486809968948364,
  0.25591784715652466,
  0.258878618478775,
  0.23870274424552917,
  0.24033980071544647,
  0.24111104011535645,
  0.25099867582321167,
  0.24110478162765503,
  0.25731033086776733,
  0.2513526976108551,
  0.1893482655286789,
  0.20568692684173584,
  0.21152830123901367,
  0.20548513531684875,
  0.1433730274438858,
  0.1602417528629303,
  0.15710672736167908,
  0.09758879989385605,
  0.0031219152733683586
];
