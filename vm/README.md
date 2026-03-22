# Máquina Virtual para o Workshop

Este diretório contém os ficheiros necessários para configurar um ambiente de trabalho reprodutível para o workshop.

Tens duas opções:

---

## Opção A — Vagrant (recomendado)

Cria automaticamente uma VM Ubuntu com hashcat e o dicionário RockYou pré-instalados.

### Pré-requisitos

- [VirtualBox](https://www.virtualbox.org/) (gratuito)
- [Vagrant](https://www.vagrantup.com/) (gratuito)

### Iniciar a VM

```bash
cd vm
vagrant up
vagrant ssh
```

A inicialização demora alguns minutos na primeira vez (download da imagem base + instalação das ferramentas).

### Testar a instalação

Dentro da VM:

```bash
hashcat --version
ls /usr/share/wordlists/rockyou.txt
```

### Desligar a VM

```bash
vagrant halt
```

### Destruir a VM (apaga tudo)

```bash
vagrant destroy
```

---

## Opção B — Instalação manual

Se já tens Linux (ou WSL2 no Windows), podes instalar tudo com o script `setup.sh`:

```bash
cd vm
bash setup.sh
```

> O script foi testado em Ubuntu 22.04 LTS e Debian 12.

---

## Usar o hashcat no desafio

Após a instalação, copia os ficheiros de hashes para a VM e executa:

```bash
hashcat -m 0 -a 0 hashes-equipa-A.txt /usr/share/wordlists/rockyou.txt
```

- `-m 0` — tipo de hash: MD5
- `-a 0` — modo de ataque: dicionário
- O resultado aparece no ecrã e é guardado em `hashcat.potfile`

Para ver os resultados após terminar:

```bash
hashcat -m 0 hashes-equipa-A.txt --show
```
