CREATE TABLE Usuários (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(200) NOT NULL,
    cep VARCHAR NOT NULL,
    gênero VARCHAR NOT NULL,
    data_de_nascimento DATE NOT NULL,
    id_Oppo INTEGER REFERENCES Oppo(id)
);
		
CREATE TABLE Oppo (
    id SERIAL PRIMARY KEY,
    acessorio-rosto text NULL,
    acessorio-garra text NULL,
    acessorio-topo-da-cabeca text NULL
);
		
CREATE TABLE Organizações (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(200) NOT NULL,
    data_de_fundacao DATE NOT NULL,
    localizacao VARCHAR NOT NULL,
    aceita-voluntarios boolean NOT NULL,
    id_Usuários INTEGER REFERENCES Usuários(id)
);
		
CREATE TABLE publicacoes (
    id SERIAL PRIMARY KEY,
    título VARCHAR(400) NOT NULL,
    texto text NOT NULL,
    anexo text(500) NULL
);
		
CREATE TABLE post-colaborativos (
    id_Usuários INTEGER REFERENCES Usuários(id),
    id_publicacoes INTEGER REFERENCES publicacoes(id),
);