# Right Time Unasp
![Logo](/imagesReadme/Logo.png "Right Time Logo")

Sistema de registro de horas complementares onde terão tipos diferentes de acesso, coordenador e aluno, onde o aluno poderá enviar seu anexo de conclusão de atividade complementar e futuramente sua ficha de conclusão de estágio. O coordenador, que possui acesso especial acessará o sistema e validará os certificados dentro de nossa ferramenta. O acesso do aluno disponibilizará a visualização da carga horária não concluída e pendente além de liberar o envio do anexo de suas atividades.

Projeto com finalidade de auxiliar no registro de horas complementares a fim de facilitar o gerenciamento do aluno e da faculdade em organizar as atividades extracurriculares.

* **Integrantes**
  * `Camila Martins`  | DEV | github.com/cahMartins
  * `Jonathan Walace` | DEV | github.com/JonathanWalace   
  * `Leonardo do Nascimento`  | DEV | github.com/LeonardoNSilva2   
  * `Patrícia Dias`   | PO | github.com/Paaty123   
  * `Raphael de Figueiredo`   | PO | github.com/RandyePX  

# Especificação de Requisitos

### Requisitos Funcionais
| **ALUNO** |
|-----------|
| Anexar arquivos de conclusão de curso; |
| Anexar arquivos de ficha de estágio; |
| Login de aluno; |
| Cadastro de aluno; |
| Visualizar feedback de horas concluídas e pendentes. |

| **COORDENADOR** |
|-----------------|
| Login de coordenador; |
| Cadastro de coordenador; |
| Validação de carga horária. |

### Requisitos Não Funcionais
| **SISTEMA** |
|-------------|
| Usabilidade; |
| Portabilidade; |
| Responsividade; |
| Segurança. |

![Use-case](/imagesReadme/Use-case.png "Caso de uso")
> Use case do sistema.

* **Atores**
  * Aluno
  * Coordenador
  * Administrador

O sistema notificará o aluno cadastrado sobre o prazo de envio de suas horas complementares e caso uma atividade já tenha sido enviada irá notificar sobre a validação de suas horas. O aluno poderá fazer login, anexar arquivos a plataforma e visualizar suas horas. O coordenador poderá fazer login e validar as atividades cadastradas pelo aluno. O administrador será responsável por fazer o cadastro da escolas que utilizam a plataforma.

### Diagrame de classe
![Diagrama-de-classe](/imagesReadme/Diagrama-de-classe.png "Diagrama de Classe")
> Diagrama de classe do sistema.

Nesse diagrama de classe podemos ver cadastrados os atributos e métodos das classes Aluno, Administrador, Coordenador, Curso e Arquivo. Onde além dos atores que já conhecemos possuímos também a relação de tabelas entre Aluno e Coordenador, sendo elas Curso e Arquivo. A tabela exibida "Curso" gerencia em qual curso o Aluno é pertencente. A tabela "Arquivo" apresenta qual o tipo de arquivo será anexado pelo Aluno e respectivamente visualizado na posse do Coordenador. 

### Prototipação

A prototipação foi parte essencial em nosso desenvolvimentos pois nos possibilitou uma prévia visualização do estado em que desejávamos o visual de nosso sistema.

`Link do protótipo:` https://www.figma.com/proto/QdLzYuIFa8GjjmXFFV4NBM/Projeto-RightTime?node-id=10%3A8&scaling=contain&page-id=0%3A1&starting-point-node-id=10%3A8


![Protótipo Login](/imagesReadme/Login.png "Tela de Protótipo - Login")
> Protótipo da tela de login.

![Protótipo Cadastro](/imagesReadme/Cadastro.png "Tela de Protótipo - Cadastro")
> Protótipo da tela de cadastro no sistema.

![Protótipo Sistema](/imagesReadme/Tela-principal.png "Tela de Protótipo - Principal")
> Protótipo da tela principal do sistema.

A prototipação foi totalmente desenvolvida no Figma e mais a frente poderemos visualizar o resultado final.

# Desenvolvimento do sistema

![Banner](/imagesReadme/Banner.png "Banner de horas complementares")

## Sistema

O sistema foi completamente desenvolvido em Laravel vemos abaixo algumas das imagens finais.

![Tela Login](/imagesReadme/telaLogin.jpg "Tela de Login")
> Tela atual de login do sistema.

Nessa tela o aluno irá utilizar seu acesso para entrar na plataforma.

![Tela Registro](/imagesReadme/telaRegistro.jpg "Tela de Registro")
> Tela atual de registro do sistema.

Nesse tela serão registrados os alunos do sistema.

![Tela Principal](/imagesReadme/telaPrincipal.jpg "Tela Principal")
> Tela principal do sistema.

Principal tela do sistema, onde o aluno estará apto a visualizar a carga horária de seu curso, verificar suas horas pendentes de entrega, checar suas horas já enviadas e onde ele poderá enviar seus arquivos anexados com o total de horas de participação.

![Tela Principal](/imagesReadme/telaPrincipal2.jpg "Tela Principal")
> Tela principal do sistema com o envio de uma atividade para análise.

Nessa imagem podemos visualizar que foi anexado ao sistema um arquivo de texto com seu nome, tipo, data e hora de envio para a análise do coordenador. Ao clicar no nome do anexo enviado o arquivo irá baixar automaticamente em seu computador para futuras necessidades de visualização do documento.

![Tela Principal Responsiva](/imagesReadme/responsivo2.jpg "Tela Principal Responsiva")
> Tela principal do sistema com o conforto da responsividade.

### Ferramentas de desenvolvimento
As ferramentas abaixo nos proporcionaram facilidade em desenvolver o sistema:
* Laravel, para integrar todos os componentes no sistema;
* Linguagem maioritaria PHP;
* Heidi SQL, pois seu banco de dados dinâmico nos proporcionou agilidade na criação de um banco de dados sólido.

