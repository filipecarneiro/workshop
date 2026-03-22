---
title: "Checklist do Dinamizador"
---

# Checklist do Dinamizador

---

## Com 1 semana de antecedência

- [ ] Ler o `guia.md` de início ao fim
- [ ] Configurar a VM (seguir `vm/README.md`) e testar o `hashcat` com a lista RockYou
- [ ] Criar ou verificar a conta no [Mentimeter](https://www.mentimeter.com) e preparar a pergunta do quebra-gelo
- [ ] Verificar se o URL do Mentimeter em `evento.yml` está correto e acessível
- [ ] Confirmar com a escola o número de participantes (previsto: {{ site.data.evento.publico.num_participantes }}) e ajustar os ficheiros de hashes se necessário
- [ ] Testar o acesso às ferramentas online a partir de uma rede semelhante à da escola (algumas escolas bloqueiam certos domínios)

---

## No dia anterior

- [ ] Carregar completamente o computador do dinamizador
- [ ] Testar a VM: arrancar, correr hashcat, confirmar que a lista RockYou está presente
- [ ] Abrir o Mentimeter e confirmar que a apresentação está ativa
- [ ] Preparar os ficheiros de hashes para impressão ou partilha digital (um por equipa)
- [ ] Verificar que tens os links anotados:
  - Mentimeter: [{{ site.data.evento.ferramentas.mentimeter_url }}]({{ site.data.evento.ferramentas.mentimeter_url }})
  - [haveibeenpwned.com](https://haveibeenpwned.com)
  - [crackstation.net](https://crackstation.net)
  - [howsecureismypassword.net](https://howsecureismypassword.net)
  - [xkcd.com/936](https://xkcd.com/936/)

---

## 30 minutos antes da sessão

- [ ] Chegar ao espaço e verificar a ligação à internet
- [ ] Testar a projeção — confirmar que o ecrã é visível de todos os lugares
- [ ] Abrir o Mentimeter no computador do dinamizador (ecrã do apresentador)
- [ ] Abrir o URL do Mentimeter no ecrã projetado (ecrã dos participantes)
- [ ] Arrancar a VM e ter o terminal pronto
- [ ] Testar [crackstation.net](https://crackstation.net) — colar um hash e confirmar que responde
- [ ] Confirmar que os alunos conseguem aceder à internet nos seus computadores

---

## Durante a sessão

- [ ] **Início:** pedir aos alunos que acedam ao Mentimeter antes de começar
- [ ] **Bloco 2:** abrir terminal com `hashcat` ou alternativa online pronta
- [ ] **Bloco 4:** garantir que cada aluno tem acesso individual ao computador
- [ ] **Bloco 6:** distribuir os ficheiros de hashes pelas equipas antes de iniciar o cronómetro
- [ ] **Bloco 6:** iniciar cronómetro de 10 minutos visível para todos
- [ ] **Bloco 7:** revelar soluções e registar os resultados das equipas

---

## No final

- [ ] Partilhar o link do repositório com os alunos (e com o professor responsável): [github.com/{{ site.data.evento.dinamizador.github }}/workshop-ciberseguranca-palavras-passe](https://github.com/{{ site.data.evento.dinamizador.github }}/workshop-ciberseguranca-palavras-passe)
- [ ] Recolher feedback informal: o que correu bem, o que podia melhorar
- [ ] Anotar sugestões de melhoria para o repositório — considera abrir uma issue ou pull request
