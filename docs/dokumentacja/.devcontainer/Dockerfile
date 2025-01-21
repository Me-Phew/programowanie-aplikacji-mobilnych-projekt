# Using Microsoft's Ubuntu-based development container as base image
FROM mcr.microsoft.com/vscode/devcontainers/base:ubuntu

COPY upload.sh /usr/local/bin/upload.sh
# Install LaTeX, documentation tools and other utilities
RUN apt-get update && \
    # Installing:
    # - texlive packages for LaTeX support with Polish language
    # - chktex for LaTeX syntax checking
    # - biber for bibliography processing
    # - ghostscript for PostScript processing
    # - doxygen and graphviz for documentation generation
    # - python3 for scripting support
    # - inkscape for vector graphics
    DEBIAN_FRONTEND=noninteractive apt-get install -y texlive-base texlive-latex-extra texlive-lang-polish chktex texlive-bibtex-extra biber ghostscript doxygen graphviz python3 inkscape && \
    # Removing package cache and unnecessary files to reduce image size
    chmod +x /usr/local/bin/upload.sh && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/cache/apt/* /var/log/* /usr/share/doc/* /usr/share/man/* && \
    apt-get autoremove -y
