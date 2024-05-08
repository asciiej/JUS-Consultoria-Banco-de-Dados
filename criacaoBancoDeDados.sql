create schema JUSConsultoria;



CREATE TABLE IF NOT EXISTS JUSConsultoria.empresa (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(45) NOT NULL,
  cnpj VARCHAR(45) NOT NULL,
  cnaePrincipal VARCHAR(45) NOT NULL,
  cnaeSecundario VARCHAR(45) NOT NULL,
  cfopPrincipaisProdutos VARCHAR(45) NOT NULL,
  setorAtuacao VARCHAR(45) NOT NULL,
  receitaAnual INT
);

-- Table `mydb`.`informacoesPessoaisContrato`
CREATE TABLE IF NOT EXISTS JUSConsultoria.informacoesPessoaisContrato (
  idinformacoesPessoaisContrato SERIAL PRIMARY KEY,
  valor VARCHAR(45),
  formaDePagamento VARCHAR(45),
  multaEncargos VARCHAR(45),
  prazoDuracao VARCHAR(45)
);

-- Table `mydb`.`usuario`
CREATE TABLE IF NOT EXISTS JUSConsultoria.usuario (
  idusuario SERIAL PRIMARY KEY,
  nome VARCHAR(45) NOT NULL,
  sobrenome VARCHAR(45) NOT NULL,
  cargo VARCHAR(45),
  email VARCHAR(45) NOT NULL,
  numeroTelefone VARCHAR(45) NOT NULL,
  paisLocalizacao VARCHAR(45) NOT NULL,
  senha VARCHAR(45) NOT NULL,
  empresa_id INT NOT NULL,
  informacoesPessoaisContrato_idinformacoesPessoaisContrato INT NOT NULL,
  CONSTRAINT fk_usuario_empresa1 FOREIGN KEY (empresa_id)
    REFERENCES JUSConsultoria.empresa (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_usuario_informacoesPessoaisContrato1 FOREIGN KEY (informacoesPessoaisContrato_idinformacoesPessoaisContrato)
    REFERENCES JUSConsultoria.informacoesPessoaisContrato (idinformacoesPessoaisContrato)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);

-- Table `mydb`.`contratoIndividualizado`
CREATE TABLE IF NOT EXISTS JUSConsultoria.contratoIndividualizado (
  idcontratoIndividualizado SERIAL PRIMARY KEY,
  dataCriacao TIMESTAMP,
  dataAssinatura TIMESTAMP,
  valor VARCHAR(45),
  formaDePagamento VARCHAR(45),
  multaEncargos VARCHAR(45),
  prazoDuracao VARCHAR(45)
);

-- Table `mydb`.`modeloDeContrato`
CREATE TABLE IF NOT EXISTS JUSConsultoria.modeloDeContrato (
  idModeloDeContrato SERIAL PRIMARY KEY,
  titulo VARCHAR(45) NOT NULL,
  tipo VARCHAR(45) NOT NULL
);

-- Table `mydb`.`relacaoContrato`
CREATE TABLE IF NOT EXISTS JUSConsultoria.relacaoContrato (
  usuario_idusuario INT NOT NULL,
  contrato_idModeloDeContrato INT NOT NULL,
  contratoIndividualizado_idcontratoIndividualizado INT NOT NULL,
  idRelacaoContratocol SERIAL PRIMARY KEY,
  CONSTRAINT fk_table1_usuario1 FOREIGN KEY (usuario_idusuario)
    REFERENCES JUSConsultoria.usuario (idusuario)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_table1_contrato1 FOREIGN KEY (contrato_idModeloDeContrato)
    REFERENCES JUSConsultoria.modeloDeContrato (idModeloDeContrato)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_table1_contratoIndividualizado1 FOREIGN KEY (contratoIndividualizado_idcontratoIndividualizado)
    REFERENCES JUSConsultoria.contratoIndividualizado (idcontratoIndividualizado)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);

-- Table `mydb`.`camposDeUmContrato`
CREATE TABLE IF NOT EXISTS JUSConsultoria.camposDeUmContrato (
  idCamposDeUmContrato SERIAL PRIMARY KEY,
  tipo VARCHAR(45),
  texto VARCHAR(1000),
  contrato_idcontrato INT NOT NULL,
  CONSTRAINT fk_camposDeUmContrato_contrato FOREIGN KEY (contrato_idcontrato)
    REFERENCES JUSConsultoria.modeloDeContrato (idModeloDeContrato)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);

-- Table `mydb`.`parteDeUmContrato`
CREATE TABLE IF NOT EXISTS JUSConsultoria.parteDeUmContrato (
  idParteDeUmContrato SERIAL PRIMARY KEY,
  nomeCompleto VARCHAR(45),
  nacionalidade VARCHAR(45),
  estadoCivil VARCHAR(45),
  profissao VARCHAR(45),
  cpf VARCHAR(45),
  cnpj VARCHAR(45),
  endereco VARCHAR(45),
  usuario_idusuario INT NOT NULL,
  CONSTRAINT fk_parteDeUmContrato_usuario1 FOREIGN KEY (usuario_idusuario)
    REFERENCES JUSConsultoria.usuario (idusuario)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);

