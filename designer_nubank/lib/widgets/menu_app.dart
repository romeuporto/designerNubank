import 'package:designer_nubank/widgets/item_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MenuApp extends StatelessWidget {
  final double top;
  final bool showMenu;

  const MenuApp({Key? key, required this.top, required this.showMenu})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: top,
        left: 0,
        right: 0,
        child: AnimatedOpacity(
          duration: Duration(milliseconds: 200),
          opacity: showMenu ? 1 : 0,
          child: Container(
            color: Colors.purple.shade800,
            height: MediaQuery.of(context).size.height * 0.55,
            child: Column(
              children: [
                Image.network(
                  'https://cdn-0.imagensemoldes.com.br/wp-content/uploads/2020/08/QR-Code-PNG-1024x1024.png',
                  height: 80,
                  color: Colors.white,
                ),
                SizedBox(height: 5),
                Text.rich(
                  TextSpan(text: "Banco ", children: [
                    TextSpan(
                      text: "260 - Nu Pagamentos S.A",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ]),
                  style: TextStyle(fontSize: 12),
                ),
                SizedBox(height: 5),
                Text.rich(
                  TextSpan(text: "Agência ", children: [
                    TextSpan(
                      text: "0001",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ]),
                  style: TextStyle(fontSize: 12),
                ),
                SizedBox(height: 5),
                Text.rich(
                  TextSpan(text: "Conta ", children: [
                    TextSpan(
                      text: "1234567-8",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ]),
                  style: TextStyle(fontSize: 12),
                ),
                SizedBox(
                  height: 25,
                ),
                SingleChildScrollView(
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        children: [
                          ItemMenu(
                            text: 'Perfil',
                            icon: Icons.account_circle_outlined,
                          ),
                          ItemMenu(
                            text: 'Configuração do Cartão',
                            icon: Icons.credit_card,
                          ),
                          ItemMenu(
                            text: 'Configurações da Conta',
                            icon: Icons.settings,
                          ),
                          ItemMenu(
                            text: 'Pessoa Jurídica',
                            icon: Icons.store_mall_directory_outlined,
                          ),
                          ItemMenu(
                            text: 'Configurações do App',
                            icon: Icons.settings_cell,
                          ),
                          ItemMenu(
                            text: 'Me Ajude',
                            icon: Icons.info_outline,
                          ),

                        ],
                      )),
                )
              ],
            ),
          ),
        ));
  }
}
