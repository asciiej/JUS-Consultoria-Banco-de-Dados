SELECT *
FROM JUSConsultoria.usuario
WHERE email = 'joao@example.com';

select *
from JUSConsultoria.empresa
where id = 1;

select * 
from JUSConsultoria.informacoespessoaiscontrato 
where idinformacoespessoaiscontrato  = 1;

SELECT JUSConsultoria.parteDeUmContrato.*
FROM JUSConsultoria.parteDeUmContrato
JOIN JUSConsultoria.usuario  u ON JUSConsultoria.parteDeUmContrato.usuario_idusuario = u.idusuario
WHERE u.idusuario  = 1;

select *
from JUSConsultoria.contratoIndividualizado;

select *
from JUSConsultoria.contratoIndividualizado
where idcontratoIndividualizado = 1;
