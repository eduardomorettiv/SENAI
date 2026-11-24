-- Criar o banco de dados
DROP DATABASE IF EXISTS db_discoteca;
CREATE DATABASE IF NOT EXISTS db_discoteca;
USE db_discoteca;

-- Criar a tabela de discos
CREATE TABLE IF NOT EXISTS discos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    album VARCHAR(100) NOT NULL,
    artista VARCHAR(100) NOT NULL,
    genero VARCHAR(50) NOT NULL,
    imagem_url TEXT NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Inserção de dados de teste (Carga inicial)
INSERT INTO discos (album, artista, genero, imagem_url, preco) VALUES
('Clube da Esquina', 'Milton Nascimento e Lô Borges', 'MPB', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRc_R_qvq2TMxFDM2E2KRwRfA6jvS3wYrTdW9jeAt8g1A&s=10', 180.00),
('The Dark Side of the Moon', 'Pink Floyd', 'Rock Progressivo', 'https://upload.wikimedia.org/wikipedia/pt/3/3b/Dark_Side_of_the_Moon.png', 220.50),
('Da Lama ao Caos', 'Chico Science & Nação Zumbi', 'Manguebeat', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5_7YPJd2fND_i92linr5KwBLGh5lecT3xWGejRGBP_g&s=10', 150.00),
('Slave Bird', 'Super Solid Disc', 'Rock', 'https://bl-prod-images.azureedge.net/v1.3/songs/f102dc80-ba61-4bd6-9a4d-93d9cf648a1c/400x400', 10.00);