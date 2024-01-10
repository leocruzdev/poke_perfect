# Projeto Poke_Perfect

## Introdução
Poke_Perfect é um projeto desenvolvido em Flutter, obtém dados detalhados sobre o mundo dos Pokémons. Este projeto se destaca pela utilização de práticas de desenvolvimento modernas, arquitetura limpa e modular, e pelo uso de bibliotecas de ponta no ecossistema Flutter.

## Tecnologias e Bibliotecas Utilizadas
- **Flutter SDK**: Framework central para criar interfaces de usuário nativas e responsivas.
- **Dio**: Biblioteca robusta para realizar requisições HTTP, facilitando a interação com APIs.
- **Flutter Bloc & Equatable**: Utilizados para gerenciar estados de forma eficaz, seguindo o padrão BLoC e proporcionando uma clara separação entre a lógica de negócios e a interface do usuário.
- **Hive**: Solução de base de dados NoSQL local para armazenamento rápido e eficiente de dados.
- **Injectable & Get_it**: Ferramentas para injeção de dependência, otimizando a gestão de instâncias e modularização.
- **Freezed**: Para a criação de classes imutáveis e padrões de dados, melhorando a qualidade do código em Dart.
- **GoRouter**: Simplifica o roteamento e a navegação entre telas.
- **Logger**: Auxilia no registro de logs, crucial para monitoramento e depuração.
- **Flutter ScreenUtil**: Garante uma interface do usuário responsiva para diversos tamanhos de tela.
- **Flutter EasyLoading**: Implementação prática de indicadores de carregamento.
- **Path Provider**: Localiza diretórios comuns no sistema de arquivos.
- **Cached Network Image**: Biblioteca Flutter para carregar e armazenar em cache imagens da web, com suporte a placeholders e tratamento de erros, otimizando o desempenho e a experiência do usuário.

### Camadas
- **Data Layer**: Contém a lógica de acesso a dados externos, como APIs e bases de dados locais.
- **Domain Layer**: Inclui entidades, repositórios e casos de uso, formando a espinha dorsal da lógica de negócios.
- **Presentation Layer**: Composta por widgets e blocs, responsável pela interface do usuário e interações.

## Funcionalidades Futuras
- **Integração com APIs Adicionais**: Ampliar o banco de dados de Pokémons com informações mais abrangentes.
- **Modo Offline**: Acessar informações essenciais dos Pokémons sem necessidade de conexão à internet.
- **Personalização de Interface**: Opções para customizar a interface do usuário conforme as preferências dos usuários.


## Gerando Arquivos com Build Runner
Para gerar arquivos necessários para o Freezed, Hive e GetIt com Injectable, execute o seguinte comando no terminal do seu projeto:
```bash flutter pub run build_runner build --delete-conflicting-outputs```

## Como Contribuir
Contribuições são sempre bem-vindas! Para contribuir:
1. Faça um fork do repositório.
2. Crie uma branch para sua feature (`git checkout -b feature/AmazingFeature`).
3. Commit suas alterações (`git commit -m 'Add some AmazingFeature'`).
4. Push para a Branch (`git push origin feature/AmazingFeature`).
5. Abra um Pull Request.

## Licença
Este projeto está sob a licença MIT. Veja o arquivo [LICENSE](LICENSE.md) para mais detalhes.

---

Desenvolvido com ❤️ por [leocruzdev](https://github.com/leocruzdev).
