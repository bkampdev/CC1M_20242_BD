-- Criação das tabelas para o Sistema de Gestão Empresarial Integrado
CREATE DATABASE TechSolution;
USE TechSolution;

-- Clientes
CREATE TABLE CLIENTES (
    Codigo INT PRIMARY KEY,
    CNPJ VARCHAR(18) NOT NULL,
    RazaoSocial VARCHAR(255) NOT NULL,
    RamoAtividade VARCHAR(255),
    DataCadastramento DATE,
    PessoaContato VARCHAR(255)
);

-- Empregados
CREATE TABLE EMPREGADOS (
    Matricula INT PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    Cargo VARCHAR(255),
    Salario DECIMAL(10, 2),
    DataAdmissao DATE,
    Qualificacoes TEXT,
    EnderecoID INT,
    FOREIGN KEY (EnderecoID) REFERENCES ENDERECOS(Codigo)
);

-- Empresas
CREATE TABLE EMPRESAS (
    CNPJ VARCHAR(18) PRIMARY KEY,
    RazaoSocial VARCHAR(255) NOT NULL,
    PessoaContato VARCHAR(255),
    EnderecoID INT,
    FOREIGN KEY (EnderecoID) REFERENCES ENDERECOS(Codigo)
);

-- Fornecedores
CREATE TABLE FORNECEDORES (
    CNPJ VARCHAR(18) PRIMARY KEY,
    RazaoSocial VARCHAR(255) NOT NULL,
    PessoaContato VARCHAR(255),
    EnderecoID INT,
    FOREIGN KEY (EnderecoID) REFERENCES ENDERECOS(Codigo)
);

-- Tipo de endereço
CREATE TABLE TIPO_DE_ENDERECO (
    Codigo INT PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL
);

-- Endereços
CREATE TABLE ENDERECOS (
    Codigo INT PRIMARY KEY,
    Numero VARCHAR(10),
    Logradouro VARCHAR(255),
    Complemento VARCHAR(255),
    CEP VARCHAR(10),
    Bairro VARCHAR(255),
    Cidade VARCHAR(255),
    Estado VARCHAR(2),
    TipoEnderecoID INT,
    FOREIGN KEY (TipoEnderecoID) REFERENCES TIPO_DE_ENDERECO(Codigo)
);

-- Encomendas
CREATE TABLE ENCOMENDAS (
    Numero INT PRIMARY KEY,
    DataInclusao DATE,
    ValorTotal DECIMAL(10, 2),
    ValorDesconto DECIMAL(10, 2),
    ValorLiquido DECIMAL(10, 2),
    FormaPagamentoID INT,
    QuantidadeParcelas INT,
    ClienteID INT,
    FOREIGN KEY (ClienteID) REFERENCES CLIENTES(Codigo)
);

-- Produtos
CREATE TABLE PRODUTOS (
    Codigo INT PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    Cor VARCHAR(50),
    Dimensoes VARCHAR(50),
    Peso DECIMAL(10, 2),
    Preco DECIMAL(10, 2),
    TempoFabricacao INT,
    DesenhoProduto TEXT,
    HorasMaoDeObra INT
);

-- Tipos de componente
CREATE TABLE TIPOS_DE_COMPONENTE (
    Codigo INT PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL
);

-- Componentes
CREATE TABLE COMPONENTES (
    Codigo INT PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    QuantidadeEstoque INT,
    PrecoUnitario DECIMAL(10, 2),
    Unidade VARCHAR(50),
    TipoComponenteID INT,
    FOREIGN KEY (TipoComponenteID) REFERENCES TIPOS_DE_COMPONENTE(Codigo)
);

-- Maquinas
CREATE TABLE MAQUINAS (
    Codigo INT PRIMARY KEY,
    TempoVida INT,
    DataCompra DATE,
    DataFimGarantia DATE
);

-- Recursos específicos
CREATE TABLE RECURSOS_ESPECIFICOS (
    Codigo INT PRIMARY KEY,
    QuantidadeNecessaria INT,
    Unidade VARCHAR(50),
    TempoUso INT,
    HorasMaoDeObra INT,
    ProdutoID INT,
    FOREIGN KEY (ProdutoID) REFERENCES PRODUTOS(Codigo)
);

-- Registro de manutenção
CREATE TABLE REGISTRO_MANUTENCAO (
    Codigo INT PRIMARY KEY,
    Data DATE,
    Descricao TEXT,
    MaquinaID INT,
    FOREIGN KEY (MaquinaID) REFERENCES MAQUINAS(Codigo)
);

-- Registro de suprimentos
CREATE TABLE REGISTRO_SUPRIMENTOS (
    Codigo INT PRIMARY KEY,
    Quantidade INT,
    DataNecessidade DATE,
    ComponenteID INT,
    FOREIGN KEY (ComponenteID) REFERENCES COMPONENTES(Codigo)
);

-- Relacionamento telefones (multivalorado)
CREATE TABLE TELEFONES_CLIENTES (
    ClienteID INT,
    Telefone VARCHAR(15),
    PRIMARY KEY (ClienteID, Telefone),
    FOREIGN KEY (ClienteID) REFERENCES CLIENTES(Codigo)
);

CREATE TABLE TELEFONES_EMPREGADOS (
    EmpregadoID INT,
    Telefone VARCHAR(15),
    PRIMARY KEY (EmpregadoID, Telefone),
    FOREIGN KEY (EmpregadoID) REFERENCES EMPREGADOS(Matricula)
);

CREATE TABLE TELEFONES_EMPRESAS (
    EmpresaID VARCHAR(18),
    Telefone VARCHAR(15),
    PRIMARY KEY (EmpresaID, Telefone),
    FOREIGN KEY (EmpresaID) REFERENCES EMPRESAS(CNPJ)
);

CREATE TABLE TELEFONES_FORNECEDORES (
    FornecedorID VARCHAR(18),
    Telefone VARCHAR(15),
    PRIMARY KEY (FornecedorID, Telefone),
    FOREIGN KEY (FornecedorID) REFERENCES FORNECEDORES(CNPJ)
);