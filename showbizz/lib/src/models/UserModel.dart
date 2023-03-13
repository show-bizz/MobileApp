abstract class UserModel {
  String _userName;
  String _userLastName;
  String _userPhone;
  String _userEmail;
  String _userBirthday;
  bool _userFB = false;
  String _userProfilePhoto;
  String _userInstagramAccount;
  String _userSpotifyAccount;
  int _userConcertsAssisted = 0;
  int _userPlacesVisited = 0;
  String _userID;
  bool _isAnArtist = false;
  bool _isAnOwnOfPlace = false;

  UserModel(
      this._userName,
      this._userLastName,
      this._userPhone,
      this._userEmail,
      this._userBirthday,
      this._userFB,
      this._userProfilePhoto,
      this._userInstagramAccount,
      this._userSpotifyAccount,
      this._userConcertsAssisted,
      this._userPlacesVisited,
      this._userID,
      this._isAnArtist,
      this._isAnOwnOfPlace);

  bool getisAnOwnOfPlace() => _isAnOwnOfPlace;

  int getuserConcertsAssisted() => _userConcertsAssisted;

  bool getisAnArtist() => _isAnArtist;

  int getuserPlacesVisited() => _userPlacesVisited;

  String getuserSpotifyAccount() => _userSpotifyAccount;

  String getuserInstagramAccount() => _userInstagramAccount;

  String getuserProfilePhoto() => _userProfilePhoto;

  bool getuserFB() => _userFB;

  String getuserBirthday() => _userBirthday;

  String getuserEmail() => _userEmail;

  String getuserPhone() => _userPhone;

  String getuserLastName() => _userLastName;

  String getuserName() => _userName;

  String getuserID() => _userID;

  void setIsAnOwnOfPlace(bool value) {
    _isAnOwnOfPlace = value;
  }

  void setIsAnArtist(bool value) {
    _isAnArtist = value;
  }

  void setUserID(String value) {
    _userID = value;
  }

  void setUserPlacesVisited(int value) {
    _userPlacesVisited = value;
  }

  void setUserConcertsAssisted(int value) {
    _userConcertsAssisted = value;
  }

  void setUserSpotifyAccount(String value) {
    _userSpotifyAccount = value;
  }

  void setUserInstagramAccount(String value) {
    _userInstagramAccount = value;
  }

  void setUserProfilePhoto(String value) {
    _userProfilePhoto = value;
  }

  void setUserFB(bool value) {
    _userFB = value;
  }

  void setUserBirthday(String value) {
    _userBirthday = value;
  }

  void setUserEmail(String value) {
    _userEmail = value;
  }

  void setUserPhone(String value) {
    _userPhone = value;
  }

  void setUserLastName(String value) {
    _userLastName = value;
  }

  void setUserName(String value) {
    _userName = value;
  }
}
