base class Media {
  void play() {
    print('Playing media...');
  }
}

base class Song extends Media {
  String artist;

  Song({required this.artist});

  @override
  void play() {
    print('Playing song by $artist...');
  }
}

void main() {
  Media media = new Media();
  Song song = new Song(artist: 'Justine Biber');

  media.play();
  song.play();
}
