// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'dart:io'; // Import for platform detection
import 'package:flutter/foundation.dart'; // Import for web detection

class DecentAdBanner extends StatefulWidget {
  final String androidAdUnitId;
  final String iosAdUnitId;
  final Color loadingBackgroundColor;
  final String loadingText;
  final Color textColor;
  final double height;
  final double width;

  const DecentAdBanner({
    Key? key,
    required this.androidAdUnitId,
    required this.iosAdUnitId,
    required this.loadingBackgroundColor,
    required this.loadingText,
    required this.textColor,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  _DecentAdBannerState createState() => _DecentAdBannerState();
}

class _DecentAdBannerState extends State<DecentAdBanner> {
  late BannerAd _bannerAd;
  bool _isAdLoaded = false;

  @override
  void initState() {
    super.initState();
    if (!kIsWeb) {
      _loadAd();
    }
  }

  void _loadAd() {
    final String adUnitId =
        Platform.isAndroid ? widget.androidAdUnitId : widget.iosAdUnitId;

    _bannerAd = BannerAd(
      adUnitId: adUnitId,
      size: AdSize.banner, // Standard banner size 320x50
      request: AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (Ad ad) {
          setState(() {
            _isAdLoaded = true;
          });
        },
        onAdFailedToLoad: (Ad ad, LoadAdError error) {
          print('Ad failed to load: $error');
          ad.dispose();
        },
      ),
    );

    _bannerAd.load();
  }

  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      // Show placeholder for web environment
      return Container(
        width: AdSize.banner.width.toDouble(),
        height: AdSize.banner.height.toDouble(),
        color: widget.loadingBackgroundColor,
        child: Center(
          child: Text(
            widget.loadingText,
            style: TextStyle(
              color: widget.textColor,
              fontSize: 12,
              fontWeight: FontWeight.normal,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      );
    } else {
      // Show ad or loading placeholder for mobile
      return Container(
        width: AdSize.banner.width.toDouble(),
        height: AdSize.banner.height.toDouble(),
        color: _isAdLoaded ? Colors.transparent : widget.loadingBackgroundColor,
        child: _isAdLoaded
            ? AdWidget(ad: _bannerAd)
            : Center(
                child: Text(
                  widget.loadingText,
                  style: TextStyle(
                    color: widget.textColor,
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
      );
    }
  }

  @override
  void dispose() {
    if (!kIsWeb) {
      _bannerAd.dispose();
    }
    super.dispose();
  }
}
