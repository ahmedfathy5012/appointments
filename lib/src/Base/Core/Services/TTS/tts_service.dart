import 'package:mobile/src/Base/Core/Utils/general_utils.dart';
import 'package:flutter_tts/flutter_tts.dart';
// import 'package:just_audio/just_audio.dart';

class TtsServices {
  TtsServices._();

  FlutterTts flutterTts = FlutterTts();

  static final instance = TtsServices._();

  final double _defaultVolume = .3;
  double _currentVolume = 0;

  void init() async {
    await flutterTts.setLanguage('en-US');
    await flutterTts.setPitch(1);
    await flutterTts.setVolume(_defaultVolume);
    _currentVolume = _defaultVolume;
    await flutterTts.setSharedInstance(true);

    _setIosCategory();
    await flutterTts.awaitSpeakCompletion(true);
    await flutterTts.awaitSynthCompletion(true);
  }

  void _setIosCategory() async {
    await flutterTts.setIosAudioCategory(
      IosTextToSpeechAudioCategory.playback,
      [
        IosTextToSpeechAudioCategoryOptions.mixWithOthers,
      ],
    );
  }

  void speak(String word, {double? volume = .3}) async {
    try {
      if (volume != _currentVolume) {
        _currentVolume = volume ?? _defaultVolume;
        await flutterTts.setVolume(volume ?? _defaultVolume);
      }
      await flutterTts.speak(word);
    } catch (e) {
      printDM('error is  $e');
    }
  }

  void close() async {
    flutterTts.pause();
  }

  void tTsNotSilent() async {
    await flutterTts.setVolume(.4);
  }

  void tTsSilent() async {
    await flutterTts.setVolume(0.0);
  }
}

// $2y$10$TkIWVodL/BVr/m0PIwvHY.Nmb.zoFigBgpK0ojVsenh2Xn.1l8ZuS
// $2y$10$TkIWVodL/BVr/m0PIwvHY.Nmb.zoFigBgpK0ojVsenh2Xn.1l8ZuS
