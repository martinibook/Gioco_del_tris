class Tris {
  // tabella di gioco
  List<List<String>> c = [
    ['  ', '  ', '  '],
    ['  ', '  ', '  '],
    ['  ', '  ', '  '],
  ];

//  var di classe
  int nVolte = 0;
  String segno = 'X';
  bool continua = true;
  int wx = 0;
  int wo = 0;
  int p = 0;
  void rigioco() {
    continua = true;
    nVolte = 0;
    segno = 'X';

    c = [
      ['  ', '  ', '  '],
      ['  ', '  ', '  '],
      ['  ', '  ', '  '],
    ];
  }

  // controllo giocata!
  String ctrGiocata(List<int> r) {
    if (c[r[0]][r[1]] == '  ') {
      c[r[0]][r[1]] = segno;
      nVolte++;
      segno = segno == 'X' ? 'O' : 'X';
      return controllo();
    }
    return 'cella occupata!';
    // cella usata
  }

// controllo vincita-pareggio-continua
  String controllo() {
    List<List<String>> reg = [
      c[0],
      c[1],
      c[2],
      [c[0][0], c[1][0], c[2][0]],
      [c[0][1], c[1][1], c[2][1]],
      [c[0][2], c[1][2], c[2][2]],
      [c[0][0], c[1][1], c[2][2]],
      [c[0][2], c[1][1], c[2][0]],
    ];
    for (List<String> el in reg) {
      switch (el.join()) {
        case 'XXX':
          wx++;
          continua = false;
          return 'Vince la  X!';

        case 'OOO':
          wo++;
          continua = false;
          return 'Vince la  O!';
      }
    }
    if (nVolte == 9) {
      continua = false;
      p++;
      return "Pareggio";
    } else {
      return "Gioca la  $segno!";
    }
  }
}
