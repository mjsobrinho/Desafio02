# Use a imagem oficial do Node.js como base
FROM node:14

# Defina o diretório de trabalho no container
# Defina o diretório de trabalho no container
WORKDIR /usr/src/app

# Copie os arquivos do aplicativo Node.js para o diretório de trabalho
COPY package.json package-lock.json ./

# Instale as dependências do aplicativo
RUN npm install

# Copie todo o restante do código do aplicativo
COPY . .

# Exponha a porta 3000 para acessar o aplicativo Node.js
EXPOSE 3000

# Comando para iniciar o aplicativo Node.js
CMD ["npm", "start"]
