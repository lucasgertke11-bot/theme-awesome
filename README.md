# DistroForge - AwesomeWM Themes

Repositório de temas AwesomeWM para integração com o instalador Calamares do projeto DistroForge.

## Temas Inclusos

- multicolor (15 color schemes - nord, dracula, monokai, etc)
- one-dark-80s (Atom/80s colors)
- amazing (Nordic/nature colors)
- blackburn
- default

## Estrutura

```
/
├── themes/           # Arquivos dos temas AwesomeWM
├── previews/        # Imagens de preview
├── scripts/         # Scripts de instalação
```

## Instalação via Calamares

```bash
sudo ./scripts/[distro]/awesome/[tema].sh
```

## Instalação Manual

```bash
git clone https://github.com/lucasgertke11-bot/theme-awesome.git
cd theme-awesome
sudo ./scripts/[distro]/awesome/[tema].sh
```

## Dependências

Os scripts instalam automaticamente:
- awesome / awesome-git
- picom
- xdotool
- xorg/x11-apps
- rxvt-unicode
- python3 + pywal
- Nerd Fonts

## Distros Suportadas

Arch Linux, Ubuntu, Fedora, OpenSUSE, Gentoo

---
DistroForge 2026