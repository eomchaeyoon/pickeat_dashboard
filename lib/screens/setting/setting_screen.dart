

import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:pickeat_dashboard/constants/gaps.dart';
import 'package:pickeat_dashboard/screens/layout/widgets/back_app_bar.dart';
import 'package:pickeat_dashboard/screens/layout/widgets/safe_area_outer_bg.dart';
import 'package:pickeat_dashboard/theme/colors.dart';

class SettingScreen extends StatefulWidget {
  final String title;
  const SettingScreen({super.key, required this.title});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  late Future<Map<String, String>> _infoFuture;

  @override
  void initState() {
    super.initState();
    _infoFuture = _getDeviceAndAppInfo();
  }

  Future<Map<String, String>> _getDeviceAndAppInfo() async{
    final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
    String deviceModel = "";

    try {
      if(Platform.isAndroid) {
        final androidInfo = await deviceInfoPlugin.androidInfo;
        deviceModel = androidInfo.model;
      }else if(Platform.isIOS) {
        final iosInfo = await deviceInfoPlugin.iosInfo;
        deviceModel = iosInfo.utsname.machine;
      }
    }catch (e) {
      deviceModel = '';
    }
    final packageInfo = await PackageInfo.fromPlatform();
    final appVersion = packageInfo.version;

    return {
      "device" : deviceModel,
      "version" : appVersion,
    };
  }

  @override
  Widget build(BuildContext context) {


    return SafeAreaOuterBg(
      topColor: AppColors.bgL,
      bottomColor: AppColors.bgL,
      contentWidget : SafeArea(
        child: Scaffold(
          appBar : BackAppBar(
            titleString : widget.title,
            context: context,
          ),
          body: SafeArea(
            child : FutureBuilder(future: _infoFuture, builder: (context, snapshot) {
              if(snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }
              if(snapshot.hasError) {
                return const Center(child: Text('정보를 불러오는 중 에러발생'));
              }
              final info = snapshot.data!;
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("디바이스 정보 : ${info['device']}"),
                    Gaps.h20,
                    Text("앱 정보 : ${info['version']}"),
                  ],
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
