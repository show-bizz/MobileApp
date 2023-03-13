import 'Artist.dart';

class Prueba {
  Artist artist = Artist("Rock", false, 0, 0, 0, "Http:");

  String hola() {
    return artist.getuserSpotifyAccount();
  }
}
