# Desafio: Quebra as Hashes

## Regras

1. Cada equipa recebe um ficheiro com **5 hashes MD5**
2. O objetivo é descobrir a **palavra-passe original** de cada hash
3. Podem usar qualquer ferramenta disponível (ver abaixo)
4. **Não partilhem respostas com outras equipas** enquanto o desafio estiver a decorrer
5. A equipa que desvendar mais palavras-passe no tempo definido ganha

## Nível de dificuldade

| Equipa | Ficheiro | Nível |
|--------|----------|-------|
| A | `hashes-equipa-A.txt` | Fácil |
| B | `hashes-equipa-B.txt` | Médio |
| C | `hashes-equipa-C.txt` | Mais difícil |

> As equipas só recebem o ficheiro da sua letra — não devem aceder aos outros ficheiros durante o desafio.

## Ferramentas sugeridas

**Online (mais fácil):**
- [crackstation.net](https://crackstation.net) — cola as hashes e carrega em *Crack Hashes*

**Na VM (avançado):**
```bash
hashcat -m 0 -a 0 hashes-equipa-X.txt /usr/share/wordlists/rockyou.txt
```

## Contexto técnico

Estas hashes foram geradas com o algoritmo **MD5**, aplicado diretamente às palavras-passe sem qualquer proteção adicional (sem *salt*). Esta prática era comum nos anos 2000 e é a razão pela qual tantas fugas de dados antigas são facilmente exploradas até hoje.

O ficheiro `rockyou.txt` contém mais de 14 milhões de palavras-passe reais retiradas de uma fuga de dados de 2009. É o dicionário mais usado em testes de segurança.
