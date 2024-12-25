// ignore_for_file: public_member_api_docs, non_constant_identifier_names,
// ignore_for_file: avoid_positional_boolean_parameters

@JS('Telegram')
library web_app;

import 'package:js/js.dart';

external WebAppJsImpl get WebApp;

@JS()
external String get visualViewport;

/// {@template telegram_web}
/// A Telegram Web App part in JS
/// {@endtemplate}
@JS('WebApp')
abstract class WebAppJsImpl {
  external factory WebAppJsImpl();

  external String get initData;
  external WebAppInitDataJsImpl get initDataUnsafe;
  external String get colorScheme;
  external String get version;
  external String get headerColor;
  external String get backgroundColor;
  external bool isVersionAtLeast(String version);
  external String get platform;
  external ThemeParamsJsImpl get themeParams;
  external SafeAreaInsetJsImpl get safeAreaInset;
  external ContentSafeAreaInsetJsImpl get contentSafeAreaInset;
  external BiometricManagerJsImpl get biometricManager;
  external bool get isExpanded;
  external num get viewportHeight;
  external num get viewportStableHeight;
  external bool get isClosingConfirmationEnabled;
  external MainButtonJsImpl get MainButton;
  external BackButtonJsImpl get BackButton;
  external void onEvent(String eventType, void Function() eventHandler);
  external void offEvent(String eventType, void Function() eventHandler);
  external void sendData(String data);
  external void openLink(String url, [OpenLinkOptionsJsImpl? options]);
  external void openTelegramLink(String url);
  external void showAlert(String message, [void Function()? callback]);
  external void showConfirm(
    String message, [
    void Function(bool isConfirmed)? callback,
  ]);
  external void showScanQrPopup(
    ScanQrPopupParamsJsImpl params, [
    bool? Function(String text)? callback,
  ]);
  external void closeScanQrPopup();
  external void readTextFromClipboard([void Function(String text)? callback]);
  external void requestWriteAccess([void Function(bool isGranted)? callback]);
  external void requestContact([void Function(bool isShared)? callback]);
  external void ready();
  external void expand();
  external void close();
  external void setHeaderColor(String color);
  external void setBackgroundColor(String color);
  external void enableClosingConfirmation();
  external void disableClosingConfirmation();
  external void switchInlineQuery(String query, List<String>? chatTypes);
  external void openInvoice(String url, Function? callback);
  external void showPopup(PopupParamsJsImpl jsObject, Function? callback);
  external void enableVerticalSwipes(); // 打开纵向滚动捕获
  external void disableVerticalSwipes(); // 关闭纵向滚动捕获
  external void requestFullscreen(); // 请求全屏
}

@JS()
@anonymous
abstract class MainButtonJsImpl {
  external factory MainButtonJsImpl({
    String text,
    String color,
    String textColor,
    bool isVisible,
    bool isActive,
    bool isProgressVisible,
    void Function(String text) setText,
    void Function(void Function() callback) onClick,
    void Function() offClick,
    void Function() show,
    void Function() hide,
    void Function() enable,
    void Function() disable,
    void Function(bool leaveActive) showProgress,
    void Function() hideProgress,
    void Function(MainButtonParams params) setParams,
  });

  external String get text;
  external String get color;
  external String get textColor;
  external bool get isVisible;
  external bool get isActive;
  external bool get isProgressVisible;
  external void setText(String text);
  external void onClick(void Function() callback);
  external void offClick(void Function() callback);

  external void show();
  external void hide();
  external void enable();
  external void disable();
  external void showProgress(bool leaveActive);
  external void hideProgress();
  external void setParams(MainButtonParams params);
}

@JS()
@anonymous
abstract class MainButtonParams {
  external factory MainButtonParams({
    String? text,
    String? color,
    String? text_color,
    bool? is_active,
    bool? is_visible,
  });

  external String? get text;
  external String? get color;
  external String? get text_color;
  external bool? get is_active;
  external bool? get is_visible;
}

@JS()
@anonymous
abstract class BackButtonJsImpl {
  external factory BackButtonJsImpl({
    bool isVisible,
    void Function() onClick,
    void Function() offClick,
    void Function() show,
    void Function() hide,
  });

  external bool get isVisible;
  external void onClick(void Function() callback);
  external void offClick(void Function() callback);
  external void show();
  external void hide();
}

@JS()
@anonymous
abstract class ThemeParamsJsImpl {
  external factory ThemeParamsJsImpl({
    String? bg_color,
    String? text_color,
    String? hint_color,
    String? link_color,
    String? button_color,
    String? button_text_color,
    String? secondary_bg_color,
  });

  external String? get bg_color;
  external String? get text_color;
  external String? get hint_color;
  external String? get link_color;
  external String? get button_color;
  external String? get button_text_color;
  external String? get secondary_bg_color;
}

@JS()
@anonymous
abstract class SafeAreaInsetJsImpl {
  external factory SafeAreaInsetJsImpl({
    num? top,
    num? bottom,
    num? left,
    num? right,
  });

  external num? get top;
  external num? get bottom;
  external num? get left;
  external num? get right;
}

@JS()
@anonymous
abstract class ContentSafeAreaInsetJsImpl {
  external factory ContentSafeAreaInsetJsImpl({
    num? top,
    num? bottom,
    num? left,
    num? right,
  });

  external num? get top;
  external num? get bottom;
  external num? get left;
  external num? get right;
}

@JS()
@anonymous
abstract class WebAppInitDataJsImpl {
  external factory WebAppInitDataJsImpl({
    String? query_id,
    WebAppUserJsImpl? user,
    WebAppUserJsImpl? receiver,
    WebAppChatJsImpl? chat,
    String? chart_type,
    String? chart_instance,
    String? start_param,
    num? can_send_after,
    num auth_date,
    String hash,
    String signature,
  });

  external String? get query_id;
  external WebAppUserJsImpl? get user;
  external WebAppUserJsImpl? get receiver;
  external WebAppChatJsImpl? get chat;
  external String get chart_type;
  external String get chart_instance;
  external String? get start_param;
  external num get can_send_after;
  external num get auth_date;
  external String get hash;
  external String get signature;
}

@JS()
@anonymous
abstract class WebAppUserJsImpl {
  external factory WebAppUserJsImpl({
    num id,
    bool? is_bot,
    String? first_name,
    String? last_name,
    String? username,
    String? language_code,
    bool? is_premium,
    bool? added_to_attachment_menu,
    bool? allows_write_to_pm,
    String? photo_url,
  });

  external num get id;
  external bool? get is_bot;
  external String get first_name;
  external String? get last_name;
  external String? get username;
  external String? get language_code;
  external bool? get is_premium;
  external bool? get added_to_attachment_menu;
  external bool? get allows_write_to_pm;
  external String? get photo_url;
}

@JS()
@anonymous
abstract class WebAppChatJsImpl {
  external factory WebAppChatJsImpl({
    num id,
    String type,
    String title,
    String? username,
    String? photo_url,
  });

  external num get id;
  external String get type;
  external String get title;
  external String? get username;
  external String? get photo_url;
}

@JS()
@anonymous
abstract class PopupParamsJsImpl {
  external factory PopupParamsJsImpl({
    String? title,
    String message,
    List<PopupButtonJsImpl>? buttons,
  });

  external String? get title;
  external String get message;
  external List<PopupButtonJsImpl>? get buttons;
}

@JS()
@anonymous
abstract class PopupButtonJsImpl {
  external factory PopupButtonJsImpl({
    String? id,
    String type,
    String? text,
  });

  external String? get id;
  external String get type;
  external String? get text;
}

@JS()
@anonymous
abstract class OpenLinkOptionsJsImpl {
  external factory OpenLinkOptionsJsImpl({
    bool? try_instant_view,
  });

  external bool? get try_instant_view;
}

@JS()
@anonymous
abstract class ScanQrPopupParamsJsImpl {
  external factory ScanQrPopupParamsJsImpl({
    String? text,
  });

  external String? get text;
}

@JS()
@anonymous
abstract class BiometricRequestAccessParams {
  external factory BiometricRequestAccessParams({
    String? reason,
  });

  external String? get reason;
}

@JS()
@anonymous
abstract class BiometricManagerJsImpl {
  external factory BiometricManagerJsImpl({
    bool isInited,
    bool isBiometricAvailable,
    String biometricType,
    bool isAccessRequested,
    bool isAccessGranted,
    bool isBiometricTokenSaved,
    String deviceId,
    void Function(void Function() callback) init,
    void Function(
      BiometricRequestAccessParams params, [
      void Function(bool isGranted) callback,
    ]),
  });

  external bool get isInited;
  external bool get isBiometricAvailable;
  external String get biometricType;
  external bool get isAccessRequested;
  external bool get isAccessGranted;
  external bool get isBiometricTokenSaved;
  external String get deviceId;
  external void Function(void Function()? callback) init;
  external void Function(
    BiometricRequestAccessParams params, [
    void Function(bool isGranted)? callback,
  ]) requestAccess;
}
