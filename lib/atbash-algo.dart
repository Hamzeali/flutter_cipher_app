class AtbashAlgo {
  static String encryption(input, characters, charactersReverse) {
    var encrypt = '';
    var index = 0;
    var char = '';
    for (var i = 0; i < input.length; i++) {
      if (charactersReverse.contains(input[i].toLowerCase())) {
        char = input[i].toLowerCase();
        index = characters.indexOf(char);
        char = charactersReverse[index];
        encrypt = encrypt + char;
      } else {
        encrypt = encrypt + input[i];
      }
    }
    return encrypt;
  }

  static String decryption(input, characters, charactersReverse) {
    var decrypt = '';
    var index = 0;
    var char = '';
    for (var i = 0; i < input.length; i++) {
      if (characters.contains(input[i].toLowerCase())) {
        char = input[i].toLowerCase();
        index = charactersReverse.indexOf(char);
        char = characters[index];
        decrypt = decrypt + char;
      } else {
        decrypt = decrypt + input[i];
      }
    }
    return decrypt;
  }
}
