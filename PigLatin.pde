String givenWord = "somerandomword";
public void setup() {
  System.out.println(givenWord);
  System.out.println(translateWord(givenWord));
}


public String translateWord(String word) {
  String startLetter = word.substring(0, 1);
  String wordToReturn = "";
  if (isVowel(startLetter)) {
    wordToReturn = word + "w";
  } 
  else if (word.substring(0, 2).equals("qu")) {
    wordToReturn = word.substring(2, word.length()) + "qu";
  } 
  else if (!isVowel(word.substring(0, 1))) {
    if (!isVowel(word.substring(1, 2))) {
      wordToReturn = word.substring(2, word.length()) + word.substring(0, 2);
      if (!isVowel(word.substring(2, 3))) {
        wordToReturn = word.substring(3, word.length()) + word.substring(0, 3);
      } else {
        wordToReturn = word.substring(2, word.length()) + word.substring(0, 2);
      }
    } else {
      wordToReturn = word.substring(1, word.length()) + word.substring(0, 1);
    }
  } else {
    wordToReturn = word.substring(1, word.length()) + startLetter;
  }
  return wordToReturn + "ay";
}

public boolean isVowel(String letter) {
  if (letter.equals("a") || letter.equals("e") || letter.equals("i") || letter.equals("o") || letter.equals("u")) {
    return true;
  }
  return false;
}
