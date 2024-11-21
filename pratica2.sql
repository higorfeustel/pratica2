create database pratica2;
use pratica2;

CREATE TABLE Clientes (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome_Completo VARCHAR(100) NOT NULL,
    CPF VARCHAR(11) UNIQUE NOT NULL,
    Email VARCHAR(100),
    Telefone VARCHAR(15)
);

CREATE TABLE Funcionarios (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome_Completo VARCHAR(100) NOT NULL,
    CPF VARCHAR(11) UNIQUE NOT NULL,
    Email VARCHAR(100),
    Cargo VARCHAR(50)
);

CREATE TABLE Solicitacoes (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    ID_Cliente INT NOT NULL,
    Descricao TEXT NOT NULL,
    Urgencia ENUM('baixa', 'media', 'alta') NOT NULL,
    Status ENUM('pendente', 'em andamento', 'finalizada') DEFAULT 'pendente',
    Data_Abertura DATE NOT NULL,
    ID_Funcionario_Responsavel INT,
    FOREIGN KEY (ID_Cliente) REFERENCES Clientes(ID),
    FOREIGN KEY (ID_Funcionario_Responsavel) REFERENCES Funcionarios(ID)
);
