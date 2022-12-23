import 'package:sizer/sizer.dart';

enum PlatformDomains { mobileWeb, tabletWeb, desktopWeb, native }

getSizeDomain() {
  var selectedDomain = PlatformDomains.native;

  SizerUtil.width < 450 && SizerUtil.deviceType == DeviceType.web
      ? selectedDomain = PlatformDomains.mobileWeb
      : SizerUtil.width < 1024 && SizerUtil.deviceType == DeviceType.web
          ? selectedDomain = PlatformDomains.tabletWeb
          : SizerUtil.width >= 1024 && SizerUtil.deviceType == DeviceType.web
              ? selectedDomain = PlatformDomains.desktopWeb
              : PlatformDomains.native;

  return selectedDomain;
}
