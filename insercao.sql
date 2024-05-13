INSERT INTO JUSConsultoria.empresa (nome, cnpj, cnaePrincipal, cnaeSecundario, cfopPrincipaisProdutos, setorAtuacao, receitaAnual) 
VALUES ('Empresa A', '12345678901234', 'CNAE1', 'CNAE2', 'CFOP1', 'Setor1', 100000);

INSERT INTO JUSConsultoria.informacoesPessoaisContrato (valor, formaDePagamento, multaEncargos, prazoDuracao) 
VALUES ('1000', 'À vista', '10%', '12 meses');

INSERT INTO JUSConsultoria.usuario (nome, sobrenome, cargo, email, numeroTelefone, paisLocalizacao, senha, empresa_id, informacoesPessoaisContrato_idinformacoesPessoaisContrato) 
VALUES ('João', 'Silva', 'Gerente', 'joao@example.com', '123456789', 'Brasil', 'senha123', 1, 1);

INSERT INTO JUSConsultoria.parteDeUmContrato (nomeCompleto, nacionalidade, estadoCivil, profissao, cpf, cnpj, endereco, usuario_idusuario) 
VALUES ('Lucas Janot', 'Brasileira', 'Casado', 'Advogado', '111.222.333-44', NULL, 'Rua C, 789', 1);