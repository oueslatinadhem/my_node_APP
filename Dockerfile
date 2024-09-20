# Création image de base
FROM node:14

# Création du répertoire de travail
WORKDIR /usr/src/app

# Copie du fichier package.json et installation des dépendances
COPY package*.json ./
RUN npm install

# Copie du reste des fichiers de l'application
COPY . .

# Exposition du port sur lequel l'application sera accessible
EXPOSE 3000

# Démarrer l'application
CMD ["node", "app.js"]