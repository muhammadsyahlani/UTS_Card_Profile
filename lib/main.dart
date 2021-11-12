import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      home: new CardProfile(),
      routes: <String, WidgetBuilder>{
        'Telpon': (BuildContext context) => new Telpon(),
        'Email': (BuildContext context) => new Email(),
        'Alamat': (BuildContext context) => new Alamat(),
        'JenisKelamin': (BuildContext context) => new JenisKelamin(),
        'Hobi': (BuildContext context) => new Hobi(),
        'CitaCita': (BuildContext context) => new CitaCita(),
      },
    ));

class CardProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('assets/img/user.webp'),
            ),
            Text(
              'Muhammad Syahlani',
              style: TextStyle(
                  fontFamily: 'WhiteDream',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                  fontFamily: 'BebasNeue',
                  fontSize: 20.0,
                  color: Colors.teal.shade100,
                  letterSpacing: 10.5,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
                height: 40.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                )),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.teal,
                ),
                title: new TextButton(
                  child: Text(
                    '+62 8152 1900 956',
                    style: (TextStyle(
                        color: Colors.teal,
                        fontFamily: 'BebasNeue',
                        fontSize: 20.0)),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'Telpon');
                  },
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.mail,
                  color: Colors.teal,
                ),
                title: new TextButton(
                  child: Text(
                    'Muhammadsyahlani10@gmail.com',
                    style: (TextStyle(
                        color: Colors.teal,
                        fontFamily: 'BebasNeue',
                        fontSize: 20.0)),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'Email');
                  },
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.teal,
                ),
                title: new TextButton(
                  child: Text(
                    'Jalan Sungai Bakung RT. 05 No.63',
                    style: (TextStyle(
                        color: Colors.teal,
                        fontFamily: 'BebasNeue',
                        fontSize: 20.0)),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'Alamat');
                  },
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.male,
                  color: Colors.teal,
                ),
                title: new TextButton(
                  child: Text(
                    'Laki - laki',
                    style: (TextStyle(
                        color: Colors.teal,
                        fontFamily: 'BebasNeue',
                        fontSize: 20.0)),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'JenisKelamin');
                  },
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.sports_volleyball,
                  color: Colors.teal,
                ),
                title: new TextButton(
                  child: Text(
                    'Badminton',
                    style: (TextStyle(
                        color: Colors.teal,
                        fontFamily: 'BebasNeue',
                        fontSize: 20.0)),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'Hobi');
                  },
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.sports_esports,
                  color: Colors.teal,
                ),
                title: new TextButton(
                  child: Text(
                    'PRO Player E-Sport',
                    style: (TextStyle(
                        color: Colors.teal,
                        fontFamily: 'BebasNeue',
                        fontSize: 20.0)),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'CitaCita');
                  },
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}

class Telpon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.teal,
      appBar: new AppBar(
        backgroundColor: Colors.teal,
        title: new Text('Detail Telepon'),
      ),
      body: new Center(
        child: new Text(
          'Telpon Lengkap = +6281521900956',
          style: (TextStyle(
              color: Colors.white, fontFamily: 'BebasNeue', fontSize: 20.0)),
        ),
      ),
    );
  }
}

class Email extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.teal,
      appBar: new AppBar(
        backgroundColor: Colors.teal,
        title: new Text('Detail Email'),
      ),
      body: new Center(
        child: new Text(
          'Email saya = Muhammadsyahlani10@gmail.com',
          style: (TextStyle(
              color: Colors.white, fontFamily: 'BebasNeue', fontSize: 20.0)),
        ),
      ),
    );
  }
}

class Alamat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.teal,
      appBar: new AppBar(
        backgroundColor: Colors.teal,
        title: new Text('Detail Alamat'),
      ),
      body: new Center(
        child: new Text(
          'Alamat Lengkap = Jl. Sungai Bakung RT.05 No.63',
          style: (TextStyle(
              color: Colors.white, fontFamily: 'BebasNeue', fontSize: 20.0)),
        ),
      ),
    );
  }
}

class JenisKelamin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.teal,
      appBar: new AppBar(
        backgroundColor: Colors.teal,
        title: new Text('Detail Jenis Kelamin'),
      ),
      body: new Center(
        child: new Text(
          'Jenis Kelamin = Pria / Laki - laki',
          style: (TextStyle(
              color: Colors.white, fontFamily: 'BebasNeue', fontSize: 20.0)),
        ),
      ),
    );
  }
}

class Hobi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.teal,
      appBar: new AppBar(
        backgroundColor: Colors.teal,
        title: new Text('Detail Hobi'),
      ),
      body: new Center(
        child: new Text(
          'Hobi saya = Bermain Badminton atau Bulu tangkis',
          style: (TextStyle(
              color: Colors.white, fontFamily: 'BebasNeue', fontSize: 20.0)),
        ),
      ),
    );
  }
}

class CitaCita extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.teal,
      appBar: new AppBar(
        backgroundColor: Colors.teal,
        title: new Text('Detail 5 Tahun Kedapan'),
      ),
      body: new Center(
        child: new Text(
          '5 Tahun Kedepan = Untuk Bisa Menjadi Pro Player Game E-Sport di berbagai Game',
          style: (TextStyle(
              color: Colors.white, fontFamily: 'BebasNeue', fontSize: 20.0)),
        ),
      ),
    );
  }
}
