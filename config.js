var config = {}

config.host = process.env.HOST || "https://gestionpedidos.documents.azure.com:443/";
config.authKey = process.env.AUTH_KEY || "Gb6LcGEPpP6Qnv6uCFCkHiDqhna0PJUqKfqhbrQlXhl2fSw3HAc3AG4QmP6iiSxbOb+MoltsgWX9AdWxkjMVbA==";
config.databaseId = "ToDoList";
config.collectionId = "Items";

module.exports = config;