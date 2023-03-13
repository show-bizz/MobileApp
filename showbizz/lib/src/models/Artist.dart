import 'package:showbizzz/src/models/UserModel.dart';

class Artist extends UserModel {
  String _artistGener;
  bool _artistVerified = false;
  int _artistStarRate = 0;
  int _artistShowGiven = 0;
  int _artistComments = 0;
  String _artistURLvideoPresentation;

  Artist(
      this._artistGener,
      this._artistVerified,
      this._artistStarRate,
      this._artistShowGiven,
      this._artistComments,
      this._artistURLvideoPresentation)
      : super('', '', '', '', '', false, '', '', '', 0, 0, '', false, false);
}
