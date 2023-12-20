# Use a imagem base do Node.js
FROM node:14

# Configura o diretório de trabalho no qual os comandos serão executados
WORKDIR /RESTCOUNTRIES

# Copia o arquivo package.json e package-lock.json para o diretório de trabalho
COPY package*.json ./

# Instalação das dependências
RUN npm install

# Copia o restante do código-fonte para o diretório de trabalho
COPY . .

# Expondo a porta 3000
EXPOSE 3000

# Inicia a aplicação quando o contêiner for executado
CMD ["node", "src/app.js"]
