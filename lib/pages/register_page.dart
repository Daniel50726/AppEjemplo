import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class registerPages extends StatefulWidget {
  const registerPages({super.key});

  @override
  State<registerPages> createState() => _registerPagesState();
}

enum Genre  {masculino, femenino }

class _registerPagesState extends State<registerPages> {
  final _name = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _repPassword = TextEditingController();
  bool _atletismo = false;
  bool _ciclismo = false;
  bool _natacion = false;

  Genre? _genre = Genre.masculino;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [
                    const Image(image:
                    AssetImage('assets/images/logo.png'),
                      width: 200,
                      height: 200,
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    TextFormField(
                      controller: _name,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Nombre'),
                      keyboardType: TextInputType.text,
                    ),
                    TextFormField(
                      controller: _email,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), labelText: 'Correo Electronico'),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    TextFormField(
                      controller: _password,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), labelText: 'Contraseña'),
                      keyboardType: TextInputType.visiblePassword,
                    ),
                    TextFormField(
                      controller: _repPassword,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), labelText: 'Repita la contraseña'),
                      keyboardType: TextInputType.visiblePassword,
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    const Text(
                      "Seleccione su género",
                      style: TextStyle(
                        fontSize: 20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                          Expanded(
                            child: ListTile(
                            title: const Text('Masculino'),
                            leading: Radio<Genre>(
                              value: Genre.masculino,
                              groupValue: _genre,
                              onChanged: (Genre? value){
                                setState(() {
                                  _genre = value;
                                });
                              },
                            ),
                          ),
                          ),
                          Expanded(
                            child: ListTile(
                            title: const Text('Femenino'),
                            leading: Radio<Genre>(
                              value: Genre.femenino,
                              groupValue: _genre,
                              onChanged: (Genre? value){
                                setState(() {
                                  _genre = value;
                                });
                              },
                            ),
                          ),
                          ),
                      ],
                    ),
                    const Text(
                      "Deportes favoritos",
                      style: TextStyle(
                          fontSize: 20),
                    ),
                    CheckboxListTile(
                      title: const Text("Atletismo"),
                        value: _atletismo,
                        selected: _atletismo,
                        onChanged: (bool? value){
                          setState(() {
                            _atletismo = value!;
                          });
                        },
                    ),
                    CheckboxListTile(
                      title: const Text("Ciclismo"),
                      value: _ciclismo,
                      selected: _ciclismo,
                      onChanged: (bool? value){
                        setState(() {
                          _ciclismo = value!;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: const Text("Natación"),
                      value: _natacion,
                      selected: _natacion,
                      onChanged: (bool? value){
                        setState(() {
                          _natacion = value!;
                        });
                      },
                    ),
                  ],
              ),
            ),
          ),
      ),
    );
  }
}
