# language: pt
Funcionalidade: Chatbot
  Como um usuario na pagina de Chatbot
  e visualiza a tela de atendimento virtual inteligente
  Para tirar duvidas ou obter informacao sobre o servico prestado

Contexto: 
  Dado que estou na tela de autenticacao do chatbot da Stelo 

  @validacaoinicial
  Cenario: Deve entrar no sistema do Chatbot para obter o atendimento
    Dado que estou na tela de autenticacao do chatbot da Stelo 
    Quando preencher as informacoes de "NOME/ESTABELECIMENTO", "CPF/CNPJ", "E-MAIL", "TELEFONE" 
    E clicar para entrar no Chatbot
    Entao devo acessar a conversa com o assistente virtual
  
  @fluxopadrao  
  Cenario: Tentativa de Login de NOME/ESTABELECIMENTO invalido
    Dado que preencho as informações de "NOME/ESTABELECIMENTO" com dados invalidos
    E preencher as demais informacoes com dados validos
    Quando clicar para entrar no chat
    Entao deve impedir a abertura do chatbot 
    E deve ser notificado na tela de autenticacao

  @fluxopadrao  
  Esquema do Cenario: Tentativa de Login de CPF/CNPJ invalido
    Dado que preencho as informações de "CPF/CNPJ" com dados invalidos
    E preencher as demais informacoes com dados validos
    Quando clicar para entrar no chat
    Entao deve impedir a abertura do chatbot 
    E deve ser notificado na tela de autenticacao
    """
    CPF/CNPJ invalido
    """

    Exemplos:
      |      "CPF/CNPJ"        |
      |   "545.645.456-54"     |
      |       "326.222"        |
      |           ""           |
      |     "545.645.456-d"    |
      |  "22.222.222/2222-22"  |

  @fluxopadrao  
  Esquema do Cenario: Tentativa de Login E-MAIL invalido
    Dado que preencho as informações de "E-MAIL" com dados invalidos
    E preencher as demais informacoes com dados validos
    Quando clicar para entrar no chat
    Entao deve impedir a abertura do chatbot 
    E deve ser notificado na tela de autenticacao
    """
    Email invalido
    """

    Exemplos:
      |    "E-MAIL"    |
      |     "teste"    |
      |     "@teste"   |
      |        ""      |

  @fluxopadrao
  Esquema do Cenario: Tentativa de Login sem campo de preencimento obrigatorio
    Quando preencher as informacoes de "NOME/ESTABELECIMENTO", "CPF/CNPJ", "E-MAIL", "TELEFONE" 
    E clicar para entrar no Chatbot
    Entao devo acessar a conversa com o assistente virtual
    E deve ser notificado na tela de autenticacao "Os campos identificados com asteriscos (*) são de preenchimento obrigatório."

  Exemplos:
    |   "NOME/ESTABELECIMENTO"  | "CPF/CNPJ"  | E-MAIL |        TELEFONE      |
    |             ""            |     ""      |   ""   |   "(11) 97342-7070"  |
   
  @fluxopadrao  
  Esquema do Cenario: Tentativa de Login TELEFONE invalido
    Dado que preencho as informações de "TELEFONE" com dados invalidos
    E preencher as demais informacoes com dados validos
    Quando clicar para entrar no chat
    Entao deve impedir a abertura do chatbot 
    E deve ser notificado na tela de autenticacao
    """
    Telefone invalido
    """

    Exemplos:
      |     "TELEFONE"      |
      |   "(11) 99753"      |
      |  "(11) 99753-55"    |

  @fluxopadrao
  Cenario: Solicitacoes ou duvidas com a Assistente Virtual
    Quando preencher as informações validas para acesso
    E informar a "duvida/solicitacao" no campo "Faca sua pergunta" clicando em "ENVIAR"
    E tiver o retorno valido do chatbot
    Entao clique para encerrar o chat

@fluxopadrao
  Cenario: Solicitacoes ou duvidas com o Atendimento Humano
    Quando preencher as informações validas para acesso
    E informar a "duvida/solicitacao" no campo "Faca sua pergunta" clicando em "ENVIAR"
    E nao tiver o retorno valido do chatbot
    Entao digite "Atendimento Humano" para que apareca a opcao "clique aqui"
    E sera direcionado para o atendimento personalizado se estiver dentro do "Dia" e "Horario" estabelecido

@fluxopadrao
  Cenario: Encerramento do Chatbot
    Quando preencher as informações validas para acesso
    E informar a "duvida/solicitacao" no campo "Faca sua pergunta" clicando em "ENVIAR"
    E com isso tiver o atendimento necessario de acordo com a sua necessidade
    Entao clique para encerrar o chatbot selecionando a opcao "Sim"
    E sera direcionado para clicar na "nota" do atendimento
    E um campo de "sugestao, elogio ou critica" para preenchimento e depois encerra no botao "ENVIAR"


    
    






    
  
