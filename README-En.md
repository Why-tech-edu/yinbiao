<p align="center">
  <img src="docs/logo.png" alt="Phonetic Symbol Web Logo" width="120" />
</p>

<h1 align="center">English Phonetic Symbols</h1>

<p align="center">
  48 Phonetic Symbols · Hover to Auto-play · Double-click for Details · Word Pronunciation
</p>

<p align="center">
  English | <a href="README.md">中文</a>
</p>

<p align="center">
  <a href="LICENSE"><img alt="License" src="https://img.shields.io/badge/license-MIT-blue.svg?style=flat-square"></a>
  <a href="https://github.com/boommanpro/phonetic_symbol_web/actions"><img alt="Build Status" src="https://img.shields.io/github/actions/workflow/status/boommanpro/phonetic_symbol_web/deploy.yml?branch=main&style=flat-square"></a>
  <img alt="HTML5" src="https://img.shields.io/badge/HTML5-E34F26.svg?style=flat-square">
  <img alt="Tailwind CSS" src="https://img.shields.io/badge/Tailwind-3-38bdf8.svg?style=flat-square">
</p>

---

## Introduction

`English Phonetic Symbols` is an interactive website for learning English phonetic symbols, covering all **48 English phonetic symbols** (20 vowels + 28 consonants). Hover over a symbol to auto-play its pronunciation audio, or double-click to open the detailed learning page.

Symbols are categorized into long vowels, short vowels, diphthongs, voiceless consonants, and voiced consonants. Each symbol comes with example words and word pronunciation playback to help learners master phonetics in context.

### Core Scenarios

- English phonetics beginner learning
- Pronunciation correction and comparison practice
- Vocabulary pronunciation lookup

## Screenshot

![Phonetic Symbol Web Screenshot](docs/screenshot.png)

## Live Demo

Hosted on GitHub Pages: <https://boommanpro.github.io/phonetic_symbol_web/>

## Key Features

- **All 48 Phonetic Symbols** - long vowels, short vowels, diphthongs, voiceless and voiced consonants
- **Hover Auto-play** - hover over a symbol button to auto-play its audio (loops 3 times)
- **Example Word Pronunciation** - hover shows example words; click a word to hear its pronunciation
- **Double-click for Details** - double-click a symbol to open the detailed learning page
- **Responsive Design** - adapts to all screen sizes
- **Auto-download Scripts** - Python scripts to download phonetic audio/video and word pronunciations

## Tech Stack

| Module | Technology |
| --- | --- |
| Page | HTML5 |
| Styling | Tailwind CSS v3 (CDN) |
| Icons | Font Awesome |
| Interaction | Vanilla JavaScript |
| Resource Download | Python (auto_download.py / extract_words.py) |

## Project Structure

```
phonetic_symbol_web/
├── index.html              # Main page
├── phonetic_words.json     # Phonetic-to-words mapping data
├── auto_download.py        # Auto-download script for phonetic audio/video
├── extract_words.py        # Word extraction and download script
├── video/                  # 48 phonetic video files (phonetic-1~48.mp4)
├── words-voice/            # Word pronunciation files (word-xxx.mp3)
├── docs/                   # Logo, screenshot, favicon
└── .gitignore
```

## Quick Start

### Run Locally

No dependencies needed — open in a browser or start a local server:

```bash
# Option 1: Open index.html directly

# Option 2: Python built-in server
python3 -m http.server 8000
```

Open <http://localhost:8000> in your browser.

### Usage

1. An audio permission popup appears on first open — click "OK" to enable audio
2. **Hover** over a symbol button → auto-plays the phonetic audio (3 times) and shows example words
3. **Click an example word** → plays the word's pronunciation
4. **Double-click** a symbol button → opens the detailed learning page

### Download Resources (Optional)

To re-download phonetic audio/video or word pronunciations:

```bash
# Download audio and video for 48 phonetic symbols
python auto_download.py

# Extract and download word pronunciations
python extract_words.py
```

## Deployment

### GitHub Pages (Automated)

A GitHub Actions workflow (`.github/workflows/deploy.yml`) is configured to automatically deploy to GitHub Pages on every push to `main`.

Manual setup:

1. Go to **Settings → Pages** in the repository
2. Set **Source** to `GitHub Actions**
3. Push to `main` to trigger automatic deployment

### Manual Deployment

Since the project is pure static, deploy to any static server:

```bash
# Using Python
python3 -m http.server 8000

# Or using Nginx
docker run -d -p 80:80 -v $(pwd):/usr/share/nginx/html nginx
```

## Notes

- Due to browser autoplay policies, first use requires a click to enable audio
- Phonetic content is copyrighted by [yybabc.com](https://www.yyybabc.com/); this project is for learning purposes only

## Contributing

PRs are welcome, for example:

- Add more example words
- Improve UI themes and animations
- Add phonetic comparison practice
- Support offline usage

## License

[MIT License](LICENSE)
