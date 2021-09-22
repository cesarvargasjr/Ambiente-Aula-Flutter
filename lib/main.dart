import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tela App Aula - AP1 - Cesar',
      home: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.blue,
          toolbarHeight: 70.0,
          title: Text(
            'Aula',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 28.0),
          ),
        ),
        drawer: Drawer(
          child: Padding(
            padding: EdgeInsets.only(top: 30.0, left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Salas virtuais',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        height: 3.0)),
                Divider(),
                Text('Anotações de aula ',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        height: 3.0)),
                Divider(),
                Text('Avaliação Institucional',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        height: 3.0)),
                Divider(),
                Text('Avisos',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        height: 3.0)),
                Divider(),
                Text('Desempenho',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        height: 3.0)),
                Divider(),
                Text('Frequência',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        height: 3.0)),
              ],
            ),
          ),
        ),
        body: Scrollbar(
          child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return (Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 15),
                    TituloSala(),
                    TituloPeriodo(),
                    BoxSuperior(),
                    BoxInferior(),
                    SizedBox(height: 30),
                    BoxSuperior2(),
                    BoxInferior2(),
                    SizedBox(height: 30),
                    BoxSuperior3(),
                    BoxInferior3(),
                    SizedBox(height: 30),
                  ],
                ));
              }),
        ),
      ),
    );
  }
}

class TituloSala extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Salas Virtuais',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0)),
        ],
      ),
    );
  }
}

class TituloPeriodo extends StatelessWidget {
  String dropdownValue = 'Período: 2021/2';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      style: const TextStyle(color: Colors.black, fontSize: 14.0),
      underline: Container(
        height: 2,
      ),
      onChanged: (String? newValue) {},
      items: <String>[
        'Período: 2020/1',
        'Período: 2020/2',
        'Período: 2021/1',
        'Período: 2021/2'
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

/*class TituloPeriodo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('\nPeríodo: 2021/2\n',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0)),
        ],
      ),
    );
  }
}*/

class BoxSuperior extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 400,
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.blue.shade300,
        border: Border.all(color: Colors.black12),
      ),
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 284.0),
              child:
                  Icon(Icons.circle_outlined, color: Colors.yellow, size: 60),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 314.0),
              child: Text(
                '100%',
                style: TextStyle(
                    color: Colors.yellow,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0),
              ),
            )
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 120.0),
              child: Text(
                'Programação Web',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0),
              ),
            )
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 120.0),
              child: Text(
                '\nTurma: 1234-A - 31N - Graduação',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        )
      ]),
    );
  }
}

class BoxInferior extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 115,
        width: 400,
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            color: Colors.white, border: Border.all(color: Colors.black26)),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: <Widget>[
                  Icon(Icons.star, color: Colors.black26),
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(Icons.chat, color: Colors.black26),
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(Icons.assignment_late_sharp, color: Colors.black26),
                ],
              ),
            ],
          ),
          Row(children: [
            Padding(
              padding: EdgeInsets.only(left: 120.0),
              child: RaisedButton(
                textColor: Colors.white,
                color: Colors.green,
                child: Text("Entrar na sala"),
                onPressed: () {},
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(5.0),
                ),
              ),
            )
          ])
        ]));
  }
}

class BoxSuperior2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 400,
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.green.shade800,
        border: Border.all(color: Colors.black12),
      ),
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 284.0),
              child:
                  Icon(Icons.circle_outlined, color: Colors.yellow, size: 60),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 314.0),
              child: Text(
                '100%',
                style: TextStyle(
                    color: Colors.yellow,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0),
              ),
            )
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 120.0),
              child: Text(
                'Desenvolvimento de Sistemas Móveis',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0),
              ),
            )
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 120.0),
              child: Text(
                '\nTurma: 5678-B - 51N - Graduação',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        )
      ]),
    );
  }
}

class BoxInferior2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 115,
        width: 400,
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            color: Colors.white, border: Border.all(color: Colors.black26)),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: <Widget>[
                  Icon(Icons.star, color: Colors.black26),
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(Icons.chat, color: Colors.black26),
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(Icons.assignment_late_sharp, color: Colors.black26),
                ],
              ),
            ],
          ),
          Row(children: [
            Padding(
              padding: EdgeInsets.only(left: 120.0),
              child: RaisedButton(
                textColor: Colors.white,
                color: Colors.green,
                child: Text("Entrar na sala"),
                onPressed: () {},
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(5.0),
                ),
              ),
            )
          ])
        ]));
  }
}

class BoxSuperior3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 400,
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.red.shade900,
        border: Border.all(color: Colors.black12),
      ),
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 284.0),
              child:
                  Icon(Icons.circle_outlined, color: Colors.yellow, size: 60),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 314.0),
              child: Text(
                '100%',
                style: TextStyle(
                    color: Colors.yellow,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0),
              ),
            )
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 120.0),
              child: Text(
                'Tecnologias Móveis',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0),
              ),
            )
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 120.0),
              child: Text(
                '\nTurma: 9012-C - 41N - Graduação',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        )
      ]),
    );
  }
}

class BoxInferior3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 115,
        width: 400,
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            color: Colors.white, border: Border.all(color: Colors.black26)),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: <Widget>[
                  Icon(Icons.star, color: Colors.black26),
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(Icons.chat, color: Colors.black26),
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(Icons.assignment_late_sharp, color: Colors.black26),
                ],
              ),
            ],
          ),
          Row(children: [
            Padding(
              padding: EdgeInsets.only(left: 120.0),
              child: RaisedButton(
                textColor: Colors.white,
                color: Colors.green,
                child: Text("Entrar na sala"),
                onPressed: () {},
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(5.0),
                ),
              ),
            )
          ])
        ]));
  }
}
