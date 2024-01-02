# MetaDigger 

## Overview

MetaDigger is a versatile Bash script designed to leverage Google hacking techniques for locating and analyzing files with specific extensions on a given website. This script streamlines the process of finding these files and subsequently extracting their metadata, presenting a powerful tool for researchers, digital forensics experts, and cybersecurity professionals.

## Features

- **Google Hacking**: Utilizes advanced search queries in Google to find files of a specified type on a designated website.
- **Metadata Extraction**: Once files are located, MetaDigger extracts and displays their metadata for further analysis.

## Prerequisites

Before using MetaDigger, ensure you have the following installed:
- `lynx`: a command-line web browser.
- `wget`: a utility for downloading files from the web.
- `exiftool`: a program for reading, writing, and editing meta information in files.

## Installation

To use MetaDigger, clone this repository or download the script directly.

```bash
git clone https://github.com/xtokram/metadigger.git
cd metadigger
chmod +x metadigger.sh
```

## Usage

To run MetaDigger, use the following syntax:

```bash
./metadigger.sh [site] [extension]
```

Where:
- `[site]` is the target website (e.g., `example.com`).
- `[extension]` is the file extension to search for (e.g., `pdf`, `jpg`).

### Example

```bash
./metadigger.sh example.com pdf
```

This command will search `example.com` for PDF files, download them, and extract their metadata.

## Important Notes

- Use MetaDigger responsibly and ethically. Ensure you have permission to analyze the target website and its files.
- MetaDigger relies on Google search results and might not find all files if Google hasn't indexed them.

## Contributing

Contributions to MetaDigger are welcome! Feel free to fork the repository, make improvements, and submit pull requests.

## License

MetaDigger is released under the MIT License. See the `LICENSE` file in the repository for more details.
