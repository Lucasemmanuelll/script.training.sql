-- 07 - Índices
-- Índice na coluna usada para relacionar conta e cliente.
-- O índice pode ajudar consultas que filtram ou relacionam por id_cliente.

CREATE INDEX idx_conta_id_cliente
ON conta (id_cliente);
