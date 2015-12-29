# FEUP - BDAD

Este repositório contém o código realizado em algumas fichas e nos projetos da Unidade Curricular de BDAD - FEUP.

## Projeto - Base de dados

Para este projeto optámos por fazer uma base de dados de uma rede social. Usamos como ponto de partida a famosa rede social Facebook¸ no entanto fizemos várias alterações e adaptações para que o UML não ficasse demasiado complexo.
Na nossa rede Social cada utilizador possui um Perfil. Esse perfil tem como atributo o ID de Naturalidade, uma outra classe pertencente à nossa Base de dados. Como forma de comunicar entre eles, os perfis podem criar Chats. Cada Chat pode ser constituído por vários utilizadores, podendo cada um deles introduzir no Chat as Mensagens (outra classe da nossa Base de Dados) que assim desejar.
Como forma de manter o conhecimento das relações entre os vários utilizadores, existe a classe Amizade. Um utilizador pode pedir qualquer outro em Amizade cabendo a este aceitar ou não.
Os utilizadores podem também criar e pertencer a Grupos. Estes são também uma forma de comunicação entre os vários Perfis. Pertencendo a um grupo, o utilizador comunica através de Posts que pode fazer nesse mesmo Grupo. Esses Posts podem não só ser feitos em grupos, como noutros perfis ou em Eventos. Os Eventos são também uma classe da nossa Base de dados que tem um Perfil criador ao qual podem aderir vários outros perfis.
Os Perfis podem atribuir Reputação, seja ela positiva ou negativa, a outros Perfis ou a Posts. Estes dois destinos da Reputação têm um atributo Inteiro que é alterado sempre que lhe é atribuída Reputação.

### UML diagrama da base de dados
***

![alt tag](http://i.imgur.com/pDia9Cw.png)
