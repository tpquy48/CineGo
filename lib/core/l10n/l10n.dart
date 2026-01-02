import 'package:flutter/widgets.dart';
import 'app_localizations.dart';

extension L10nX on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this)!;
}

class L10n {
  static const supportedLocales = [Locale('en'), Locale('vi')];
}
