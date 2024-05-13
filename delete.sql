-- Excluir informações pessoais do contrato relacionadas ao usuário
DELETE FROM JUSConsultoria.informacoesPessoaisContrato
WHERE idinformacoesPessoaisContrato IN (
    SELECT informacoesPessoaisContrato_idinformacoesPessoaisContrato
    FROM JUSConsultoria.usuario
    WHERE idusuario = 1
);

-- Excluir partes de um contrato relacionadas ao usuário
DELETE FROM JUSConsultoria.parteDeUmContrato
WHERE usuario_idusuario = 1;

-- Excluir empresa relacionada ao usuário
DELETE FROM JUSConsultoria.empresa
WHERE id = 1;

-- Excluir usuário
DELETE FROM JUSConsultoria.usuario
WHERE idusuario = 1;
