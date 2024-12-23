import 'dart:convert';

class Song {
  final String songName;
  final String artistName;
  final String albumArtImagePath;
  final String audioPath;

  Song({
    required this.songName,
    required this.artistName,
    required this.albumArtImagePath,
    required this.audioPath,
  });
  Song copyWith({
    String? songName,
    String? artistName,
    String? albumArtImagePath,
    String? audioPath,
  }) {
    return Song(
      songName: songName ?? this.songName,
      artistName: artistName ?? this.artistName,
      albumArtImagePath: albumArtImagePath ?? this.albumArtImagePath,
      audioPath: audioPath ?? this.audioPath,
    );
  }
  Map<String, dynamic> toMap() {
    return {
      'songName': songName,
      'artistName': artistName,
      'albumArtImagePath': albumArtImagePath,
      'audioPath': audioPath,
    };
  }
  factory Song.fromMap(Map<String, dynamic> map) {
    return Song(
      songName: map['songName'],
      artistName: map['artistName'],
      albumArtImagePath: map['albumArtImagePath'],
      audioPath: map['audioPath'],
    );
  }
  String toJson() => json.encode(toMap());
  factory Song.fromJson(String source) => Song.fromMap(json.decode(source));
  @override
  String toString() {
    return 'Song(songName: $songName, artistName: $artistName, albumArtImagePath: $albumArtImagePath, audioPath: $audioPath)';
  }
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Song &&
      other.songName == songName &&
      other.artistName == artistName &&
      other.albumArtImagePath == albumArtImagePath &&
      other.audioPath == audioPath;
  }
  @override
  int get hashCode {
    return songName.hashCode ^
      artistName.hashCode ^
      albumArtImagePath.hashCode ^
      audioPath.hashCode;
  }
}