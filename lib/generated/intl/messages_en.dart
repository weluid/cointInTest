// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "accessCameraDescr": MessageLookupByLibrary.simpleMessage(
      "To upload a photo, CoinIn needs access to your gallery.",
    ),
    "accessGallery": MessageLookupByLibrary.simpleMessage(
      "Please allow access to the gallery.",
    ),
    "appearance": MessageLookupByLibrary.simpleMessage("Appearance"),
    "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
    "coinIn": MessageLookupByLibrary.simpleMessage("CoinIn"),
    "collection": MessageLookupByLibrary.simpleMessage("Collection"),
    "dark": MessageLookupByLibrary.simpleMessage("Dark"),
    "freePremium": MessageLookupByLibrary.simpleMessage(
      "Free Premium Available",
    ),
    "history": MessageLookupByLibrary.simpleMessage("History"),
    "home": MessageLookupByLibrary.simpleMessage("Home"),
    "identifyCoin": MessageLookupByLibrary.simpleMessage("Identify Coin"),
    "light": MessageLookupByLibrary.simpleMessage("Light"),
    "permissionDenied": MessageLookupByLibrary.simpleMessage(
      "Permission was denied.",
    ),
    "sameDevice": MessageLookupByLibrary.simpleMessage("Same as device"),
    "sameDeviceDescr": MessageLookupByLibrary.simpleMessage(
      "uses light or dark mode depending\non your device settings",
    ),
    "search": MessageLookupByLibrary.simpleMessage("Search"),
    "settings": MessageLookupByLibrary.simpleMessage("Settings"),
    "somethingWentWrong": MessageLookupByLibrary.simpleMessage(
      "Oops! Something went wrong. Try again.",
    ),
    "tapToClaim": MessageLookupByLibrary.simpleMessage("Tap to claim"),
    "toSettings": MessageLookupByLibrary.simpleMessage("To Settings"),
  };
}
