# Hoje Vais Ser um Hacker

> Workshop de cibersegurança sobre palavras-passe e autenticação, pensado para grupos de jovens em contexto escolar ou eventos de divulgação científica.

Este repositório contém **todos os materiais necessários** para dinamizar o workshop: guia do dinamizador, checklist de preparação, guia autónomo para os alunos, ficheiros do desafio final e scripts de configuração da máquina virtual.

---

## Descrição

Uma sessão prática sobre palavras-passe e autenticação, com demonstração ao vivo de quebra de palavras-passe fracas, um exercício prático em que cada aluno verifica se o seu e-mail foi exposto em fugas de dados, e um desafio final em equipa em que os próprios alunos quebram palavras-passe cifradas, como hackers.

**Duração recomendada:** 100 minutos  
**Público-alvo:** Jovens a partir do 10º ano, com acesso a computadores e internet  
**Número de participantes:** até 30 (ideal: 15–20)

---

## Estrutura do repositório

```
workshop-hacker-passwords/
│
├── README.md                    # Este ficheiro
├── LICENSE                      # Licença CC BY-SA 4.0
├── CONTRIBUTING.md              # Como contribuir
│
├── _config.yml                  # Configuração Jekyll
├── _data/
│   └── evento.yml               # Configuração do evento (editar no fork)
│
├── dinamizador/
│   ├── guia.md                  # Script completo da sessão, bloco a bloco
│   ├── checklist.md             # Checklist de preparação e de sessão
│   └── notas.md                 # Dicas, perguntas frequentes, gestão do tempo
│
├── alunos/
│   └── guia.md                  # Guia autónomo passo a passo para os alunos
│
├── desafio/
│   ├── README.md                # Regras e instruções do mini-desafio
│   ├── hashes-equipa-A.txt      # Hashes MD5 para a equipa A
│   ├── hashes-equipa-B.txt      # Hashes MD5 para a equipa B
│   ├── hashes-equipa-C.txt      # Hashes MD5 para a equipa C
│   ├── gerar-hashes.sh          # Script para gerar novos ficheiros de hashes
│   └── solucoes.md              # Soluções (não partilhar com os alunos)
│
└── vm/
    ├── README.md                # Como preparar o ambiente
    ├── setup.sh                 # Script de instalação manual
    └── Vagrantfile              # VM reproduzível com Vagrant
```

---

## Como usar este repositório

### Para um novo evento

1. Faz **fork** deste repositório para a tua conta GitHub
2. Edita o ficheiro `_data/evento.yml` com os dados do teu evento
3. Segue a `dinamizador/checklist.md` para preparar a sessão
4. Partilha o link da pasta `alunos/` com os participantes no dia

### Para contribuir com melhorias

Consulta o ficheiro [CONTRIBUTING.md](CONTRIBUTING.md).

---

## Licença

Este trabalho está licenciado sob [Creative Commons Attribution-ShareAlike 4.0 International (CC BY-SA 4.0)](LICENSE).

Podes usar, adaptar e redistribuir livremente, desde que atribuas crédito ao autor original e partilhes nas mesmas condições.

**Autor original:** [Filipe Carneiro](https://github.com/filipecarneiro)
