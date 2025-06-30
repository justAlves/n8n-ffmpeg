# Usa a imagem oficial do n8n como base
FROM docker.n8n.io/n8nio/n8n

# Instala o FFmpeg e suas dependências
# Usamos apt-get porque a imagem oficial do n8n é baseada em Debian/Ubuntu
RUN apt-get update && apt-get install -y ffmpeg

# Mantém o comando padrão para iniciar o n8n
CMD ["n8n"]