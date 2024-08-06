import 'dart:developer';

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:swg_flutter/main.dart';

class NotificationController {
  /// Use this method to detect when a new notification or a schedule is created
  @pragma("vm:entry-point")
  static Future<void> onNotificationCreatedMethod(
      ReceivedNotification receivedNotification) async {
    // Your code goes here
  }

  /// Use this method to detect every time that a new notification is displayed
  @pragma("vm:entry-point")
  static Future<void> onNotificationDisplayedMethod(
      ReceivedNotification receivedNotification) async {
    // Your code goes here
  }

  /// Use this method to detect if the user dismissed a notification
  @pragma("vm:entry-point")
  static Future<void> onDismissActionReceivedMethod(
      ReceivedAction receivedAction) async {
    // Your code goes here
  }

  /// Use this method to detect when the user taps on a notification or action button
  @pragma("vm:entry-point")
  static Future<void> onActionReceivedMethod(
      ReceivedAction receivedAction) async {
    // GoRouter.of(receivedAction.).go('/orders');
  }
}

void showNotification(RemoteMessage message) {
  AwesomeNotifications().createNotification(
      content: NotificationContent(
    id: 10,
    payload: {
      'order_id': message.data["order_id"],
      'status': message.data["status"],
    },
    channelKey: 'basic_channel',
    actionType: ActionType.Default,
    notificationLayout: NotificationLayout.Default,
    wakeUpScreen: true,
    displayOnForeground: true,
    displayOnBackground: true,
    color: Colors.green,
    ticker: 'ticker',
    autoDismissible: true,
    title: message.notification?.title ?? 'Notification',
    body: message.notification?.body ?? 'Order status updated',
    icon: 'resource://drawable/ic_notification',
  ));
}

void setUpAwesomeNotif() {
  AwesomeNotifications().setListeners(
      onActionReceivedMethod: (receivedAction) async {},
      onNotificationCreatedMethod:
          NotificationController.onNotificationCreatedMethod,
      onNotificationDisplayedMethod:
          NotificationController.onNotificationDisplayedMethod,
      onDismissActionReceivedMethod:
          NotificationController.onDismissActionReceivedMethod);
}

foregroundMessageHandler(BuildContext context) {
  return (RemoteMessage message) {
    if (kDebugMode) {
      print('Handling a foreground message: ${message.messageId}');
      print('Message data: ${message.data}');
      print('Message notification: ${message.notification?.title}');
      print('Message notification: ${message.notification?.body}');
    }

    showNotification(message);

    messageStreamController.sink.add(message);
  };
}
