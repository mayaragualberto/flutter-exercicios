![](https://i.imgur.com/xG74tOh.png)

# Exercício

Utilizando os arquivos presentes na pasta assets, crie um aplicativo que leia um dos arquivos de forma aleatória e mostre na tela os dados.

1. Inicie o aplicativo com um `ElevatedButton` centralizado com o conteúdo, "clique aqui".
2. Quando clicado o botão deve ser substituído por um `CircularProgressIndicator`, sinalizando que um dos arquivos esta sendo carregado.
3. Após 5 segundos, o conteúdo do arquivo (nome e data de nascimento) deve ser exibido na tela, junto com um `ElevatedButton` com o conteúdo "voltar".
4. Quando clicado em "voltar", a tela deve retornar ao estado inicial.

> Trate erros no carregamento dos arquivos.

O carregamento de um arquivo de assets pode ser realizado a partir da função:
```dart
import 'package:flutter/services.dart';
...
rootBundle.loadString("caminho do arquivo");
```