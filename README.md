<h1 align="center">Fotos de Gatinho App 🐈</h1>

###

<p align="left">Este é um aplicativo simples desenvolvido em Flutter que exibe fotos aleatórias de gatos. O aplicativo utiliza a API pública do The Cat API para obter URLs de imagens de gatos.</p>

###

<div align="center">
  <img src="https://skillicons.dev/icons?i=flutter" height="40" alt="flutter logo"  />
  <img width="12" />
  <img src="https://cdn.simpleicons.org/android/3DDC84" height="40" alt="android logo"  />
</div>

###

<h2 align="left">📍 Estrutura do Projeto</h2>

###

<h3 align="left">Arquivos Principais ⤵️</h3>

###

<p align="left">◼️ main.dart: Este arquivo contém o ponto de entrada da aplicação Flutter e define a estrutura básica do aplicativo, incluindo a barra de navegação e o corpo da tela.</p>

###

<h3 align="left">Componentes Flutter ⤵️</h3>

###

<p align="left">◼️ MyApp: A classe MyApp é um widget Stateless que define a estrutura básica do aplicativo, incluindo a barra de navegação e a tela principal (CatPhotoScreen).<br><br>◼️ CatPhotoScreen: A classe CatPhotoScreen é um widget StatefulWidget que gerencia o estado da tela que exibe as fotos de gatos. Ele contém um botão para carregar cinco fotos de gatos da API e uma lista de imagens de gatos com um indicador de carregamento.</p>

###

<h2 align="left">Rqueisições HTTP e Manipulação de Dados 🗂️</h2>

###

<p align="left">◼️ http: O código utiliza a biblioteca http para fazer requisições HTTP à API do The Cat API. A função _getCatPhotos é responsável por realizar a requisição e processar os dados recebidos.<br><br>◼️ jsonDecode: A resposta da API é decodificada usando o jsonDecode para obter uma lista de URLs de imagens de gatos.</p>

###

<h2 align="left">Interface do Usuário 👨‍💻</h2>

###

<p align="left">◼️ Um botão "Carregar 5 Fotos de Gatos" inicia a função _getCatPhotos para buscar e exibir novas imagens de gatos.<br><br>◼️ A lista de imagens de gatos é exibida em um ListView.builder dentro de um Expanded, permitindo a rolagem da lista.<br> <br>◼️ Um indicador de carregamento (CircularProgressIndicator) é exibido durante o carregamento de cada imagem.</p>

###

<h2 align="left">Como Usar 📱</h2>

###

<p align="left">1️⃣ Clone o repositório ou copie o código para um projeto Flutter.<br><br>2️⃣ Certifique-se de ter as dependências corretas instaladas usando ''flutter pub get''.<br><br>3️⃣ Execute o aplicativo em um emulador ou dispositivo usando ''flutter run''.<br><br>💠 Ao clicar no botão "Carregar 5 Fotos de Gatos", o aplicativo fará uma requisição à API The Cat API, receberá URLs de imagens de gatos e exibirá essas imagens na tela.<br><br>🌐 Certifique-se de estar conectado à internet, pois o aplicativo faz chamadas de API para carregar as imagens.</p>

###

<h2 align="left">Dependências ❗</h2>

###

<p align="left">O aplicativo utiliza as seguintes dependências Flutter:<br><br>🚩 flutter/material.dart: Para construir a interface do usuário.<br><br>🚩 http: Para fazer requisições HTTP.<br><br>🚩 dart:convert: Para decodificar a resposta JSON da API.</p>

###

<h2 align="center">Autores ✏️</h2>

###

<p align="left">ㅤㅤ👨‍💼: Igor Santos de Macedoㅤㅤㅤ👨‍💼: Marco Oliveiraㅤㅤㅤ👨‍💼: Rafael Santana Silvaㅤㅤㅤ👨‍💼: Vinicius Golçalves<br>ㅤㅤ🆔 2040482322048ㅤㅤㅤㅤㅤㅤ 🆔 2040481912056ㅤㅤ 🆔 2040482112047ㅤㅤㅤㅤㅤ🆔 2040482322006</p>

###
