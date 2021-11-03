class Rot13Algo {
  static String encryption(word, alphabets) {
    String phrase = word.toLowerCase();
    var encryptedWord = '';
    var position = -1;
    var nonAlphabet = ' '.codeUnitAt(0);

    for (var i = 0; i < phrase.length; i++) {
      for (var j = 0; j < alphabets.length; j++) {
        if (phrase[i] == alphabets[j]) {
          position = j;
          break;
        } else {
          nonAlphabet = phrase[i].codeUnitAt(0);
        }
      }
      if (position != -1) {
        var positionAfterEncryption = (position + 13) % 26;
        encryptedWord += alphabets[positionAfterEncryption];
        position = -1;
      } else {
        encryptedWord += String.fromCharCode(nonAlphabet);
      }
    }
    return encryptedWord;
  }

  static String decryption(word, alphabets) {
    String phrase = word.toLowerCase();
    var decryptedWord = '';
    var position = -1;
    var nonAlphabet = ' '.codeUnitAt(0);

    for (var i = 0; i < phrase.length; i++) {
      for (var j = 0; j < alphabets.length; j++) {
        if (phrase[i] == alphabets[j]) {
          position = j;
          break;
        } else {
          nonAlphabet = phrase[i].codeUnitAt(0);
        }
      }

      if (position != -1) {
        var positionAfterDecryption = (position + 26 - 13) % 26;
        decryptedWord += alphabets[positionAfterDecryption];
        position = -1;
      } else {
        decryptedWord += String.fromCharCode(nonAlphabet);
      }
    }
    return decryptedWord;
  }
}
